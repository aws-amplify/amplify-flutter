// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports
import 'package:amplify_core/src/config/amplify_outputs/storage/storage_outputs.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/platform_impl/download_file/dom_helper.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';

/// The html implementation of `downloadFile` API.
S3DownloadFileOperation downloadFile({
  required StoragePath path,
  required AWSFile localFile,
  required StorageDownloadFileOptions options,
  required StorageOutputs storageOutputs,
  required StorageS3Service storageS3Service,
  required AppPathProvider appPathProvider,
  void Function(S3TransferProgress)? onProgress,
}) {
  Future<void> noOp() async {}

  return S3DownloadFileOperation(
    request: StorageDownloadFileRequest(
      path: path,
      localFile: localFile,
      options: options,
    ),
    result: _downloadFromUrl(
      path: path,
      localFile: localFile,
      options: options,
      storageOutputs: storageOutputs,
      storageS3Service: storageS3Service,
    ),
    // In Web the download process is managed by the browser so the operation
    // control APIs do nothing here.
    resume: noOp,
    pause: noOp,
    cancel: noOp,
  );
}

Future<S3DownloadFileResult> _downloadFromUrl({
  required StoragePath path,
  required AWSFile localFile,
  required StorageDownloadFileOptions options,
  required StorageOutputs storageOutputs,
  required StorageS3Service storageS3Service,
}) async {
  final s3PluginOptions = options.pluginOptions as S3DownloadFilePluginOptions;
  // Calling the `getProperties` by default to verify the existence of the object
  // before downloading from the presigned URL, as the 404 or 403 should be
  // handled by the plugin but not be thrown to an end user in browser.
  // The result of this call will be used as the result when
  // `options.getProperties` is set to true.
  // Exception thrown from the getProperties will be thrown as download
  // operation.
  final downloadedItem = (await storageS3Service.getProperties(
    path: path,
    options: const StorageGetPropertiesOptions(),
  ))
      .storageItem;

  // A download url expires in 15 mins by default, see [S3GetUrlPluginOptions].
  // We are not setting validateObjectExistence to true here as we are not
  // able to directly get the result of underlying HeadObject result.
  final url = (await storageS3Service.getUrl(
    path: path,
    options: StorageGetUrlOptions(
      pluginOptions: S3GetUrlPluginOptions(
        useAccelerateEndpoint: s3PluginOptions.useAccelerateEndpoint,
      ),
    ),
  ))
      .url;

  // Trigger a browser download on the presigned url.
  DomHelper.instance.download(
    url: url.toString(),
    // AWSFile.path is used as the file name that save the downloaded object
    // to.
    name: localFile.path,
  );

  return S3DownloadFileResult(
    downloadedItem: s3PluginOptions.getProperties
        ? downloadedItem
        : S3Item(path: downloadedItem.path),
    localFile: localFile,
  );
}
