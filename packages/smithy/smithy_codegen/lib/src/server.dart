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

import 'package:grpc/grpc.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy_codegen/smithy_codegen.dart';

import 'service/codegen.pbgrpc.dart';

/// Handles requests from a remote codgen client, such as the Smithy plugin.
class CodegenService extends CodegenServiceBase {
  @override
  Future<CodegenResponse> codegen(
    ServiceCall call,
    CodegenRequest request,
  ) async {
    try {
      final ast = parseAstJson(request.json);
      final pubspec = Pubspec.fromJson(request.settings);
      final outputs = generateForAst(
        ast,
        packageName: pubspec.name,
        serviceName: request.serviceName,
      );
      final response = <CodegenResponse_Library>[];
      final dependencies = <String>{};
      for (final library in outputs.values.expand((out) => out.libraries)) {
        dependencies.addAll(library.dependencies);
        final output = library.emit();
        response.add(CodegenResponse_Library(
          metadata: library.smithyLibrary,
          definition: output,
        ));
      }
      final pubspecYaml = PubspecGenerator(pubspec, dependencies).generate();
      return CodegenResponse()
        ..success = true
        ..libraries.addAll(response)
        ..pubspec = pubspecYaml;
    } on Object catch (e) {
      return CodegenResponse()
        ..success = false
        ..error = e.toString();
    }
  }
}
