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

import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:amplify_storage_plugin_interface/amplify_storage_plugin_interface.dart';
import 'dart:io';

import 'amplify_storage_s3.dart';

const MethodChannel _channel =
    MethodChannel('com.amazonaws.amplify/storage_s3');

/// An implementation of [AmplifyPlatform] that uses method channels.
class AmplifyStorageS3MethodChannel extends AmplifyStorageS3 {
  @override
  Future<UploadFileResult> uploadFile(
      {@required UploadFileRequest request}) async {
    try {
      final data = await _channel.invokeMapMethod<String, dynamic>(
        'uploadFile',
        request.serializeAsMap(),
      );
      final result = _formatUploadFileResult(data);
      return result;
    } on PlatformException catch (e) {
      //TODO: Convert to StorageError and throw.
      throw (e);
    }
  }

  @override
  Future<GetUrlResult> getUrl({@required GetUrlRequest request}) async {
    try {
      final data = await _channel.invokeMapMethod<String, dynamic>(
        'getUrl',
        request.serializeAsMap(),
      );
      GetUrlResult result = _formatGetUrlResult(data);
      return result;
    } on PlatformException catch (e) {
      //TODO: Convert to StorageError and throw.
      throw (e);
    }
  }

  @override
  Future<RemoveResult> remove({@required RemoveRequest request}) async {
    try {
      final data = await _channel.invokeMapMethod<String, dynamic>(
        'remove',
        request.serializeAsMap(),
      );
      RemoveResult result = _formatRemoveResult(data);
      return result;
    } on PlatformException catch (e) {
      //TODO: Convert to StorageError and throw.
      throw (e);
    }
  }

  @override
  Future<ListResult> list({@required ListRequest request}) async {
    try {
      final data = await _channel.invokeMapMethod<String, dynamic>(
        'list',
        request.serializeAsMap(),
      );
      final result = _formatListResult(data);
      return result;
    } on PlatformException catch (e) {
      //TODO: Convert to StorageError and throw.
      throw (e);
    }
  }

  @override
  Future<DownloadFileResult> downloadFile(
      {@required DownloadFileRequest request}) async {
    try {
      final data = await _channel.invokeMapMethod<String, dynamic>(
        'downloadFile',
        request.serializeAsMap(),
      );
      final result = _formatDownloadFileResult(data);
      return result;
    } on PlatformException catch (e) {
      //TODO: Convert to StorageError and throw.
      throw (e);
    }
  }

  UploadFileResult _formatUploadFileResult(Map<String, dynamic> result) {
    return UploadFileResult(key: result['key']);
  }

  GetUrlResult _formatGetUrlResult(Map<String, dynamic> result) {
    return GetUrlResult(url: result['url']);
  }

  RemoveResult _formatRemoveResult(Map<String, dynamic> result) {
    return RemoveResult(key: result['key']);
  }

  ListResult _formatListResult(Map<String, dynamic> response) {
    var items = [];
    var mapItems = response['items'];
    for (Map item in mapItems) {
      final storageItem = StorageItem(
          key: item['key'],
          eTag: item['eTag'],
          lastModified: DateTime.parse(item['lastModified']),
          size: item['size']);
      items.add(storageItem);
    }
    final result = ListResult(items: items);
    return result;
  }

  DownloadFileResult _formatDownloadFileResult(Map<String, dynamic> result) {
    return DownloadFileResult(file: File(result['path']));
  }
}
