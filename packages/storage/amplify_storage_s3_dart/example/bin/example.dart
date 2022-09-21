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
  stdin.echoMode = false;
  final password = prompt('Enter password: ');
  stdin.echoMode = true;

  stdout.writeln('Signing in...');

  try {
    stdout.writeln('Signing in...');
    await Amplify.Auth.signIn(username: username, password: password);
  } on Object catch (e, st) {
    exitError(e, st);
  }

  stdout.writeln('Signed in!');
  while (true) {
    final operation = prompt('''Choose an operation:
1. list
2. getProperties
3. getUrl
0. exit
''');
    final operationNum = int.tryParse(operation);

    switch (operationNum) {
      case 1:
        await listOperation();
        break;
      case 2:
        await getPropertiesOperation();
        break;
      case 3:
        await getUrlOperation();
        break;
      case null:
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
  final storageAccessLevel = promptStorageAccessLevel();

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

Future<void> getPropertiesOperation() async {
  final key = prompt('Enter the object to get properties for: ');
  final storageAccessLevel = promptStorageAccessLevel();

  final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3Dart.pluginKey);
  final getPropertiesOperation = s3Plugin.getProperties(
    key: key,
    options: S3StorageGetPropertiesOptions(
      storageAccessLevel: storageAccessLevel,
    ),
  );
  final result = await getPropertiesOperation.result;

  stdout
    ..writeln('Got properties: ')
    ..writeln('key: ${result.storageItem.key}')
    ..writeln('size: ${result.storageItem.size}')
    ..writeln('lastModified: ${result.storageItem.lastModified}')
    ..writeln('eTag: ${result.storageItem.eTag}')
    ..writeln('metadata: ${result.storageItem.metadata}');
}

Future<void> getUrlOperation() async {
  final key = prompt('Enter the object key to get url for: ');
  final storageAccessLevel = promptStorageAccessLevel();

  final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3Dart.pluginKey);
  final getUrlOperation = s3Plugin.getUrl(
    key: key,
    options: S3StorageGetUrlOptions(
      storageAccessLevel: storageAccessLevel,
      expiresIn: const Duration(
        minutes: 10,
      ),
      checkObjectExistence: true,
    ),
  );

  try {
    final result = await getUrlOperation.result;
    stdout
      ..writeln('Generated url for key: $key, the url expires in 10 minutes:')
      ..writeln(result.url.toString());
  } on S3StorageException catch (error) {
    stderr
      ..writeln('Something went wrong...')
      ..writeln(error.message);
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

StorageAccessLevel promptStorageAccessLevel() {
  int? value;
  bool valueInRange(int? value) {
    return [1, 2, 3].contains(value);
  }

  while (value == null || !valueInRange(value)) {
    stdout.write('''Enter storage access level for the objects:
1. guest
2. protected
3. private
''');
    final input = stdin.readLineSync(encoding: utf8);
    value = int.tryParse(input ?? '');
  }

  var storageAccessLevel = StorageAccessLevel.guest;
  if (value == 2) {
    storageAccessLevel = StorageAccessLevel.protected;
  } else if (value == 3) {
    storageAccessLevel = StorageAccessLevel.private;
  }

  return storageAccessLevel;
}

Never exitError(Object error, [StackTrace? stackTrace]) {
  stderr
    ..writeln(error)
    ..writeln(stackTrace);
  exit(1);
}
