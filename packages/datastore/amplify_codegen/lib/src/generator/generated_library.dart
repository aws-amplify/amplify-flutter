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
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

/// {@template amplify_codegen.generated_library}
/// The output of code generation: a [Library] and associated utilities for
/// emitting to Dart source.
/// {@endtemplate}
class GeneratedLibrary {
  /// {@macro amplify_codegen.generated_library}
  const GeneratedLibrary(this.library);

  /// The [DartFormatter] instance used to format Amplify codegen output.
  static final formatter = DartFormatter(fixes: StyleFix.all);

  /// Constructs a single-use [DartEmitter] using [AmplifyAllocator] for
  /// reference allocation.
  static DartEmitter buildEmitter() => DartEmitter(
        allocator: AmplifyAllocator(),
        orderDirectives: true,
        useNullSafetySyntax: true,
      );

  /// The generated `code_builder` [Library].
  final Library library;

  /// Emits [library] as Dart source.
  String emit() {
    return formatter.format('${library.accept(buildEmitter())}');
  }
}
