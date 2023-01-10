// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

void main() async {
  await _bumpVersionInFiles();
}

/// When executed, first prompts the user to enter old version, new version, and date. It then
///   1. looks for instances of old version in pubspec files and updates them to new version.
///   2. replaces the version string in the top-level `amplify.dart` file.
///   3. adds a blank entry to the top of CHANGELOG.md files.
Future<void> _bumpVersionInFiles() async {
  Future<void> _addTextToTopOfFile(String filePath, String textToAdd) async {
    final file = File(filePath);
    var contents = await file.readAsString();
    contents = '$textToAdd$contents';
    await file.writeAsString(contents);
  }

  stdout.write('What is the old version number? \n');
  String? oldVersion = stdin.readLineSync();

  stdout.write('What is the new version number? \n');
  String? newVersion = stdin.readLineSync();

  stdout.write(
      'What is the date for this release? Use international format yyyy-mm-dd e.g. 2020-07-29. \n');
  String? date = stdin.readLineSync();
  if (oldVersion != null && newVersion != null && date != null) {
    // First, update in pubspec files.
    final packagePubspecFilePattern = 'packages/**/pubspec.yaml';
    final patternsForAllPubspecs = [
      packagePubspecFilePattern,
      'example/pubspec.yaml'
    ];
    // Changes references to amplify libraries.
    patternsForAllPubspecs.forEach((pattern) async {
      await Process.run('/bin/sh', [
        '-c',
        'sed -i "" "/amplify/s/$oldVersion/$newVersion/g" $pattern' // lines that have "amplify" and the old version, change old to new
      ]);
    });
    // Change the version: x at top of files.
    await Process.run('/bin/sh', [
      '-c',
      'sed -i "" "s/version: $oldVersion/version: $newVersion/g" $packagePubspecFilePattern' // instances of "version: <old>" to "version: <new>"
    ]);

    // Change the string representation of version in top-level amplify.dart.
    await Process.run('/bin/sh', [
      '-c',
      'sed -i "" "s/return \'$oldVersion\'/return \'$newVersion\'/g" packages/amplify_flutter/lib/amplify.dart'
    ]);

    // Get all the changelog file names and add the blank entry to the top of them.
    final textToAdd = '## $newVersion ($date)\n\n';
    final results =
        await Process.run('/bin/sh', ['-c', 'find packages/**/CHANGELOG.md']);
    final fileNames = results.stdout.toString().trim().split('\n');
    fileNames.forEach((fileName) async {
      await _addTextToTopOfFile(fileName, textToAdd);
    });
  }
}
