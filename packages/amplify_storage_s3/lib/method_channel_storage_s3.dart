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

import 'package:amplify_core/types/exception/AmplifyException.dart';
import 'package:amplify_core/types/exception/AmplifyExceptionMessages.dart';
import 'package:amplify_core/types/exception/AmplifyAlreadyConfiguredException.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:amplify_storage_plugin_interface/amplify_storage_plugin_interface.dart';
import 'dart:io';

import 'amplify_storage_s3.dart';

const MethodChannel _channel =
    MethodChannel('com.amazonaws.amplify/storage_s3');

const AmplifyException nullMapFromMethodChannelException = AmplifyException(AmplifyExceptionMessages.nullReturnedFromMethodChannel);

/// An implementation of [AmplifyPlatform] that uses method channels.
class AmplifyStorageS3MethodChannel extends AmplifyStorageS3 {
  @override
  Future<void> addPlugin() async {
    try {
      return await _channel.invokeMethod('addPlugin');
    } on PlatformException catch (e) {
      if (e.code == "AmplifyAlreadyConfiguredException") {
        throw AmplifyAlreadyConfiguredException(
            AmplifyExceptionMessages.alreadyConfiguredDefaultMessage,
            recoverySuggestion:
                AmplifyExceptionMessages.alreadyConfiguredDefaultSuggestion);
      } else {
        throw AmplifyException.fromMap(Map<String, String>.from(e.details));
      }
    }
  }

  @override
  Future<UploadFileResult> uploadFile(
      {required UploadFileRequest request}) async {
    try {
      final Map<String, dynamic>? data =
          (await _channel.invokeMapMethod<String, dynamic>(
        'uploadFile',
        request.serializeAsMap(),
      ));
      if (data == null) throw nullMapFromMethodChannelException;
      UploadFileResult result = _formatUploadFileResult(data);
      return result;
    } on PlatformException catch (e) {
      throw _convertToStorageException(e);
    }
  }

  @override
  Future<GetUrlResult> getUrl({required GetUrlRequest request}) async {
    try {
      final Map<String, dynamic>? data =
          (await _channel.invokeMapMethod<String, dynamic>(
        'getUrl',
        request.serializeAsMap(),
      ));
      if (data == null) throw nullMapFromMethodChannelException;
      GetUrlResult result = _formatGetUrlResult(data);
      return result;
    } on PlatformException catch (e) {
      throw _convertToStorageException(e);
    }
  }

  @override
  Future<RemoveResult> remove({required RemoveRequest request}) async {
    try {
      final Map<String, dynamic>? data =
          (await _channel.invokeMapMethod<String, dynamic>(
        'remove',
        request.serializeAsMap(),
      ));
      if (data == null) throw nullMapFromMethodChannelException;
      RemoveResult result = _formatRemoveResult(data);
      return result;
    } on PlatformException catch (e) {
      throw _convertToStorageException(e);
    }
  }

  @override
  Future<ListResult> list({required ListRequest request}) async {
    try {
      final Map<String, dynamic>? data =
          (await _channel.invokeMapMethod<String, dynamic>(
        'list',
        request.serializeAsMap(),
      ));
      if (data == null) throw nullMapFromMethodChannelException;
      ListResult result = _formatListResult(data);
      return result;
    } on PlatformException catch (e) {
      throw _convertToStorageException(e);
    }
  }

  @override
  Future<DownloadFileResult> downloadFile(
      {required DownloadFileRequest request}) async {
    try {
      final Map<String, dynamic>? data =
          (await _channel.invokeMapMethod<String, dynamic>(
        'downloadFile',
        request.serializeAsMap(),
      ));
      if (data == null) throw nullMapFromMethodChannelException;
      DownloadFileResult result = _formatDownloadFileResult(data);
      return result;
    } on PlatformException catch (e) {
      throw _convertToStorageException(e);
    }
  }

  UploadFileResult _formatUploadFileResult(Map<String, dynamic> result) {
    if (result['key'] != null) {
      return UploadFileResult(key: result["key"]);
    } else {
      throw _prepareExceptionForMalformedResult(
          methodName: 'UploadFile', fieldName: 'key');
    }
  }

  GetUrlResult _formatGetUrlResult(Map<String, dynamic> result) {
    if (result['url'] != null) {
      return GetUrlResult(url: result['url']);
    } else {
      throw _prepareExceptionForMalformedResult(
          methodName: 'GetUrl', fieldName: 'url');
    }
  }

  RemoveResult _formatRemoveResult(Map<String, dynamic> result) {
    if (result['key'] != null) {
      return RemoveResult(key: result['key']);
    } else {
      throw _prepareExceptionForMalformedResult(
          methodName: 'Remove', fieldName: 'key');
    }
  }

  ListResult _formatListResult(Map<String, dynamic> result) {
    List<StorageItem> items = [];
    if (result['items'] == null) {
      throw _prepareExceptionForMalformedResult(
          methodName: 'List', fieldName: 'items');
    }
    var mapItems = result['items'];
    for (Map item in mapItems) {
      if (item["key"] != null) {
        StorageItem storageItem = StorageItem(
            key: item["key"],
            eTag: item["eTag"],
            lastModified: item["lastModified"] != null
                ? DateTime.parse(item["lastModified"])
                : null,
            size: item["size"]);
        items.add(storageItem);
      } else {
        throw _prepareExceptionForMalformedResult(
            methodName: 'List', fieldName: 'item.key');
      }
    }
    return ListResult(items: items);
  }

  DownloadFileResult _formatDownloadFileResult(Map<String, dynamic> result) {
    if (result['path'] != null) {
      return DownloadFileResult(file: File(result['path']));
    } else {
      throw _prepareExceptionForMalformedResult(
          methodName: 'DownloadFile', fieldName: 'path');
    }
  }

  StorageException _prepareExceptionForMalformedResult(
      {required String methodName, required String fieldName}) {
    return StorageException('Error formatting platform channel result',
        recoverySuggestion:
            'Operation $methodName failed: $fieldName cannot be null.');
  }

  StorageException _convertToStorageException(PlatformException e) {
    return StorageException.fromMap(Map<String, String>.from(e.details));
  }
}
