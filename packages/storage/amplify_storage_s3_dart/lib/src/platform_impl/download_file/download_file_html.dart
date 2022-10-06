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

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/platform_impl/download_file/dom_helper.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';

/// The html implementation of `downloadFile` API.
S3StorageDownloadFileOperation downloadFile({
  required StorageDownloadFileRequest request,
  required S3PluginConfig s3pluginConfig,
  required StorageS3Service storageS3Service,
  required AppPathProvider appPathProvider,
  void Function(S3TransferProgress)? onProgress,
}) {
  Future<void> noOp() async {}
  return S3StorageDownloadFileOperation(
    request: StorageDownloadFileRequest(
      key: request.key,
      localFile: request.localFile,
      options: request.options as S3StorageDownloadFileOptions?,
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

Future<S3StorageDownloadFileResult> _downloadFromUrl({
  required StorageDownloadFileRequest request,
  required S3PluginConfig s3pluginConfig,
  required StorageS3Service storageS3Service,
}) async {
  const defaultExpiresIn = Duration(minutes: 5);
  final s3Options = request.options as S3StorageDownloadFileOptions? ??
      S3StorageDownloadFileOptions(
        storageAccessLevel: s3pluginConfig.defaultAccessLevel,
      );
  final targetIdentityId = s3Options.targetIdentityId;
  final url = (await storageS3Service.getUrl(
    key: request.key,
    options: targetIdentityId == null
        ? S3StorageGetUrlOptions(
            storageAccessLevel: s3Options.storageAccessLevel,
            expiresIn: defaultExpiresIn,
            checkObjectExistence: true,
          )
        : S3StorageGetUrlOptions.forIdentity(
            targetIdentityId,
            expiresIn: defaultExpiresIn,
            checkObjectExistence: true,
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

  return S3StorageDownloadFileResult(
    downloadedItem: s3Options.getProperties
        ? (await storageS3Service.getProperties(
            key: request.key,
            options: targetIdentityId == null
                ? S3StorageGetPropertiesOptions(
                    storageAccessLevel: s3Options.storageAccessLevel,
                  )
                : S3StorageGetPropertiesOptions.forIdentity(targetIdentityId),
          ))
            .storageItem
        : S3StorageItem(key: request.key),
    localFile: request.localFile,
  );
}
