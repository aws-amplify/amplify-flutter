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

part of amplify_interface;

class StorageCategory extends AmplifyCategory<StoragePluginInterface> {
  @override
  @nonVirtual
  Category get category => Category.storage;

  Future<UploadFileResult> uploadFile(
      {required File local,
      required String key,
      void Function(TransferProgress)? onProgress,
      UploadFileOptions? options}) {
    final UploadFileRequest request =
        UploadFileRequest(local: local, key: key, options: options);
    return plugins.length == 1
        ? plugins[0].uploadFile(request: request, onProgress: onProgress)
        : throw _pluginNotAddedException('Storage');
  }

  Future<GetUrlResult> getUrl({required String key, GetUrlOptions? options}) {
    final GetUrlRequest request = GetUrlRequest(key: key, options: options);
    return plugins.length == 1
        ? plugins[0].getUrl(request: request)
        : throw _pluginNotAddedException('Storage');
  }

  Future<RemoveResult> remove({required String key, RemoveOptions? options}) {
    final RemoveRequest request = RemoveRequest(key: key, options: options);
    return plugins.length == 1
        ? plugins[0].remove(request: request)
        : throw _pluginNotAddedException('Storage');
  }

  Future<ListResult> list({String? path, ListOptions? options}) {
    final ListRequest request = ListRequest(path: path, options: options);
    return plugins.length == 1
        ? plugins[0].list(request: request)
        : throw _pluginNotAddedException('Storage');
  }

  Future<DownloadFileResult> downloadFile(
      {required String key,
      required File local,
      void Function(TransferProgress)? onProgress,
      DownloadFileOptions? options}) {
    final DownloadFileRequest request =
        DownloadFileRequest(key: key, local: local, options: options);
    return plugins.length == 1
        ? plugins[0].downloadFile(request: request, onProgress: onProgress)
        : throw _pluginNotAddedException('Storage');
  }
}
