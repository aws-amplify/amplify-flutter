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
