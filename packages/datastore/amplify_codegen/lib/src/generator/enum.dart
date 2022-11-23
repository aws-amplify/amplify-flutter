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
import 'package:amplify_codegen/src/generator/generator.dart';
import 'package:amplify_codegen/src/generator/types.dart';
import 'package:amplify_codegen/src/helpers/enum.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';

/// {@template amplify_codegen.generator.enum_generator}
/// Generates libraries for [Enum] types.
/// {@endtemplate}
class EnumGenerator
    extends LibraryGenerator<EnumTypeDefinitionNode, EnumTypeDefinition> {
  /// {@macro amplify_codegen.generator.enum_generator}
  EnumGenerator({
    required super.node,
    required super.definition,
  });

  /// The Dart name of the enum.
  String get enumName => schemaName.pascalCase;

  @override
  GeneratedLibrary generate() {
    builder.body.add(
      Enum((e) {
        e.mixins.add(
          DartTypes.awsCommon.awsSerializable(DartTypes.core.string),
        );
        final description = node.description?.value;
        if (description != null) {
          e.docs.add(description);
        }
        e.name = enumName;

        // Each enum value maps to a Dart enum with camelCased naming. The
        // original GraphQL value is retained as well in the `value` field.
        for (final value in node.values) {
          e.values.add(
            EnumValue((v) {
              final description = value.description?.value;
              if (description != null) {
                v.docs.add(description);
              }
              v
                ..name = value.dartName
                ..arguments.add(literalString(value.schemaName));
            }),
          );
        }

        // The constant constructor for setting `value`.
        e.constructors.add(
          Constructor((c) {
            c.constant = true;
            if (description != null) {
              c.docs.add(description);
            }
            c.requiredParameters.add(
              Parameter(
                (p) => p
                  ..toThis = true
                  ..name = 'value',
              ),
            );
          }),
        );

        // The `value` field which maps 1-1 with the GraphQL schema before
        // recasing.
        e.fields.add(
          Field(
            (f) => f
              ..docs.add('/// The GraphQL value, as defined in the schema.')
              ..modifier = FieldModifier.final$
              ..type = DartTypes.core.string
              ..name = 'value',
          ),
        );

        e.methods.addAll([
          Method(
            (m) => m
              ..static = true
              ..returns = refer(enumName)
              ..name = 'fromJson'
              ..requiredParameters.add(
                Parameter(
                  (p) => p
                    ..type = DartTypes.core.string
                    ..name = 'json',
                ),
              )
              ..lambda = true
              ..body = refer('values').property('firstWhere').call([
                Method(
                  (m) => m
                    ..requiredParameters.add(
                      Parameter((p) => p..name = 'v'),
                    )
                    ..lambda = true
                    ..body = const Code('v.value == json'),
                ).closure,
              ]).code,
          ),

          // The `toJson` method to conform to `AWSSerializable`
          Method(
            (m) => m
              ..annotations.add(DartTypes.core.override)
              ..returns = DartTypes.core.string
              ..name = 'toJson'
              ..lambda = true
              ..body = const Code('value'),
          ),
        ]);
      }),
    );
    return GeneratedLibrary(builder.build(), definition);
  }
}
