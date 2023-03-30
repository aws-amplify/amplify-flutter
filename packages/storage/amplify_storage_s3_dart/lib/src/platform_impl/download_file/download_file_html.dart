// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/platform_impl/download_file/dom_helper.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';

/// The html implementation of `downloadFile` API.
S3DownloadFileOperation downloadFile({
  required String key,
  required AWSFile localFile,
  required StorageDownloadFileOptions options,
  required S3PluginConfig s3pluginConfig,
  required StorageS3Service storageS3Service,
  required AppPathProvider appPathProvider,
  void Function(S3TransferProgress)? onProgress,
}) {
  Future<void> noOp() async {}

  return S3DownloadFileOperation(
    request: StorageDownloadFileRequest(
      key: key,
      localFile: localFile,
      options: options,
    ),
    result: _downloadFromUrl(
      key: key,
      localFile: localFile,
      options: options,
      s3pluginConfig: s3pluginConfig,
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
  required String key,
  required AWSFile localFile,
  required StorageDownloadFileOptions options,
  required S3PluginConfig s3pluginConfig,
  required StorageS3Service storageS3Service,
}) async {
  final s3PluginOptions = options.pluginOptions as S3DownloadFilePluginOptions;
  final targetIdentityId = s3PluginOptions.targetIdentityId;
  // download url expires in 15 mins by default, see [S3GetUrlOptions]
  final url = (await storageS3Service.getUrl(
    key: key,
    options: targetIdentityId == null
        ? StorageGetUrlOptions(
            accessLevel: options.accessLevel,
            pluginOptions: S3GetUrlPluginOptions(
              checkObjectExistence: true,
              useAccelerateEndpoint: s3PluginOptions.useAccelerateEndpoint,
            ),
          )
        : StorageGetUrlOptions(
            accessLevel: options.accessLevel,
            pluginOptions: S3GetUrlPluginOptions.forIdentity(
              targetIdentityId,
              checkObjectExistence: true,
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
        ? (await storageS3Service.getProperties(
            key: key,
            options: targetIdentityId == null
                ? StorageGetPropertiesOptions(
                    accessLevel: options.accessLevel,
                  )
                : StorageGetPropertiesOptions(
                    accessLevel: options.accessLevel,
                    pluginOptions: S3GetPropertiesPluginOptions.forIdentity(
                      targetIdentityId,
                    ),
                  ),
          ))
            .storageItem
        : S3Item(key: key),
    localFile: localFile,
  );
}
