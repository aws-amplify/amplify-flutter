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

library amplify_storage_plugin_interface;

import 'dart:async';
import 'package:amplify_core/types/index.dart';

import 'src/types.dart';
export 'src/types.dart';

abstract class StoragePluginInterface extends AmplifyPluginInterface {
  StoragePluginInterface({required Object token}) : super(token: token);

  Future<void> addPlugin() async {
    throw UnimplementedError('addPlugin() has not been implemented.');
  }

  Future<UploadFileResult> uploadFile({required UploadFileRequest request}) {
    throw UnimplementedError('uploadFile() has not been implemented.');
  }

  Future<GetUrlResult> getUrl({required GetUrlRequest request}) {
    throw UnimplementedError('getUrl() has not been implemented.');
  }

  Future<RemoveResult> remove({required RemoveRequest request}) {
    throw UnimplementedError('remove() has not been implemented.');
  }

  Future<ListResult> list({required ListRequest request}) {
    throw UnimplementedError('list() has not been implemented.');
  }

  Future<DownloadFileResult> downloadFile(
      {required DownloadFileRequest request}) {
    throw UnimplementedError('downloadFile() has not been implemented.');
  }
}
