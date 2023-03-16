// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

library amplify_storage_plugin_interface;

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// Defines Amplify Storage plugin interface.
///
/// {@macro amplify_core.amplify_storage_category}
abstract class StoragePluginInterface<
        PluginStorageListOperation extends StorageListOperation,
        PluginStorageGetPropertiesOperation extends StorageGetPropertiesOperation,
        PluginStorageGetUrlOperation extends StorageGetUrlOperation,
        PluginStorageUploadDataOperation extends StorageUploadDataOperation,
        PluginStorageUploadFileOperation extends StorageUploadFileOperation,
        PluginStorageDownloadDataOperation extends StorageDownloadDataOperation,
        PluginStorageDownloadFileOperation extends StorageDownloadFileOperation,
        PluginStorageCopyOperation extends StorageCopyOperation,
        PluginStorageMoveOperation extends StorageMoveOperation,
        PluginStorageRemoveOperation extends StorageRemoveOperation,
        PluginStorageRemoveManyOperation extends StorageRemoveManyOperation,
        PluginStorageItem extends StorageItem,
        PluginTransferProgress extends StorageTransferProgress>
    extends AmplifyPluginInterface {
  @override
  @nonVirtual
  Category get category => Category.storage;

  /// {@macro amplify_core.amplify_storage_category.list}
  PluginStorageListOperation list({
    String? path,
    StorageListOptions? options,
  }) {
    throw UnimplementedError('list() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.get_properties}
  PluginStorageGetPropertiesOperation getProperties({
    required String key,
    StorageGetPropertiesOptions? options,
  }) {
    throw UnimplementedError('getProperties() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.get_url}
  PluginStorageGetUrlOperation getUrl({
    required String key,
    StorageGetUrlOptions? options,
  }) {
    throw UnimplementedError('getUrl() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.download_data}
  PluginStorageDownloadDataOperation downloadData({
    required String key,
    void Function(PluginTransferProgress)? onProgress,
    StorageDownloadDataOptions? options,
  }) {
    throw UnimplementedError('downloadData() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.download_file}
  PluginStorageDownloadFileOperation downloadFile({
    required String key,
    required AWSFile localFile,
    void Function(PluginTransferProgress)? onProgress,
    StorageDownloadFileOptions? options,
  }) {
    throw UnimplementedError('downloadFile() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.upload_data}
  PluginStorageUploadDataOperation uploadData({
    required String key,
    required StorageDataPayload data,
    void Function(PluginTransferProgress)? onProgress,
    StorageUploadDataOptions? options,
  }) {
    throw UnimplementedError('uploadData() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.upload_file}
  PluginStorageUploadFileOperation uploadFile({
    required String key,
    required AWSFile localFile,
    void Function(PluginTransferProgress)? onProgress,
    StorageUploadFileOptions? options,
  }) {
    throw UnimplementedError('uploadFile() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.copy}
  PluginStorageCopyOperation copy({
    required StorageItemWithAccessLevel<PluginStorageItem> source,
    required StorageItemWithAccessLevel<PluginStorageItem> destination,
    StorageCopyOptions? options,
  }) {
    throw UnimplementedError('copy() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.move}
  PluginStorageMoveOperation move({
    required StorageItemWithAccessLevel<PluginStorageItem> source,
    required StorageItemWithAccessLevel<PluginStorageItem> destination,
    StorageMoveOptions? options,
  }) {
    throw UnimplementedError('move() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.remove}
  PluginStorageRemoveOperation remove({
    required String key,
    StorageRemoveOptions? options,
  }) {
    throw UnimplementedError('remove() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.remove_many}
  PluginStorageRemoveManyOperation removeMany({
    required List<String> keys,
    StorageRemoveManyOptions? options,
  }) {
    throw UnimplementedError('removeMany() has not been implemented.');
  }
}
