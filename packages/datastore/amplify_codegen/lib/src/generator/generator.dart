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

import 'package:amplify_codegen/src/helpers/types.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';

/// {@template amplify_codegen.library_generator}
/// A generator of Dart libraries from GraphQL types.
/// {@endtemplate}
abstract class LibraryGenerator<Node extends TypeDefinitionNode,
    TypeDefinition extends SchemaTypeDefinition> {
  /// {@macro amplify_codegen.library_generator}
  LibraryGenerator({
    required this.node,
    required this.definition,
  }) : builder = LibraryBuilder()..name = 'models.${node.libraryName}';

  /// The pre-configured builder for [generate]'s output.
  final LibraryBuilder builder;

  /// The raw GraphQL node.
  final Node node;

  /// The semantic type definition from the parsed schema.
  final TypeDefinition definition;

  /// The name as defined in the GraphQL schema.
  String get schemaName => node.name.value;

  /// Generates a [Library] for [node] and [definition].
  Library generate();
}
