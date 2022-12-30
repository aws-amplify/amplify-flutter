// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
