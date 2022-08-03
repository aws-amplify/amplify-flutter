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

import 'package:aws_common/aws_common.dart';
import 'package:code_builder/code_builder.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/allocator.dart';

class GeneratedLibrary with AWSEquatable<GeneratedLibrary> {
  GeneratedLibrary(
    this.smithyLibrary,
    this.library, {
    this.libraryDocs,
  });

  final SmithyLibrary smithyLibrary;
  final Library library;
  final Set<String> dependencies = {};

  /// Documentation to add to the library directive (not supported
  /// via code_builder).
  final String? libraryDocs;

  String emit({bool withPrefixing = true}) {
    final allocator =
        SmithyAllocator(library, smithyLibrary, withPrefixing: withPrefixing);
    final output = StringBuffer()
      ..write(header)
      ..writeln()
      ..writeln()
      ..write(libraryDocs ?? '')
      ..write(format('${library.accept(buildEmitter(allocator))}'));
    dependencies.addAll(allocator.dependencies);
    return output.toString();
  }

  @override
  List<Object?> get props => [smithyLibrary];
}
