// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_codegen/src/generator/context.dart';
import 'package:amplify_codegen/src/generator/structure.dart';
import 'package:amplify_codegen/src/generator/types.dart';
import 'package:amplify_codegen/src/helpers/field.dart';
import 'package:amplify_codegen/src/helpers/model.dart';
import 'package:amplify_codegen/src/helpers/types.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/models/mipr.dart' as mipr;
import 'package:code_builder/code_builder.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

/// {@template amplify_codegen.model_generator}
/// Generates libraries for model types.
///
/// Generally, a library consists of two classes: the Model class and the
/// ModelType class; however, custom types have only a Model class.
/// {@endtemplate}
class ModelGenerator extends StructureGenerator<ModelTypeDefinition> {
  /// {@template amplify_codegen.model_generator}
  ModelGenerator({
    required super.node,
    required super.definition,
  });

  late final ModelNames _names = definition.names;
  late final ModelReferences _references = definition.references;

  /// The reference for the model identifier.
  late final Class? modelIdentifierType = () {
    if (!definition.hasModelIdentifier) {
      return null;
    }
    final fields =
        definition.modelIdentifier.fields.map(definition.fieldNamed).toList();
    final modelIdentifierName = _names.modelIdentifier;
    return Class((c) {
      c
        ..name = modelIdentifierName
        ..annotations.add(DartTypes.meta.immutable)
        ..mixins.addAll([
          DartTypes.awsCommon.awsEquatable(refer(modelIdentifierName)),
          DartTypes.awsCommon.awsSerializable(DartTypes.core.json),
          DartTypes.awsCommon.awsDebuggable,
        ])
        ..fields.addAll([
          for (final field in fields)
            Field(
              (f) => f
                ..name = field.dartName
                ..type = field.typeReference()
                ..modifier = FieldModifier.final$,
            )
        ]);

      final parameters = <Parameter>[];
      for (final field in fields) {
        parameters.add(
          Parameter(
            (p) => p
              ..name = field.dartName
              ..toThis = true
              ..named = true
              ..required = field.type.isRequired,
          ),
        );
      }
      c.constructors.add(
        Constructor(
          (ctor) => ctor
            ..constant = true
            ..optionalParameters.addAll(parameters),
        ),
      );

      // `props` to satisfy `AWSEquatable`
      c.methods.add(
        Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = DartTypes.core.list(DartTypes.core.object.nullable)
            ..type = MethodType.getter
            ..name = 'props'
            ..body = literalList(fields.map((f) => refer(f.name))).code,
        ),
      );

      // `toJson` to satisfy `AWSSerializable`
      c.methods.add(
        Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = DartTypes.core.json
            ..name = 'toJson'
            ..body = literalMap({
              for (final field in fields)
                literalString(field.name): field.toJsonExp(
                  refer(field.dartName),
                ),
            }).code,
        ),
      );

      // `runtimeTypeName` to satisfy `AWSDebuggable`
      c.methods.add(
        Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = DartTypes.core.string
            ..type = MethodType.getter
            ..name = 'runtimeTypeName'
            ..body = literalString(modelIdentifierName).code,
        ),
      );
    });
  }();

  @override
  Library generate() {
    builder.body.addAll([
      if (modelIdentifierType != null) modelIdentifierType!,
      modelTypeImpl,
      _queryFieldsImpl,
      ...partialModelImpl,
      ...modelImpl,
      ...remoteModelImpl,
    ]);

    return builder.build();
  }

  /// The implementation of the model's `ModelType`.
  Class get modelTypeImpl {
    return Class((c) {
      c
        ..name = _names.modelType
        ..extend = DartTypes.amplifyCore.modelType(
          _references.modelIdentifier,
          _references.model,
          _references.partialModel,
        )
        ..constructors.add(Constructor((ctor) => ctor.constant = true));

      // The `fromJson` method.
      final partialModelBound = DartTypes.amplifyCore.partialModel(
        _references.modelIdentifier,
        _references.model,
      );
      final modelBound = DartTypes.amplifyCore.model(
        _references.modelIdentifier,
        _references.model,
      );
      final remoteModelBound = DartTypes.amplifyCore.remoteModel(
        _references.modelIdentifier,
        _references.model,
      );
      c.methods.add(
        Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = refer('T')
            ..name = 'fromJson'
            ..types.add(
              TypeReference(
                (t) => t
                  ..symbol = 'T'
                  ..bound = partialModelBound,
              ),
            )
            ..requiredParameters.add(
              Parameter(
                (p) => p
                  ..type = DartTypes.core.json
                  ..name = 'json',
              ),
            )
            ..lambda = false
            ..body = Code.scope(
              (allocate) => '''
if (T == ${allocate(_references.model)} || T == ${allocate(modelBound)}<${modelBound.types.map(allocate).join(', ')}>) {
  return ${allocate(_references.model)}.fromJson(json) as T;
}
if (T == ${allocate(_references.remoteModel)} || T == ${allocate(remoteModelBound)}<${remoteModelBound.types.map(allocate).join(', ')}>) {
  return ${allocate(_references.remoteModelImpl)}.fromJson(json) as T;
}
return ${allocate(_references.partialModelImpl)}.fromJson(json) as T;
''',
            ),
        ),
      );

      // The `modelName` getter.
      c.methods.add(
        Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = DartTypes.core.string
            ..type = MethodType.getter
            ..name = 'modelName'
            ..body = literalString(schemaName).code,
        ),
      );
    });
  }

  /// The partial model type is represented by a public interface, e.g.
  /// `PartialUser`, which is not instantiable, and a private implementation,
  /// e.g. `_PartialUser extends PartialUser` which is instantiated only via
  /// the `fromJson` method of the `ModelType`.
  Iterable<Class> get partialModelImpl sync* {
    // Create the public interface
    yield Class((c) {
      c
        ..abstract = true
        ..name = _names.partialModel
        ..extend = DartTypes.amplifyCore.partialModel(
          _references.modelIdentifier,
          _references.model,
        )
        ..mixins.add(
          DartTypes.awsCommon.awsEquatable(_references.partialModel),
        )
        ..constructors.add(
          Constructor(
            (ctor) => ctor
              ..name = '_'
              ..constant = true,
          ),
        );

      final fields = definition.schemaFields(ModelHierarchyType.partial);

      // Abstract getters for each field
      for (final field in fields.values) {
        c.methods.add(
          Method(
            (m) => m
              ..returns = field.typeReference(ModelHierarchyType.partial)
              ..type = MethodType.getter
              ..name = field.dartName,
          ),
        );
      }

      // `modelIdentifier` to satisfy `PartialModel`
      final modelIdentifierFields = definition.modelIdentifier.fields
          .map(definition.fieldNamed)
          .map((field) => field.dartName)
          .toList();
      c.methods.add(
        Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = _references.modelIdentifier
            ..type = MethodType.getter
            ..name = 'modelIdentifier'
            ..body = (modelIdentifierFields.length == 1
                    ? refer(modelIdentifierFields.single)
                    : _references.modelIdentifier.newInstance([], {
                        for (final field in modelIdentifierFields)
                          field: refer(field),
                      }))
                .code,
        ),
      );

      // `modelType` to satisfy `PartialModel`
      c.methods.add(
        Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = _references.modelType
            ..type = MethodType.getter
            ..name = 'modelType'
            ..lambda = true
            ..body = _references.model.property('classType').code,
        ),
      );

      // `props` to satisfy `AWSEquatable`
      c.methods.add(
        Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = DartTypes.core.list(DartTypes.core.object.nullable)
            ..type = MethodType.getter
            ..name = 'props'
            ..body = literalList(
              fields.values.map(
                (f) => refer(f.dartName),
              ),
            ).code,
        ),
      );

      // `toJson` to satisfy `AWSSerializable`
      c.methods.add(
        Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = DartTypes.core.map(
              DartTypes.core.string,
              DartTypes.core.object.nullable,
            )
            ..name = 'toJson'
            ..body = literalMap({
              for (final field
                  in definition.allFields(ModelHierarchyType.partial).values)
                literalString(field.name): field.toJsonExp(
                  refer(field.dartName),
                ),
            }).code,
        ),
      );

      // `runtimeTypeName` to satisfy `AWSDebuggable`
      // TODO(dnys1): Should this name be different for the three subtypes?
      c.methods.add(
        Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = DartTypes.core.string
            ..type = MethodType.getter
            ..name = 'runtimeTypeName'
            ..body = literalString(_names.model).code,
        ),
      );

      // `valueFor` to satisfy `PartialModel`
      c.methods.add(
        Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = refer('T')
            ..name = 'valueFor'
            ..types.add(
              TypeReference(
                (t) => t
                  ..symbol = 'T'
                  ..bound = DartTypes.core.object.nullable,
              ),
            )
            ..requiredParameters.add(
              Parameter(
                (p) => p
                  ..type = DartTypes.amplifyCore.queryField(
                    _references.modelIdentifier,
                    _references.model,
                    refer('T'),
                  )
                  ..name = 'field',
              ),
            )
            ..body = Block((b) {
              b.statements.add(
                const Code(
                  '''
Object? value;
switch (field.fieldName) {
  ''',
                ),
              );
              for (final field in definition.fields.values) {
                b.statements.add(
                  Code(
                    '''
  case r'${field.name}':
    value = ${field.dartName};
    break;''',
                  ),
                );
              }
              b.statements.add(
                const Code(
                  r'''
}
assert(
  value is T,
  'Invalid field ${field.fieldName}: $value (expected $T)',
);
return value as T;
''',
                ),
              );
            }),
        ),
      );
    });

    // Create the private implementation
    yield Class((c) {
      c
        ..name = _names.partialModelImpl
        ..extend = _references.partialModel;

      final parameters = <Parameter>[];
      final allFields = definition.schemaFields(ModelHierarchyType.partial);
      for (final field in allFields.values) {
        c.fields.add(
          Field(
            (f) => f
              ..annotations.add(DartTypes.core.override)
              ..modifier = FieldModifier.final$
              ..type = field.typeReference(ModelHierarchyType.partial)
              ..name = field.dartName,
          ),
        );
        parameters.add(
          Parameter(
            (p) => p
              ..named = true
              ..required = field.type.isRequired
              ..toThis = true
              ..name = field.dartName,
          ),
        );
      }

      // The unnamed constructor.
      c.constructors.add(
        Constructor(
          (ctor) => ctor
            ..constant = true
            ..optionalParameters.addAll(parameters)
            ..initializers.add(const Code('super._()')),
        ),
      );

      // The fromJson constructor.
      c.constructors.add(
        Constructor(
          (ctor) => ctor
            ..factory = true
            ..name = 'fromJson'
            ..requiredParameters.add(
              Parameter(
                (p) => p
                  ..type = DartTypes.core.json
                  ..name = 'json',
              ),
            )
            ..body = fromJson(
              modelType: _references.partialModelImpl,
              fields:
                  definition.schemaFields(ModelHierarchyType.partial).values,
              hierarchyType: ModelHierarchyType.partial,
            ),
        ),
      );
    });
  }

  /// The model type is represented by a public interface, e.g `User`, whose
  /// public constructor is geared towards ease-of-use for common patterns,
  /// specifically around its handling of nested models.
  ///
  /// A separate, private implementation is used for the concrete model.
  Iterable<Class> get modelImpl sync* {
    // Create the public interface
    yield Class((c) {
      c
        ..abstract = true
        ..name = _names.model
        ..extend = _references.partialModel
        ..implements.add(
          DartTypes.amplifyCore.model(
            _references.modelIdentifier,
            _references.model,
          ),
        );

      // Add `classType` for model types
      c.fields.add(
        Field(
          (f) => f
            ..static = true
            ..modifier = FieldModifier.constant
            ..type = _references.modelType
            ..name = 'classType'
            ..assignment = _references.modelType.constInstance([]).code,
        ),
      );

      // Add `_queryFields` for use below.
      c.fields.add(
        Field(
          (f) => f
            ..static = true
            ..modifier = FieldModifier.constant
            ..type = _references.queryFields(
              _references.modelIdentifier,
              _references.model,
            )
            ..name = '_queryFields'
            ..assignment = _references.queryFields().constInstance([]).code,
        ),
      );

      void addQueryField(String fieldName, Reference fieldType) {
        final newFormName = '\$$fieldName';
        final oldFormName = fieldName.screamingCase;

        // The new `$fieldName` form.
        c.methods.addAll([
          Method(
            (m) => m
              ..docs.add(
                '/// Query field for the [$fieldName] field.',
              )
              ..returns = fieldType
              ..type = MethodType.getter
              ..name = newFormName
              ..lambda = true
              ..body = refer('_queryFields').property(newFormName).code,
          ),

          // The deprecated `FIELD_NAME` form.
          Method(
            (m) => m
              ..annotations.add(
                DartTypes.core.deprecated.newInstance([
                  literalString('Use $newFormName instead', raw: true),
                ]),
              )
              ..docs.add(
                '/// Query field for the [$fieldName] field.',
              )
              ..returns = fieldType
              ..type = MethodType.getter
              ..name = oldFormName
              ..lambda = true
              ..body = refer(newFormName).code,
          ),
        ]);
      }

      final parameters = <Parameter>[];
      for (final field in definition.fields.values) {
        final fieldType = field.type;
        final fieldTypeRef = field.typeReference(ModelHierarchyType.model);
        c.methods.add(
          Method(
            (m) => m
              ..annotations.add(DartTypes.core.override)
              ..returns = fieldTypeRef
              ..type = MethodType.getter
              ..name = field.dartName,
          ),
        );

        // Allow nullable `ID` parameters to the main constructor since these
        // fields can be auto-generated.
        final isIdField = fieldType is mipr.ScalarType &&
            fieldType.value == mipr.AppSyncScalar.id;
        parameters.add(
          Parameter(
            (p) => p
              ..named = true
              ..required = fieldType.isRequired && !isIdField
              ..type = fieldTypeRef.typeRef
                  .rebuild((t) => t.isNullable = t.isNullable! || isIdField)
              ..name = field.dartName,
          ),
        );
        if (field.hasQueryField) {
          Reference fieldTypeRef;
          if (fieldType is mipr.ModelType) {
            final model = context.modelNamed(fieldType.name);
            fieldTypeRef = model.references.queryFields(
              _references.modelIdentifier,
              _references.model,
            );
          } else {
            fieldTypeRef = DartTypes.amplifyCore.queryField(
              _references.modelIdentifier,
              _references.model,
              field.typeReference(ModelHierarchyType.model),
            );
          }
          addQueryField(field.dartName, fieldTypeRef);
        }
      }

      // Add a query field for the model identifier
      addQueryField(
        'modelIdentifier',
        DartTypes.amplifyCore.queryField(
          _references.modelIdentifier,
          _references.model,
          _references.modelIdentifier,
        ),
      );

      // The public factory constructor which redirects to the private impl.
      c.constructors.add(
        Constructor(
          (ctor) => ctor
            ..factory = true
            ..optionalParameters.addAll(parameters)
            ..redirect = _references.modelImpl,
        ),
      );

      // The private constructor.
      c.constructors.add(
        Constructor(
          (ctor) => ctor
            ..name = '_'
            ..constant = true
            ..initializers.add(const Code('super._()')),
        ),
      );

      // The fromJson constructor.
      c.constructors.add(
        Constructor(
          (ctor) => ctor
            ..factory = true
            ..name = 'fromJson'
            ..requiredParameters.add(
              Parameter(
                (p) => p
                  ..type = DartTypes.core.json
                  ..name = 'json',
              ),
            )
            ..body = fromJson(
              modelType: _references.model,
              fields: definition.schemaFields(ModelHierarchyType.model).values,
              hierarchyType: ModelHierarchyType.model,
            ),
        ),
      );
    });

    // Create the private implementation
    yield Class((c) {
      c
        ..name = _names.modelImpl
        ..extend = _references.model;

      final parameters = <Parameter>[];
      final initializers = <Code>[];
      for (final field in definition.fields.values) {
        final fieldType = field.type;
        c.fields.add(
          Field(
            (f) => f
              ..annotations.add(DartTypes.core.override)
              ..modifier = FieldModifier.final$
              ..type = field.typeReference(ModelHierarchyType.model)
              ..name = field.dartName,
          ),
        );

        // Allow nullable `ID` parameters to the main constructor since these
        // fields can be auto-generated.
        final isIdField = fieldType is mipr.ScalarType &&
            fieldType.value == mipr.AppSyncScalar.id;
        if (isIdField) {
          initializers.add(
            Code.scope(
              (allocate) => '${field.dartName} = ${field.dartName} ?? '
                  '${allocate(DartTypes.awsCommon.uuid)}()',
            ),
          );
        }
        parameters.add(
          Parameter(
            (p) => p
              ..named = true
              ..required = fieldType.isRequired && !isIdField
              ..type = isIdField ? fieldType.reference.nullable : null
              ..toThis = !isIdField
              ..name = field.dartName,
          ),
        );
      }

      // The unnamed constructor.
      c.constructors.add(
        Constructor(
          (ctor) => ctor
            ..optionalParameters.addAll(parameters)
            ..initializers.addAll([
              ...initializers,
              const Code('super._()'),
            ]),
        ),
      );
    });
  }

  /// The remote model type is represented by a public interface, e.g
  /// `RemoteUser`, which is not instantiable, and a private implementation,
  /// e.g. `_RemoteUser extends RemoteUser` which is instantiated only via
  /// the `fromJson` method of the `ModelType`.
  Iterable<Class> get remoteModelImpl sync* {
    // Create the public interface
    yield Class((c) {
      c
        ..abstract = true
        ..name = _names.remoteModel
        ..extend = _references.model
        ..implements.add(
          DartTypes.amplifyCore.remoteModel(
            _references.modelIdentifier,
            _references.model,
          ),
        )
        ..constructors.add(
          Constructor(
            (ctor) => ctor
              ..name = '_'
              ..constant = true
              ..initializers.add(const Code('super._()')),
          ),
        );
    });

    // Create the private implementation
    yield Class((c) {
      c
        ..name = _names.remoteModelImpl
        ..extend = _references.remoteModel;

      final parameters = <Parameter>[];
      final allFields = definition.allFields(ModelHierarchyType.remote);
      for (final field in allFields.values) {
        c.fields.add(
          Field(
            (f) => f
              ..annotations.add(DartTypes.core.override)
              ..modifier = FieldModifier.final$
              ..type = field.typeReference(ModelHierarchyType.remote)
              ..name = field.dartName,
          ),
        );
        parameters.add(
          Parameter(
            (p) => p
              ..named = true
              ..required = field.type.isRequired
              ..toThis = true
              ..name = field.dartName,
          ),
        );
      }

      // The unnamed constructor.
      c.constructors.add(
        Constructor(
          (ctor) => ctor
            ..constant = true
            ..optionalParameters.addAll(parameters)
            ..initializers.add(const Code('super._()')),
        ),
      );

      // The fromJson constructor.
      c.constructors.add(
        Constructor(
          (ctor) => ctor
            ..factory = true
            ..name = 'fromJson'
            ..requiredParameters.add(
              Parameter(
                (p) => p
                  ..type = DartTypes.core.json
                  ..name = 'json',
              ),
            )
            ..body = fromJson(
              modelType: _references.remoteModelImpl,
              fields: definition.allFields(ModelHierarchyType.remote).values,
              hierarchyType: ModelHierarchyType.remote,
            ),
        ),
      );
    });
  }

  /// The query fields implementation.
  Class get _queryFieldsImpl {
    return Class((c) {
      final modelIdentifierTypeParameter = refer('ModelIdentifier');
      final modelTypeParameter = refer('M');
      c
        ..name = _names.queryFields
        ..types.addAll([
          TypeReference(
            (t) => t
              ..symbol = 'ModelIdentifier'
              ..bound = DartTypes.core.object,
          ),
          TypeReference(
            (t) => t
              ..symbol = 'M'
              ..bound = DartTypes.amplifyCore.model(
                modelIdentifierTypeParameter,
                modelTypeParameter,
              ),
          )
        ]);

      // const MODELQueryFields([this.root]);
      c.constructors.add(
        Constructor(
          (c) => c
            ..constant = true
            ..optionalParameters.add(
              Parameter(
                (p) => p
                  ..toThis = true
                  ..name = '_root',
              ),
            ),
        ),
      );

      // final QueryField<ModelIdentifier, M, MODEL>? root;
      c.fields.add(
        Field(
          (f) => f
            ..modifier = FieldModifier.final$
            ..type = DartTypes.amplifyCore
                .queryField(
                  modelIdentifierTypeParameter,
                  modelTypeParameter,
                  _references.model,
                )
                .nullable
            ..name = '_root',
        ),
      );

      void addQueryField(
        String schemaName,
        String dartName,
        Reference fieldType, {
        Reference Function([Reference?, Reference?])? relatedQueryFields,
        String? docReference,
      }) {
        final queryFieldType = DartTypes.amplifyCore.queryField(
          _references.modelIdentifier,
          _references.model,
          fieldType,
        );
        final queryField = queryFieldType.constInstance(
          [],
          {'fieldName': literalString(schemaName)},
        );
        final nestedQueryFieldType = DartTypes.amplifyCore.nestedQueryField(
          modelIdentifierTypeParameter,
          modelTypeParameter,
          _references.modelIdentifier,
          _references.model,
          fieldType,
        );

        final queryFieldName = '\$$dartName';
        docReference ??= '[${_names.model}.$dartName] field';

        var queryFieldsInstance = nestedQueryFieldType.newInstance(
          [queryField],
          {'root': refer('_root')},
        );
        if (relatedQueryFields != null) {
          queryFieldsInstance = relatedQueryFields().newInstance([
            queryFieldsInstance,
          ]);
        }
        c.methods.add(
          Method(
            (m) => m
              ..docs.add(
                '/// Query field for the $docReference.',
              )
              ..returns = relatedQueryFields != null
                  ? relatedQueryFields(
                      modelIdentifierTypeParameter,
                      modelTypeParameter,
                    )
                  : DartTypes.amplifyCore.queryField(
                      modelIdentifierTypeParameter,
                      modelTypeParameter,
                      fieldType,
                    )
              ..type = MethodType.getter
              ..name = queryFieldName
              ..lambda = true
              ..body = queryFieldsInstance.code,
          ),
        );
      }

      for (final field in definition.fields.values) {
        if (field.hasQueryField) {
          final fieldType = field.type;
          Reference fieldTypeRef;
          Reference Function([Reference?, Reference?])? relatedQueryFields;
          if (fieldType is mipr.ModelType) {
            final model = context.modelNamed(fieldType.name);
            fieldTypeRef = model.references.model;
            relatedQueryFields = model.references.queryFields;
          } else {
            fieldTypeRef = field.typeReference(ModelHierarchyType.model);
          }
          addQueryField(
            field.name,
            field.dartName,
            fieldTypeRef,
            relatedQueryFields: relatedQueryFields,
          );
        }
      }

      // Add an additional query field for the model helper
      addQueryField(
        'modelIdentifier',
        'modelIdentifier',
        _references.modelIdentifier,
        docReference: '[${_names.model}] model identifier',
      );
    });
  }
}
