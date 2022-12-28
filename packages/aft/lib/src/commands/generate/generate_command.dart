// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/aft.dart';
import 'package:aft/src/commands/generate/generate_sdk_command.dart';
import 'package:aft/src/commands/generate/generate_workflows_command.dart';

/// Command for generating associated items in the repo.
class GenerateCommand extends AmplifyCommand {
  GenerateCommand() {
    addSubcommand(GenerateSdkCommand());
    addSubcommand(GenerateWorkflowsCommand());
  }

  @override
  String get name => 'generate';

  @override
  String get description => 'Generate repo items';
}
