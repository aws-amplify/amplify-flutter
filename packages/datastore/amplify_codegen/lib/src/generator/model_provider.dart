import 'package:amplify_codegen/src/generator/generated_library.dart';
import 'package:amplify_codegen/src/generator/types.dart';
import 'package:amplify_codegen/src/helpers/model.dart';
import 'package:amplify_codegen/src/helpers/types.dart';
import 'package:amplify_core/src/types/models/mipr.dart' as mipr;
import 'package:code_builder/code_builder.dart';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';

/// {@template amplify_codegen.model_provider_generator}
/// Generates libraries for model providers.
/// {@endtemplate}
class ModelProviderGenerator {
  /// {@macro amplify_codegen.model_provider_generator}
  ModelProviderGenerator(this._schema);

  final mipr.SchemaDefinition _schema;

  late final List<mipr.ModelTypeDefinition> _models = _schema
      .typeDefinitions.values
      .whereType<mipr.ModelTypeDefinition>()
      .toList();
  late final List<mipr.NonModelTypeDefinition> _nonModels = _schema
      .typeDefinitions.values
      .whereType<mipr.NonModelTypeDefinition>()
      .toList();

  /// Generates the library for the model provider.
  GeneratedLibrary generate() {
    final exportFilenames = [
      for (final type in _schema.typeDefinitions.values) type.filename
    ]..sort();
    return GeneratedLibrary(
      Library(
        (l) => l
          ..name = 'models.model_provider'
          ..directives.addAll([
            ...exportFilenames.map(Directive.export),
          ])
          ..body.add(_class),
      ),
    );
  }

  Class get _class {
    return Class(
      (c) => c
        ..name = 'ModelProvider'
        ..extend = DartTypes.amplifyCore.modelProviderInterface
        ..constructors.add(
          Constructor((c) => c..name = '_'),
        )
        ..fields.addAll(_fields)
        ..methods.addAll(_methods),
    );
  }

  Iterable<Field> get _fields sync* {
    yield Field(
      (f) => f
        ..static = true
        ..modifier = FieldModifier.final$
        ..name = 'instance'
        ..assignment = refer('ModelProvider').newInstanceNamed('_', []).code,
    );
  }

  /// Generate a consistent hash for [_schema]. This will be consistent across
  /// transformer version changes as well as semantic-only schema updates.
  List<int> get _schemaHash {
    return md5
        .convert(
          mipr.serializers
              .toJson(mipr.SchemaDefinition.serializer, _schema)
              .codeUnits,
        )
        .bytes;
  }

  Iterable<Method> get _methods sync* {
    // version
    final version = hex.encode(_schemaHash);
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..name = 'version'
        ..returns = DartTypes.core.string
        ..type = MethodType.getter
        ..lambda = true
        ..body = literalString(version).code,
    );

    // modelSchemas
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..name = 'modelSchemas'
        ..returns = DartTypes.core.list(
          DartTypes.amplifyCore.mipr.modelTypeDefinition,
        )
        ..type = MethodType.getter
        ..lambda = true
        ..body = literalList([
          for (final model in _models)
            ModelReferences(model).model.property('schema')
        ]).code,
    );

    // customTypeSchemas
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..name = 'customTypeSchemas'
        ..returns = DartTypes.core.list(
          DartTypes.amplifyCore.mipr.nonModelTypeDefinition,
        )
        ..type = MethodType.getter
        ..lambda = true
        ..body = literalList([
          for (final nonModel in _nonModels)
            NonModelReferences(nonModel).classType.property('schema'),
        ]).code,
    );

    // getModelType
    final returnType = DartTypes.amplifyCore.modelType(
      refer('ModelIdentifier'),
      refer('M'),
      refer('P'),
    );
    final bounds = [
      TypeReference(
        (t) => t
          ..symbol = 'ModelIdentifier'
          ..bound = DartTypes.core.object,
      ),
      TypeReference(
        (t) => t
          ..symbol = 'M'
          ..bound = DartTypes.amplifyCore.model(
            refer('ModelIdentifier'),
            refer('M'),
          ),
      ),
      TypeReference(
        (t) => t
          ..symbol = 'P'
          ..bound = DartTypes.amplifyCore.partialModel(
            refer('ModelIdentifier'),
            refer('M'),
          ),
      ),
    ];
    yield Method((m) {
      m
        ..annotations.add(refer('override'))
        ..returns = returnType
        ..name = 'getModelType'
        ..requiredParameters.add(
          Parameter(
            (p) => p
              ..type = DartTypes.core.string
              ..name = 'modelName',
          ),
        )
        ..types.addAll(bounds)
        ..body = Block.of([
          const Code('switch (modelName) {'),
          for (final model in _models) ...[
            Code("case '${model.name}':"),
            if (model.name != ModelNames(model.name).className)
              Code("case '${ModelNames(model.name).className}':"),
            ModelReferences(model)
                .model
                .property('classType')
                .asA(returnType)
                .returned
                .statement,
          ],
          const Code('default:'),
          refer('ArgumentError')
              .newInstance([
                literalString(
                  'Failed to find model in model provider for model name: '
                  r'$modelName',
                )
              ])
              .thrown
              .statement,
          const Code('}'),
        ]);
    });

    // getModelTypeByModelName
    yield Method((m) {
      m
        ..annotations.add(refer('override'))
        ..returns = returnType
        ..name = 'getModelTypeByModelName'
        ..requiredParameters.add(
          Parameter(
            (p) => p
              ..type = DartTypes.core.string
              ..name = 'modelName',
          ),
        )
        ..types.addAll(bounds)
        ..lambda = true
        ..body = refer('getModelType').call([refer('modelName')]).code;
    });
  }
}
