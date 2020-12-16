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

part of amplify_core_plugin_interface;

class StorageCategory {
  const StorageCategory();

  static List<StoragePluginInterface> plugins = [];

  /// `Add plugin` method
  bool addPlugin(StoragePluginInterface plugin) {
    //TODO: Allow for multiple plugins to work simultaneously
    if (plugins.length == 0) {
      plugins.add(plugin);
      return true;
    } else {
      throw ("Failed to add Storage plugin. You already registered one.");
    }
  }

  Future<UploadFileResult> uploadFile(
      {@required File local, @required String key, UploadFileOptions options}) {
    final UploadFileRequest request =
        UploadFileRequest(local: local, key: key, options: options);
    return _select((it) => it.uploadFile(request: request));
  }

  Future<GetUrlResult> getUrl({@required String key, GetUrlOptions options}) {
    final GetUrlRequest request = GetUrlRequest(key: key, options: options);
    return _select((it) => it.getUrl(request: request));
  }

  Future<RemoveResult> remove({@required String key, RemoveOptions options}) {
    final RemoveRequest request = RemoveRequest(key: key, options: options);
    return _select((it) => it.remove(request: request));
  }

  Future<ListResult> list({String path, ListOptions options}) {
    final ListRequest request = ListRequest(path: path, options: options);
    return _select((it) => it.list(request: request));
  }

  Future<DownloadFileResult> downloadFile(
      {@required String key,
      @required File local,
      DownloadFileOptions options}) {
    final DownloadFileRequest request =
        DownloadFileRequest(key: key, local: local, options: options);
    return _select((it) => it.downloadFile(request: request));
  }

  Future<R> _select<R>(FutureOr<R> onValue(StoragePluginInterface plugin)) {
    return plugins.length == 1
        ? Future.value(plugins[0]).then(onValue)
        : throw ("Storage plugin not added correctly");
  }
}
