import 'shared.dart';

const customEnumType = 'EnumType';

const _annotationImport =
    "import 'package:json_annotation/json_annotation.dart';";

class TestTypeData {
  final String? defaultExpression;
  final String? jsonExpression;
  final String? altJsonExpression;
  final Set<String> genericArgs;

  const TestTypeData({
    this.defaultExpression,
    String? jsonExpression,
    required String? altJsonExpression,
    this.genericArgs = const {},
  })  : jsonExpression = jsonExpression ?? defaultExpression,
        altJsonExpression =
            altJsonExpression ?? jsonExpression ?? defaultExpression;

  String libContent(String source, String type) {
    const classAnnotationSplit = '@JsonSerializable()';

    final split = source.split(classAnnotationSplit);

    assert(split.length == 2);

    final newPart = toTypeExtension(type, includeDotDart: false);

    final headerReplacements = [
      if (type == customEnumType ||
          genericArgs.any((element) => element.contains(customEnumType)))
        const Replacement(
          _annotationImport,
          '$_annotationImport'
          "import 'enum_type.dart';",
        ),
      Replacement(
        "part 'input.g.dart';",
        "part 'input$newPart.g.dart';",
      )
    ];

    final buffer =
        StringBuffer(Replacement.generate(split[0], headerReplacements));

    final simpleClassContent = '$classAnnotationSplit${split[1]}';

    buffer
      ..write(
        Replacement.generate(
          simpleClassContent,
          _libReplacements(type),
        ),
      )
      ..write(
        Replacement.generate(
          simpleClassContent.replaceAll(
            'SimpleClass',
            'SimpleClassNullable',
          ),
          _libReplacements('$type?'),
        ),
      );

    for (var genericArg in genericArgs) {
      final genericArgClassPart = _genericClassPart(genericArg);

      final genericType = '$type<$genericArg>';

      buffer
        ..write(
          Replacement.generate(
            simpleClassContent.replaceAll(
              'SimpleClass',
              'SimpleClassOf$genericArgClassPart',
            ),
            _libReplacements(genericType),
          ),
        )
        ..write(
          Replacement.generate(
            simpleClassContent.replaceAll(
              'SimpleClass',
              'SimpleClassNullableOf$genericArgClassPart',
            ),
            _libReplacements('$genericType?'),
          ),
        );
    }

    return buffer.toString();
  }

  Iterable<Replacement> _libReplacements(String type) sync* {
    yield Replacement(
      'final dynamic value;',
      'final $type value;',
    );

    final defaultNotSupported = defaultExpression == null // no default provided
            ||
            type.contains('<') // no support for default values and generic args
        ;

    final defaultReplacement = defaultNotSupported
        ? ''
        : _defaultSource
            .replaceFirst('42', defaultExpression!)
            .replaceFirst('dynamic', type);

    yield Replacement(
      _defaultSource,
      defaultReplacement,
    );

    if (defaultNotSupported) {
      yield const Replacement(
        '    this.withDefault,',
        '',
      );
    }
  }

  String testContent(String sourceContent, String type) {
    const groupStart = "\n  group('non-nullable', () {";
    const groupEnd = '}); // end non-nullable group\n';

    final startIndex = sourceContent.indexOf(groupStart);
    final endIndex = sourceContent.indexOf(groupEnd) + groupEnd.length;

    final groupContent = sourceContent.substring(startIndex, endIndex);

    final nullableGroupContent = groupContent
        .replaceAll('non-nullable', 'nullable')
        .replaceAll('SimpleClass', 'SimpleClassNullable');

    final thrownError =
        type == customEnumType ? 'throwsArgumentError' : 'throwsTypeError';

    final newGroupContent = groupContent.replaceAll(
      r'''
      final object = SimpleClass.fromJson({});
      final encoded = loudEncode(object);

      expect(encoded, loudEncode(_nullableDefaultOutput));
      final object2 = SimpleClass.fromJson(
        jsonDecode(encoded) as Map<String, Object?>,
      );
      expect(loudEncode(object2), encoded);''',
      '''
      expect(
        () => loudEncode(SimpleClass.fromJson({})),
        $thrownError,
      );''',
    );

    final updatedSourceContent = [
      sourceContent.substring(0, startIndex),
      newGroupContent,
      nullableGroupContent,
      sourceContent.substring(endIndex),
    ].join();

    return Replacement.generate(
      updatedSourceContent,
      _testReplacements(type),
    );
  }

  Iterable<Replacement> _testReplacements(String type) sync* {
    yield Replacement(
      "import 'input.dart';",
      "import 'input.type_${typeToPathPart(type)}.dart';",
    );

    yield Replacement(
      '''
final _defaultValue = 42;
final _altValue = 43;
''',
      '''
final _defaultValue = $jsonExpression;
final _altValue = $altJsonExpression;
''',
    );

    if (defaultExpression == null) {
      yield const Replacement(
        "  'withDefault': _defaultValue,\n",
        '',
      );
      yield const Replacement(
        "  'withDefault': _altValue,\n",
        '',
      );
    }
  }

  static const _defaultSource = r'''
  @JsonKey(defaultValue: 42)
  dynamic withDefault;

''';
}

String _genericClassPart(String genericArg) => genericArg
    .replaceAll('?', 'Nullable')
    .split(',')
    .map((e) => [
          e.substring(0, 1).toUpperCase(),
          e.substring(1),
        ].join())
    .join('To');

String toTypeExtension(String e, {bool includeDotDart = true}) =>
    '.type_${typeToPathPart(e)}${includeDotDart ? '.dart' : ''}';

String typeToPathPart(String type) => type.toLowerCase();
