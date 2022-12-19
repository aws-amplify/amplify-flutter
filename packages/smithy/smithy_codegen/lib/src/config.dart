// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
