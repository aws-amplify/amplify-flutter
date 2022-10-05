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
import 'package:amplify_codegen/src/generator/visitors.dart';
import 'package:amplify_codegen/src/parser/parser.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/language.dart';

/// Generates a Dart file for each model type and enum in [schema].
///
/// Returns a map from the library name to its formatted definition file.
Map<String, GeneratedLibrary> generateForSchema(String schema) {
  // Parse all models before starting
  final schemaDefinition = parseSchema(schema);

  // Generate libraries for model types and enums
  final libraries = parseString(schema)
      .definitions
      .map((definition) {
        return definition.accept(LibraryVisitor(schemaDefinition));
      })
      .whereType<Library>()
      .toList();

  // Emit Dart code and format
  return Map.fromEntries(
    libraries.map((library) {
      return MapEntry(library.name!, GeneratedLibrary(library));
    }),
  );
}
