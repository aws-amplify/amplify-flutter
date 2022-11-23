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

import 'package:amplify_codegen/src/generator/generated_library.dart';
import 'package:amplify_codegen/src/generator/structure.dart';
import 'package:amplify_codegen/src/generator/types.dart';
import 'package:amplify_codegen/src/helpers/field.dart';
import 'package:amplify_codegen/src/helpers/types.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/models/mipr.dart' as mipr;
import 'package:code_builder/code_builder.dart';

/// {@template amplify_codegen.non_model_generator}
/// Generates libraries for non-model types.
/// {@endtemplate}
class NonModelGenerator extends StructureGenerator<NonModelTypeDefinition> {
  /// {@template amplify_codegen.non_model_generator}
  NonModelGenerator({
    required super.node,
    required super.definition,
  });

  @override
  GeneratedLibrary generate() {
    builder.body.add(nonModelImpl);
    return GeneratedLibrary(builder.build(), definition);
  }

  /// The implementation of the non-model type.
  Class get nonModelImpl {
    return Class((c) {
      c
        ..name = className
        ..mixins.addAll([
          DartTypes.awsCommon.awsEquatable(refer(className)),
          DartTypes.awsCommon.awsSerializable(DartTypes.core.json),
          DartTypes.awsCommon.awsDebuggable,
        ]);

      final fields = definition.fields.values.toList();
      final parameters = <Parameter>[];
      for (final field in fields) {
        c.fields.add(
          Field(
            (f) => f
              ..name = field.dartName
              ..type = field.typeReference()
              ..modifier = FieldModifier.final$,
          ),
        );
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

      // The unnamed constructor.
      c.constructors.add(
        Constructor(
          (ctor) => ctor
            ..constant = true
            ..optionalParameters.addAll(parameters),
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
              modelType: refer(className),
              fields: definition.fields.values.toList(),
            ),
        ),
      );

      // The static `schema` getter
      c.fields.add(
        Field(
          (f) => f
            ..modifier = FieldModifier.final$
            ..static = true
            ..type = DartTypes.amplifyCore.mipr.nonModelTypeDefinition
            ..name = 'schema'
            ..assignment = DartTypes.amplifyCore.mipr.serializers
                .property('deserializeWith')
                .call([
                  DartTypes.amplifyCore.mipr.nonModelTypeDefinition
                      .property('serializer'),
                  literalConstMap(
                    mipr.serializers.serializeWith(
                      mipr.NonModelTypeDefinition.serializer,
                      definition,
                    ) as Map,
                  ),
                ])
                .nullChecked
                .code,
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
            ..body = literalList(fields.map((f) => refer(f.dartName))).code,
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
            ..body = literalString(className).code,
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
    });
  }
}
