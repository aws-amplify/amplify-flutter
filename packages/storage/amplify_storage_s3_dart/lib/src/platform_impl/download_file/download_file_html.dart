// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/platform_impl/download_file/dom_helper.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';

/// The html implementation of `downloadFile` API.
S3DownloadFileOperation downloadFile({
  required StorageDownloadFileRequest request,
  required S3PluginConfig s3pluginConfig,
  required StorageS3Service storageS3Service,
  required AppPathProvider appPathProvider,
  void Function(S3TransferProgress)? onProgress,
}) {
  Future<void> noOp() async {}
  return S3DownloadFileOperation(
    request: request,
    result: _downloadFromUrl(
      request: request,
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
  required StorageDownloadFileRequest request,
  required S3PluginConfig s3pluginConfig,
  required StorageS3Service storageS3Service,
}) async {
  final s3PluginOptions = AmplifyStorageS3Dart.tryCastOrDefaultIfNull(
    pluginOptions: request.options?.pluginOptions,
    defaultPluginOptions: const S3DownloadFilePluginOptions(),
  );
  final s3Options = StorageDownloadFileOptions<S3DownloadFilePluginOptions>(
    accessLevel:
        request.options?.accessLevel ?? s3pluginConfig.defaultAccessLevel,
    pluginOptions: s3PluginOptions,
  );

  final targetIdentityId = s3PluginOptions.targetIdentityId;
  // download url expires in 15 mins by default, see [S3GetUrlOptions]
  final url = (await storageS3Service.getUrl(
    key: request.key,
    options: targetIdentityId == null
        ? StorageGetUrlOptions<S3GetUrlPluginOptions>(
            accessLevel: s3Options.accessLevel,
            pluginOptions: S3GetUrlPluginOptions(
              checkObjectExistence: true,
              useAccelerateEndpoint: s3PluginOptions.useAccelerateEndpoint,
            ),
          )
        : StorageGetUrlOptions<S3GetUrlPluginOptions>(
            accessLevel: s3Options.accessLevel,
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
    name: request.localFile.path,
  );

  return S3DownloadFileResult(
    downloadedItem: s3PluginOptions.getProperties
        ? (await storageS3Service.getProperties(
            key: request.key,
            options: targetIdentityId == null
                ? StorageGetPropertiesOptions<S3GetPropertiesPluginOptions>(
                    accessLevel: s3Options.accessLevel,
                  )
                : StorageGetPropertiesOptions<S3GetPropertiesPluginOptions>(
                    accessLevel: s3Options.accessLevel,
                    pluginOptions: S3GetPropertiesPluginOptions.forIdentity(
                      targetIdentityId,
                    ),
                  ),
          ))
            .storageItem
        : S3Item(key: request.key),
    localFile: request.localFile,
  );
}
