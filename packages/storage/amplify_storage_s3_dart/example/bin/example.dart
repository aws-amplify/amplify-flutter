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

import 'dart:convert';
import 'dart:io';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

import 'package:storage_s3_example/common.dart';

Future<void> main() async {
  AWSLogger().logLevel = LogLevel.debug;

  try {
    await configureAmplify();
    stdout.writeln('Amplify plugins have been configured.');
  } on Exception catch (e) {
    stdout.writeln('Could not configure: $e');
    exit(1);
  }

  stdout.writeln('Sign in your account');
  final username = prompt('Enter username: ');
  final password = prompt('Enter password: ');

  stdout.writeln('Signing in...');

  try {
    await Amplify.Auth.signIn(username: username, password: password);
  } on Object catch (e, st) {
    exitError(e, st);
  }

  stdout.writeln('Signed in!');
  while (true) {
    final operation = prompt('''Choose an operation:
1. list
2. getUrl
0. exit
''');
    final operationNum = int.parse(operation);

    switch (operationNum) {
      case 1:
        await listOperation();
        break;
      case 0:
      default:
        stdout.writeln('Good bye!');
        exit(0);
    }
  }
}

Future<void> listOperation() async {
  final path = prompt('Enter a path to list objects for: ');
  final accessLevel =
      int.parse(prompt('''Enter storage access level for the objects:
1. guest
2. protected
3. private
'''));
  var storageAccessLevel = StorageAccessLevel.guest;
  if (accessLevel == 2) {
    storageAccessLevel = StorageAccessLevel.protected;
  } else if (accessLevel == 3) {
    storageAccessLevel = StorageAccessLevel.private;
  }

  // get plugin with plugin key to gain S3 specific interface
  final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3Dart.pluginKey);
  final operation = s3Plugin.list(
    path: path,
    options: S3StorageListOptions(
      storageAccessLevel: storageAccessLevel,
      pageSize: 5,
    ),
  );

  // or to call Amplify.Storage.list
  // final operation = Amplify.Storage.list(
  //   path: path,
  //   options: StorageS3ListOptions(
  //     storageAccessLevel: storageAccessLevel,
  //     pageSize: 5,
  //   ),
  // );

  var result = await operation.result;

  stdout.writeln('list operation result: ');

  while (true) {
    stdout.writeln('Listed ${result.items.length} objects.');
    result.items.asMap().forEach((index, item) {
      stdout.writeln('$index. key: ${item.key} | size: ${item.size}');
    });

    if (!result.hasNext) {
      break;
    }

    final listNextPage =
        prompt(('There are more objects to list, list next page? (Y/n): '))
            .toLowerCase();

    if (listNextPage != 'y') {
      break;
    }

    result = await result.next();
  }
}

String prompt(String prompt) {
  String? value;
  while (value == null || value.isEmpty) {
    stdout.write(prompt);
    value = stdin.readLineSync(encoding: utf8);
  }
  return value;
}

Never exitError(Object error, [StackTrace? stackTrace]) {
  stderr.writeln(error);
  stderr.writeln(stackTrace);
  exit(1);
}
