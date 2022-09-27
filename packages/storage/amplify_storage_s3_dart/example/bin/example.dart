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
1. list        2. getProperties
3. getUrl      4. copy
5. move        6. remove
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
      case 4:
        await copyOperation();
        break;
      case 5:
        await moveOperation();
        break;
      case 6:
        await removeOperation();
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
  final storageAccessLevel = promptStorageAccessLevel(
    'Choose the storage access level associated with the path: ',
  );

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
    stdout.writeln('${result.pluginMetadata}');
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
  final storageAccessLevel = promptStorageAccessLevel(
    'Choose the storage access level associated with the object: ',
  );

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
  final storageAccessLevel = promptStorageAccessLevel(
    'Choose the storage access level associated with the object: ',
  );

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
  } on Exception catch (error) {
    stderr
      ..writeln('Something went wrong...')
      ..writeln(error);
  }
}

Future<void> copyOperation() async {
  final sourceKey = prompt('Enter the key of the source object: ');
  final sourceStorageAccessLevel = promptStorageAccessLevel(
    'Choose the storage access level associated with the source object: ',
  );
  final destinationKey = prompt('Enter the key of the destination object: ');
  final destinationStorageAccessLevel = promptStorageAccessLevel(
    'Choose the storage access level associated with the destination object: ',
  );

  final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3Dart.pluginKey);
  final copyOperation = s3Plugin.copy(
    source: S3StorageItemWithAccessLevel(
      storageItem: S3StorageItem(key: sourceKey),
      storageAccessLevel: sourceStorageAccessLevel,
    ),
    destination: S3StorageItemWithAccessLevel(
      storageItem: S3StorageItem(key: destinationKey),
      storageAccessLevel: destinationStorageAccessLevel,
    ),
    options: const S3StorageCopyOptions(getProperties: true),
  );

  try {
    final result = await copyOperation.result;
    stdout
      ..writeln('Copied object: ')
      ..writeln('key: ${result.copiedItem.key}')
      ..writeln('size: ${result.copiedItem.size}')
      ..writeln('lastModified: ${result.copiedItem.lastModified}')
      ..writeln('eTag: ${result.copiedItem.eTag}')
      ..writeln('metadata: ${result.copiedItem.metadata}');
  } on Exception catch (error) {
    stderr
      ..writeln('Something went wrong...')
      ..writeln(error);
  }
}

Future<void> moveOperation() async {
  final sourceKey = prompt('Enter the key of the source object: ');
  final sourceStorageAccessLevel = promptStorageAccessLevel(
    'Choose the storage access level associated with the source object: ',
  );
  final destinationKey = prompt('Enter the key of the destination object: ');
  final destinationStorageAccessLevel = promptStorageAccessLevel(
    'Choose the storage access level associated with the destination object: ',
  );

  final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3Dart.pluginKey);
  final moveOperation = s3Plugin.move(
    source: S3StorageItemWithAccessLevel(
      storageItem: S3StorageItem(key: sourceKey),
      storageAccessLevel: sourceStorageAccessLevel,
    ),
    destination: S3StorageItemWithAccessLevel(
      storageItem: S3StorageItem(key: destinationKey),
      storageAccessLevel: destinationStorageAccessLevel,
    ),
    options: const S3StorageMoveOptions(getProperties: true),
  );

  try {
    final result = await moveOperation.result;
    stdout
      ..writeln('Copied object: ')
      ..writeln('key: ${result.movedItem.key}')
      ..writeln('size: ${result.movedItem.size}')
      ..writeln('lastModified: ${result.movedItem.lastModified}')
      ..writeln('eTag: ${result.movedItem.eTag}')
      ..writeln('metadata: ${result.movedItem.metadata}');
  } on Exception catch (error) {
    stderr
      ..writeln('Something went wrong...')
      ..writeln(error);
  }
}

Future<void> removeOperation() async {
  final key = prompt('Enter the object key to remove: ');
  final storageAccessLevel = promptStorageAccessLevel(
    'Choose the storage access level associated with the object: ',
  );

  final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3Dart.pluginKey);
  final removeOperation = s3Plugin.remove(
    key: key,
    options: S3StorageRemoveOptions(
      storageAccessLevel: storageAccessLevel,
    ),
  );

  try {
    final result = await removeOperation.result;
    stdout
      ..writeln('Remove completed.')
      ..writeln('Removed object: ${result.removedItem.key}');
  } on Exception catch (error) {
    stderr
      ..writeln('Something went wrong...')
      ..writeln(error);
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

StorageAccessLevel promptStorageAccessLevel(String message) {
  int? value;
  bool valueInRange(int? value) {
    return [1, 2, 3].contains(value);
  }

  while (value == null || !valueInRange(value)) {
    stdout.write('''$message:
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
