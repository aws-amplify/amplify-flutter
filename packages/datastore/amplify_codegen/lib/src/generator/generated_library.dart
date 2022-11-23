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

import 'package:amplify_codegen/src/generator/allocator.dart';
import 'package:amplify_codegen/src/helpers/types.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

/// Lint rules to ignore in generated files.
const ignores = [
  // TODO(dnys1): Remove when deprecated fields are removed.
  'non_constant_identifier_names',

  // TODO(dnys1): Add recursive visitor with types or serialize schema
  // differently
  'inference_failure_on_collection_literal',
];

/// Header for generated output.
final header = '''
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

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: ${ignores.join(',')}
''';

/// {@template amplify_codegen.generated_library}
/// The output of code generation: a [Library] and associated utilities for
/// emitting to Dart source.
/// {@endtemplate}
class GeneratedLibrary {
  /// {@macro amplify_codegen.generated_library}
  GeneratedLibrary(
    this.library, [
    this.definition,
  ]) : filename = definition?.filename ?? '${library.name!.split('.')[1]}.dart';

  /// The [DartFormatter] instance used to format Amplify codegen output.
  static final formatter = DartFormatter(fixes: StyleFix.all);

  /// Constructs a single-use [DartEmitter] using [AmplifyAllocator] for
  /// reference allocation.
  DartEmitter buildEmitter() => DartEmitter(
        allocator: AmplifyAllocator(filename),
        orderDirectives: true,
        useNullSafetySyntax: true,
      );

  /// The source definition.
  final SchemaTypeDefinition? definition;

  /// The generated `code_builder` [Library].
  final Library library;

  /// The file name of the generated output.
  final String filename;

  /// Emits [library] as Dart source.
  String emit() {
    return formatter.format(
      '$header\n${library.accept(buildEmitter())}',
    );
  }
}
