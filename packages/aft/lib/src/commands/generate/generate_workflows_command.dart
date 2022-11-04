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

import 'dart:io';

import 'package:aft/aft.dart';
import 'package:path/path.dart' as p;

/// Command for generating associated items in the repo.
class GenerateWorkflowsCommand extends AmplifyCommand {
  @override
  String get name => 'workflows';

  @override
  String get description =>
      'Generate GitHub Action workflows for repo packages';

  @override
  Future<void> run() async {
    final allPackages = await this.allPackages;
    final repoRoot = await rootDir;
    for (final package in allPackages.values) {
      if (package.pubspecInfo.pubspec.publishTo == 'none' &&
          !falsePositiveExamples.contains(package.name)) {
        continue;
      }
      final workflowFilepath = p.join(
        repoRoot.path,
        '.github',
        'workflows',
        '${package.name}.yaml',
      );
      final workflowFile = File(workflowFilepath);
      final repoRelativePath = p.relative(package.path, from: repoRoot.path);
      final workflowContents = '''
name: ${package.name}
on:
  push:
    branches:
      - main
      - stable
      - next
    paths:
      - '$repoRelativePath/**/*.dart'
  pull_request:
    paths:
      - '$repoRelativePath/**/*.dart'
  schedule:
    - cron: "0 0 * * 0"
defaults:
  run:
    shell: bash
permissions: read-all

jobs:
  test:
    uses: ./.github/workflows/${package.flavor == PackageFlavor.dart ? 'dart_package' : 'flutter_package'}.yaml
    with:
      working-directory: $repoRelativePath
''';
      workflowFile.writeAsStringSync(workflowContents);
    }
  }
}
