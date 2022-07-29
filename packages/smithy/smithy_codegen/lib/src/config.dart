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

import 'package:build_cli_annotations/build_cli_annotations.dart';
import 'package:path/path.dart' as path;

part 'config.g.dart';

String get parserUsage =>
    _$populateCodegenConfigParser(ArgParser(usageLineLength: 80)).usage;

/// CLI options for the code generator.
@CliOptions()
class CodegenConfig {
  const CodegenConfig({
    required this.output,
    this.inputFile,
    required this.listen,
    this.packageName,
    required this.server,
    required this.client,
    this.smithyPath,
  });

  @CliOption(
    abbr: 'o',
    defaultsTo: '.',
    help: 'The directory to store generated files. '
        'Defaults to the current directory.',
  )
  final String output;

  @CliOption(abbr: 'f', help: 'The input model JSON file.')
  final String? inputFile;

  @CliOption(
    defaultsTo: false,
    help: 'Starts a gRPC server for accepting commands.',
  )
  final bool listen;

  @CliOption(
    abbr: 'p',
    help: 'The name of the generated package. '
        'Defaults to the service name.',
  )
  final String? packageName;

  @CliOption(
    defaultsTo: false,
    help: 'Whether to generate server-side code.',
    negatable: true,
  )
  final bool server;

  @CliOption(
    defaultsTo: true,
    help: 'Whether to generate client-side code.',
    negatable: true,
  )
  final bool client;

  @CliOption(
    help: 'The path to the smithy package',
  )
  final String? smithyPath;
}

extension ConfigOptions on CodegenConfig {
  /// The output directory as a file URI.
  Uri get outputUri => path.toUri(output);
}
