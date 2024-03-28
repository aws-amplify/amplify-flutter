// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
 9. remove            0. exit
''');
    final operationNum = int.tryParse(operation);

    switch (operationNum) {
      case 1:
        await listOperation();
      case 2:
        await getPropertiesOperation();
      case 3:
        await getUrlOperation();
      case 4:
        await downloadDataOperation();
      case 5:
        await downloadFileOperation();
      case 6:
        break;
      case 7:
        await uploadFileOperation();
      case 8:
        await copyOperation();
      case 9:
        await removeOperation();
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
  final listAll = prompt('List with pagination? (Y/n): ').toLowerCase() == 'n';

  const pageSize = 5;

  // get plugin with plugin key to gain S3 specific interface
  final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3Dart.pluginKey);
  final options = listAll
      ? const StorageListOptions(
          pluginOptions: S3ListPluginOptions.listAll(),
        )
      : const StorageListOptions(
          pageSize: pageSize,
        );
  final operation = s3Plugin.list(
    path: StoragePath.fromString(path),
    options: options,
  );

  // or to call Amplify.Storage.list
  // final operation = Amplify.Storage.list(
  //   path: path,
  //   options: StorageS3ListOptions(
  //     pageSize: 5,
  //   ),
  // );

  var result = await operation.result;

  stdout.writeln('list operation result: ');

  while (true) {
    stdout.writeln('Listed ${result.items.length} objects.');
    stdout.writeln('Sub directories: ${result.metadata.subPaths}');
    result.items.asMap().forEach((index, item) {
      stdout.writeln('$index. path: ${item.path} | size: ${item.size}');
    });

    if (!result.hasNextPage) {
      break;
    }

    final listNextPage =
        prompt(('There are more objects to list, list next page? (Y/n): '))
            .toLowerCase();

    if (listNextPage != 'y') {
      break;
    }

    result = await s3Plugin
        .list(
          path: StoragePath.fromString(path),
          options: StorageListOptions(
            pageSize: pageSize,
            nextToken: result.nextToken,
          ),
        )
        .result;
  }
}

Future<void> getPropertiesOperation() async {
  final key = prompt('Enter the object to get properties for: ');

  final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3Dart.pluginKey);
  final getPropertiesOperation = s3Plugin.getProperties(
    path: StoragePath.fromString(key),
  );
  final result = await getPropertiesOperation.result;

  stdout
    ..writeln('Got properties: ')
    ..writeln('path: ${result.storageItem.path}')
    ..writeln('size: ${result.storageItem.size}')
    ..writeln('lastModified: ${result.storageItem.lastModified}')
    ..writeln('eTag: ${result.storageItem.eTag}')
    ..writeln('metadata: ${result.storageItem.metadata}');
}

Future<void> getUrlOperation() async {
  final key = prompt('Enter the object key to get url for: ');

  final useAccelerateEndpoint = promptUseAcceleration();

  final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3Dart.pluginKey);
  final getUrlOperation = s3Plugin.getUrl(
    path: StoragePath.fromString(key),
    options: StorageGetUrlOptions(
      pluginOptions: S3GetUrlPluginOptions(
        expiresIn: const Duration(
          minutes: 10,
        ),
        validateObjectExistence: true,
        useAccelerateEndpoint: useAccelerateEndpoint,
      ),
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

  final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3Dart.pluginKey);
  final downloadDataOperation = s3Plugin.downloadData(
    path: StoragePath.fromString(key),
    options: const StorageDownloadDataOptions(
      pluginOptions: S3DownloadDataPluginOptions(
        getProperties: true,
      ),
    ),
    onProgress: onTransferProgress,
  );

  stdout.writeln('Downloading...');

  try {
    await Future<void>.delayed(const Duration(seconds: 1));
    await downloadDataOperation.pause();

    await Future<void>.delayed(const Duration(seconds: 4));
    await downloadDataOperation.resume();

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
  final destinationPath = prompt(
    'Enter the destination file path (ensure the file path is writable): ',
  );
  final useAccelerateEndpoint = promptUseAcceleration();

  final localFile = AWSFile.fromPath(destinationPath);

  final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3Dart.pluginKey);
  final downloadFileOperation = s3Plugin.downloadFile(
    path: StoragePath.fromString(key),
    localFile: localFile,
    options: StorageDownloadFileOptions(
      pluginOptions: S3DownloadFilePluginOptions(
        getProperties: true,
        useAccelerateEndpoint: useAccelerateEndpoint,
      ),
    ),
    onProgress: onTransferProgress,
  );

  stdout.writeln('Downloading...');

  try {
    await Future<void>.delayed(const Duration(seconds: 2));
    await downloadFileOperation.pause();

    await Future<void>.delayed(const Duration(seconds: 30));
    await downloadFileOperation.resume();

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

  final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3Dart.pluginKey);
  final uploadDataOperation = s3Plugin.uploadData(
    data: S3DataPayload.dataUrl(dataUrl),
    path: StoragePath.fromString(key),
    options: const StorageUploadDataOptions(
      pluginOptions: S3UploadDataPluginOptions(
        getProperties: true,
      ),
    ),
  );

  try {
    stdout.writeln('Uploading...');
    final result = await uploadDataOperation.result;
    stdout
      ..writeln('Uploaded data url: ')
      ..writeln('path: ${result.uploadedItem.path}')
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
  final nameTag = prompt('Enter value of the name tag for this file: ');
  final file = AWSFile.fromPath(filePath);

  final option = prompt('Upload size ${await file.size}, continue? (Y/n): ');
  final useAccelerateEndpoint = promptUseAcceleration();

  if (option.toLowerCase() != 'y') {
    stdout.writeln('Upload canceled.');
    return;
  }

  final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3Dart.pluginKey);
  final uploadFileOperation = s3Plugin.uploadFile(
    localFile: file,
    path: StoragePath.fromString(key),
    onProgress: onTransferProgress,
    options: StorageUploadFileOptions(
      metadata: {
        'nameTag': nameTag,
      },
      pluginOptions: S3UploadFilePluginOptions(
        getProperties: true,
        useAccelerateEndpoint: useAccelerateEndpoint,
      ),
    ),
  );

  stdout.writeln('Uploading...');

  try {
    await Future<void>.delayed(const Duration(seconds: 3));
    await uploadFileOperation.pause();

    await Future<void>.delayed(const Duration(seconds: 4));
    await uploadFileOperation.resume();

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
  final destinationKey = prompt('Enter the key of the destination object: ');

  final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3Dart.pluginKey);
  final copyOperation = s3Plugin.copy(
    source: StoragePath.fromString(sourceKey),
    destination: StoragePath.fromString(destinationKey),
    options: const StorageCopyOptions(
      pluginOptions: S3CopyPluginOptions(getProperties: true),
    ),
  );

  try {
    final result = await copyOperation.result;
    stdout
      ..writeln('Copied object: ')
      ..writeln('path: ${result.copiedItem.path}')
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

Future<void> removeOperation() async {
  final key = prompt('Enter the object key to remove: ');

  final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3Dart.pluginKey);
  final removeOperation = s3Plugin.remove(
    path: StoragePath.fromString(key),
  );

  try {
    final result = await removeOperation.result;
    stdout
      ..writeln('Remove completed.')
      ..writeln('Removed object: ${result.removedItem.path}');
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

bool promptUseAcceleration() {
  String input;

  do {
    input = prompt('Use transfer acceleration for this operation? (y/n): ')
        .toLowerCase();
  } while (input != 'y' && input != 'n');

  return input == 'y';
}

Never exitError(Object error, [StackTrace? stackTrace]) {
  stderr
    ..writeln(error)
    ..writeln(stackTrace);
  exit(1);
}

void onTransferProgress(S3TransferProgress progress) {
  final numberOfSigns = (progress.fractionCompleted * 20).ceil();
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
    '] | ${(progress.fractionCompleted * 100).ceil()}% | ${progress.transferredBytes}/${progress.totalBytes} | ${progress.state}     ',
  );
  stdout.write('\r${sb.toString()}');
}
