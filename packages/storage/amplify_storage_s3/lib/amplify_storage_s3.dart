/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

library amplify_storage_plugin;

import 'package:amplify_core/amplify_core.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import './method_channel_storage_s3.dart';

export './src/types.dart';

class AmplifyStorageS3 extends StoragePluginInterface {
  /// Constructs a AmplifyStoragePlugin.
  AmplifyStorageS3();

  static AmplifyStorageS3 _instance = AmplifyStorageS3MethodChannel();

  @override
  Future<void> addPlugin() async {
    return _instance.addPlugin();
  }

  @override
  Future<UploadFileResult> uploadFile(
      {required UploadFileRequest request,
      void Function(TransferProgress)? onProgress}) {
    return _instance.uploadFile(request: request, onProgress: onProgress);
  }

  @override
  Future<GetUrlResult> getUrl({required GetUrlRequest request}) {
    return _instance.getUrl(request: request);
  }

  @override
  Future<RemoveResult> remove({required RemoveRequest request}) {
    return _instance.remove(request: request);
  }

  @override
  Future<ListResult> list({required ListRequest request}) {
    return _instance.list(request: request);
  }

  @override
  Future<DownloadFileResult> downloadFile(
      {required DownloadFileRequest request,
      void Function(TransferProgress)? onProgress}) {
    return _instance.downloadFile(request: request, onProgress: onProgress);
  }
}
