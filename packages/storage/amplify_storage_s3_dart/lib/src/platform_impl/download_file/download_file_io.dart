// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports
import 'package:amplify_core/src/config/amplify_outputs/storage/storage_outputs.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;

/// The io implementation of `downloadFile` API.
@internal
S3DownloadFileOperation downloadFile({
  required StoragePath path,
  required AWSFile localFile,
  required StorageDownloadFileOptions options,
  required StorageOutputs storageOutputs,
  required StorageS3Service storageS3Service,
  required AppPathProvider appPathProvider,
  void Function(S3TransferProgress)? onProgress,
}) {
  late final String destinationPath;
  IOSink? sink;
  late final File tempFile;

  final s3PluginOptions = options.pluginOptions as S3DownloadFilePluginOptions;
  final downloadDataOptions = StorageDownloadDataOptions(
    pluginOptions: S3DownloadDataPluginOptions(
      getProperties: s3PluginOptions.getProperties,
      useAccelerateEndpoint: s3PluginOptions.useAccelerateEndpoint,
    ),
  );

  final downloadDataTask = storageS3Service.downloadData(
    path: path,
    options: downloadDataOptions,
    // Ensure destination file is writable. Exception thrown in the check
    // will be forwarded to the Future, downloadDataTask.result below
    preStart: () async {
      destinationPath = await _ensureDestinationWritable(localFile);
      tempFile = File(
        p.join(
          await appPathProvider.getTemporaryPath(),
          'amplify_storage_s3_temp_${uuid()}',
        ),
      );
      sink = tempFile.openWrite(mode: FileMode.append);
    },
    onProgress: onProgress,
    // ignore: unnecessary_lambdas
    onData: (bytes) {
      // sink is set in the callback preStart, need to keep this closure to
      // preventLateInitializationError: Local 'sink' has not been initialized.
      sink!.add(bytes);
    },
    // Exception thrown in this callback will be forwarded to the Future,
    // downloadDataTask.result below
    onDone: () async {
      // ensure all bytes are written into the temporary file and then close
      await sink!.flush();
      await sink!.close();
      // then copy the temporary file to the destination
      await tempFile.copy(destinationPath);
    },
    onError: () async {
      // sink may not be initialized yet when an exception occurs
      await sink?.close();
    },
  );

  return S3DownloadFileOperation(
    request: StorageDownloadFileRequest(
      path: path,
      localFile: localFile,
      options: options,
    ),
    // This future throws exceptions that may occur in the entire
    // download process, all exceptions will be remapped to subtypes of
    // StorageException
    result: downloadDataTask.result.then(
      (downloadedItem) => S3DownloadFileResult(
        localFile: localFile,
        downloadedItem: downloadedItem,
      ),
    ),
    resume: downloadDataTask.resume,
    pause: downloadDataTask.pause,
    cancel: downloadDataTask.cancel,
  );
}

Future<String> _ensureDestinationWritable(AWSFile file) async {
  final destinationPath = file.path;

  if (destinationPath == null) {
    throw const UnknownException(
      'Download destination file path is null.',
      recoverySuggestion:
          'Ensure your `AWSFile` contains a valid `path` property.',
    );
  }

  // path should not be a directory
  if (await FileSystemEntity.isDirectory(destinationPath)) {
    throw const UnknownException(
      'Download destination file path is a directory.',
      recoverySuggestion:
          'Ensure the `path` property of your `AWSFile` is pointing to a file and not a directory.',
    );
  }

  final destination = File(destinationPath);
  try {
    // override existing file
    if (await destination.exists()) {
      await destination.delete();
    }
  } on FileSystemException catch (error) {
    throw UnknownException(
      'Unexpected file system error.',
      recoverySuggestion: AmplifyExceptionMessages.missingExceptionMessage,
      underlyingException: error,
    );
  }

  return destinationPath;
}
