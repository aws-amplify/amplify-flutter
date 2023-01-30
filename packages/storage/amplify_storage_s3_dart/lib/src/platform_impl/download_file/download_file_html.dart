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
    request: StorageDownloadFileRequest(
      key: request.key,
      localFile: request.localFile,
      options: request.options as S3DownloadFileOptions?,
    ),
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
  final s3Options = request.options as S3DownloadFileOptions? ??
      S3DownloadFileOptions(
        accessLevel: s3pluginConfig.defaultAccessLevel,
      );
  final targetIdentityId = s3Options.targetIdentityId;
  // download url expires in 15 mins by default, see [S3GetUrlOptions]
  final url = (await storageS3Service.getUrl(
    key: request.key,
    options: targetIdentityId == null
        ? S3GetUrlOptions(
            accessLevel: s3Options.accessLevel,
            checkObjectExistence: true,
            useAccelerateEndpoint: s3Options.useAccelerateEndpoint,
          )
        : S3GetUrlOptions.forIdentity(
            targetIdentityId,
            checkObjectExistence: true,
            useAccelerateEndpoint: s3Options.useAccelerateEndpoint,
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
    downloadedItem: s3Options.getProperties
        ? (await storageS3Service.getProperties(
            key: request.key,
            options: targetIdentityId == null
                ? S3GetPropertiesOptions(
                    accessLevel: s3Options.accessLevel,
                  )
                : S3GetPropertiesOptions.forIdentity(targetIdentityId),
          ))
            .storageItem
        : S3Item(key: request.key),
    localFile: request.localFile,
  );
}
