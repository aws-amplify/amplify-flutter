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
 1. list              2. getProperties
 3. getUrl            4. download data
 5. download file     6. upload data url
 7. upload file       8. copy
 9. move             10. remove
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
        await downloadDataOperation();
        break;
      case 5:
        await downloadFileOperation();
        break;
      case 6:
        await uploadDataUrlOperation();
        break;
      case 7:
        await uploadFileOperation();
        break;
      case 8:
        await copyOperation();
        break;
      case 9:
        await moveOperation();
        break;
      case 10:
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
  final accessLevel = promptStorageAccessLevel(
    'Choose the storage access level associated with the path: ',
  );

  // get plugin with plugin key to gain S3 specific interface
  final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3Dart.pluginKey);
  final operation = s3Plugin.list(
    path: path,
    options: S3ListOptions(
      accessLevel: accessLevel,
      pageSize: 5,
    ),
  );

  // or to call Amplify.Storage.list
  // final operation = Amplify.Storage.list(
  //   path: path,
  //   options: StorageS3ListOptions(
  //     accessLevel: accessLevel,
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
  final accessLevel = promptStorageAccessLevel(
    'Choose the storage access level associated with the object: ',
  );

  final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3Dart.pluginKey);
  final getPropertiesOperation = s3Plugin.getProperties(
    key: key,
    options: S3GetPropertiesOptions(
      accessLevel: accessLevel,
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
  final accessLevel = promptStorageAccessLevel(
    'Choose the storage access level associated with the object: ',
  );

  final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3Dart.pluginKey);
  final getUrlOperation = s3Plugin.getUrl(
    key: key,
    options: S3GetUrlOptions(
      accessLevel: accessLevel,
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

Future<void> downloadDataOperation() async {
  final key = prompt('Enter the key of the object to download: ');
  final accessLevel = promptStorageAccessLevel(
    'Choose the storage access level associated with the object: ',
  );

  final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3Dart.pluginKey);
  final downloadDataOperation = s3Plugin.downloadData(
    key: key,
    options: S3DownloadDataOptions(
      accessLevel: accessLevel,
      getProperties: true,
    ),
    onProgress: onTransferProgress,
  );

  stdout.writeln('Downloading...');
  await Future<void>.delayed(const Duration(seconds: 1));
  await downloadDataOperation.pause();

  await Future<void>.delayed(const Duration(seconds: 4));
  await downloadDataOperation.resume();

  try {
    final result = await downloadDataOperation.result;
    stdout.writeln('\nDownload completed!');
    stdout.writeln('Download bytes size: ${result.bytes.length}');
    await File('output').writeAsBytes(result.bytes);
  } on Exception catch (error) {
    stderr
      ..writeln('Something went wrong...')
      ..writeln(error);
  }
}

Future<void> downloadFileOperation() async {
  final key = prompt('Enter the key of the object to download: ');
  final accessLevel = promptStorageAccessLevel(
    'Choose the storage access level associated with the object: ',
  );
  final destinationPath = prompt(
    'Enter the destination file path (ensure the file path is writable): ',
  );
  final localFile = AWSFile.fromPath(destinationPath);

  final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3Dart.pluginKey);
  final downloadFileOperation = s3Plugin.downloadFile(
    key: key,
    localFile: localFile,
    options: S3DownloadFileOptions(
      getProperties: true,
      accessLevel: accessLevel,
    ),
    onProgress: onTransferProgress,
  );

  stdout.writeln('Downloading...');
  await Future<void>.delayed(const Duration(seconds: 1));
  await downloadFileOperation.pause();

  await Future<void>.delayed(const Duration(seconds: 4));
  await downloadFileOperation.resume();

  try {
    final result = await downloadFileOperation.result;
    stdout.writeln('\nDownload completed!');
    stdout.writeln('Download file eTag: ${result.downloadedItem.eTag}');
    stdout.writeln('Download file path: ${result.localFile.path}');
  } on Exception catch (error) {
    stderr
      ..writeln('Something went wrong...')
      ..writeln(error);
  }
}

Future<void> uploadDataUrlOperation() async {
  final dataUrl = prompt('Enter the data url to upload: ');
  final key = prompt('Enter the object key to upload the data url to: ');
  final accessLevel = promptStorageAccessLevel(
    'Choose the storage access level associated with the object to upload: ',
  );

  final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3Dart.pluginKey);
  final uploadDataOperation = s3Plugin.uploadData(
    data: S3DataPayload.dataUrl(dataUrl),
    key: key,
    options: S3UploadDataOptions(
      accessLevel: accessLevel,
      getProperties: true,
    ),
  );

  try {
    stdout.writeln('Uploading...');
    final result = await uploadDataOperation.result;
    stdout
      ..writeln('Uploaded data url: ')
      ..writeln('key: ${result.uploadedItem.key}')
      ..writeln('size: ${result.uploadedItem.size}')
      ..writeln('lastModified: ${result.uploadedItem.lastModified}')
      ..writeln('eTag: ${result.uploadedItem.eTag}');
  } on Exception catch (error) {
    stderr
      ..writeln('Something went wrong...')
      ..writeln(error);
  }
}

Future<void> uploadFileOperation() async {
  final filePath = prompt('Enter the path of the file to be uploaded: ');
  final key = prompt('Enter the object key to upload the file to: ');
  final accessLevel = promptStorageAccessLevel(
    'Choose the storage access level associated with the object to upload: ',
  );
  final nameTag = prompt('Enter value of the name tag for this file: ');
  final file = AWSFile.fromPath(filePath);

  final option = prompt('Upload size ${await file.size}, continue? (Y/n): ');

  if (option.toLowerCase() != 'y') {
    stdout.writeln('Upload canceled.');
    return;
  }

  final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3Dart.pluginKey);
  final uploadFileOperation = s3Plugin.uploadFile(
    localFile: file,
    key: key,
    onProgress: onTransferProgress,
    options: S3UploadFileOptions(
      accessLevel: accessLevel,
      getProperties: true,
      metadata: {
        'nameTag': nameTag,
      },
    ),
  );

  stdout.writeln('Uploading...');
  // await Future<void>.delayed(const Duration(seconds: 1));
  // await uploadFileOperation.pause();

  // await Future<void>.delayed(const Duration(seconds: 4));
  // await uploadFileOperation.resume();

  try {
    final result = await uploadFileOperation.result;
    stdout.writeln('\nUpload completed!');
    stdout.writeln('Upload file eTag: ${result.uploadedItem.eTag}');
    stdout.writeln('Upload file metadata: ${result.uploadedItem.metadata}');
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
    source: S3ItemWithAccessLevel(
      storageItem: S3Item(key: sourceKey),
      accessLevel: sourceStorageAccessLevel,
    ),
    destination: S3ItemWithAccessLevel(
      storageItem: S3Item(key: destinationKey),
      accessLevel: destinationStorageAccessLevel,
    ),
    options: const S3CopyOptions(getProperties: true),
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
    source: S3ItemWithAccessLevel(
      storageItem: S3Item(key: sourceKey),
      accessLevel: sourceStorageAccessLevel,
    ),
    destination: S3ItemWithAccessLevel(
      storageItem: S3Item(key: destinationKey),
      accessLevel: destinationStorageAccessLevel,
    ),
    options: const S3MoveOptions(getProperties: true),
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
  final accessLevel = promptStorageAccessLevel(
    'Choose the storage access level associated with the object: ',
  );

  final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3Dart.pluginKey);
  final removeOperation = s3Plugin.remove(
    key: key,
    options: S3RemoveOptions(
      accessLevel: accessLevel,
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

  var accessLevel = StorageAccessLevel.guest;
  if (value == 2) {
    accessLevel = StorageAccessLevel.protected;
  } else if (value == 3) {
    accessLevel = StorageAccessLevel.private;
  }

  return accessLevel;
}

Never exitError(Object error, [StackTrace? stackTrace]) {
  stderr
    ..writeln(error)
    ..writeln(stackTrace);
  exit(1);
}

void onTransferProgress(S3TransferProgress progress) {
  final numberOfSigns = (progress.getFractionCompleted() * 20).ceil();
  final sb = StringBuffer();
  sb.write('[');
  sb.writeAll(
    List.generate(numberOfSigns, (index) => index).map(
      (e) => '=',
    ),
  );
  sb.writeAll(
    List.generate(20 - numberOfSigns, (index) => index).map(
      (e) => '-',
    ),
  );
  sb.write(
    '] | ${(progress.getFractionCompleted() * 100).ceil()}% | ${progress.transferredBytes}/${progress.totalBytes} | ${progress.state}     ',
  );
  stdout.write('\r${sb.toString()}');
}
