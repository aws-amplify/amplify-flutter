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

import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generator.dart';

/// Generates the top-level library file which simply exports all the public
/// types generated in the service's closure. This includes all operations,
/// models, serializers, and the service client -- basically everything except
/// the generated payload types which are meant to be an internal abstraction.
class ServiceGenerator extends LibraryGenerator<ServiceShape> {
  ServiceGenerator(
    ServiceShape shape,
    CodegenContext context, {
    SmithyLibrary? smithyLibrary,
  }) : super(
          shape,
          context: context,
          smithyLibrary: smithyLibrary,
        );

  @override
  Library generate() {
    builder.directives.addAll([
      for (final type in context.generatedTypes.entries)
        Directive.export(type.key.url!, hide: type.value.toList()),
      Directive.export(context.serviceClientLibrary.libraryUrl),
      if (context.generateServer)
        Directive.export(context.serviceServerLibrary.libraryUrl),
    ]);

    return builder.build();
  }
}
