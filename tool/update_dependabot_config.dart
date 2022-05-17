/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'dart:io';

const pubspecName = 'pubspec.yaml';
const configPath = '.github/dependabot.yaml';

void main() async {
  await _updateDependabotConfig();
}

Future<void> _updateDependabotConfig() async {
  // Generate a list of paths for all the pubspec.yaml files found recursively.
  final dir = Directory('.');
  final result = dir.listSync(recursive: true, followLinks: false);
  final pubspecPaths = result
      .where((element) => element.path.contains(pubspecName))
      .map(
          (e) => e.path.replaceFirst('./', '').replaceFirst('$pubspecName', ''))
      .toList();
  pubspecPaths.sort();
  print(
      'Updating dependabot.yaml with all ${pubspecPaths.length} pubspec.yaml files.');

  // Map the paths to all the blocks for the config file.
  final configFile = File(configPath);
  String fileContents = '''
# This file is automatically generated by running `dart tool/update_dependabot_config.dart`
# Do not edit manually.
version: 2
enable-beta-ecosystems: true
updates:
''';
  pubspecPaths.forEach((filePath) {
    String block = '''
  - package-ecosystem: "pub"
    directory: "$filePath"
    schedule:
      interval: "daily"
''';
    fileContents += block;
  });

  await configFile.writeAsString(fileContents);
  print('Done.');
}
