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
      throw ("Failed to add the Storage plugin");
    }
  }

  Future<UploadFileResult> uploadFile(
      {@required String path,
      @required String key,
      UploadFileOptions options}) {
    final UploadFileRequest request =
        UploadFileRequest(path: path, key: key, options: options);
    return plugins[0].uploadFile(request: request);
  }

  Future<GetUrlResult> getUrl({@required String key, GetUrlOptions options}) {
    final GetUrlRequest request = GetUrlRequest(key: key, options: options);
    return plugins[0].getUrl(request: request);
  }
}
