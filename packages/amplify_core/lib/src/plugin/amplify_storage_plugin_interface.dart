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
        PluginStorageListOptions extends StorageListOptions,
        PluginStorageGetPropertiesOperation extends StorageGetPropertiesOperation,
        PluginStorageGetPropertiesOptions extends StorageGetPropertiesOptions,
        PluginStorageGetUrlOperation extends StorageGetUrlOperation,
        PluginStorageGetUrlOptions extends StorageGetUrlOptions,
        PluginStorageUploadDataOperation extends StorageUploadDataOperation,
        PluginStorageUploadDataOptions extends StorageUploadDataOptions,
        PluginStorageUploadFileOperation extends StorageUploadFileOperation,
        PluginStorageUploadFileOptions extends StorageUploadFileOptions,
        PluginStorageDownloadDataOperation extends StorageDownloadDataOperation,
        PluginStorageDownloadDataOptions extends StorageDownloadDataOptions,
        PluginStorageDownloadFileOperation extends StorageDownloadFileOperation,
        PluginStorageDownloadFileOptions extends StorageDownloadFileOptions,
        PluginStorageCopyOperation extends StorageCopyOperation,
        PluginStorageCopyOptions extends StorageCopyOptions,
        PluginStorageMoveOperation extends StorageMoveOperation,
        PluginStorageMoveOptions extends StorageMoveOptions,
        PluginStorageRemoveOperation extends StorageRemoveOperation,
        PluginStorageRemoveOptions extends StorageRemoveOptions,
        PluginStorageRemoveManyOperation extends StorageRemoveManyOperation,
        PluginStorageRemoveManyOptions extends StorageRemoveManyOptions,
        PluginStorageItem extends StorageItem,
        PluginTransferProgress extends StorageTransferProgress>
    extends AmplifyPluginInterface {
  @override
  @nonVirtual
  Category get category => Category.storage;

  /// {@macro amplify_core.amplify_storage_category.list}
  PluginStorageListOperation list({
    required StorageListRequest<PluginStorageListOptions> request,
  }) {
    throw UnimplementedError('list() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.get_properties}
  PluginStorageGetPropertiesOperation getProperties({
    required StorageGetPropertiesRequest<StorageGetPropertiesOptions> request,
  }) {
    throw UnimplementedError('getProperties() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.get_url}
  PluginStorageGetUrlOperation getUrl({
    required StorageGetUrlRequest<PluginStorageGetUrlOptions> request,
  }) {
    throw UnimplementedError('getUrl() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.download_data}
  PluginStorageDownloadDataOperation downloadData({
    required StorageDownloadDataRequest<PluginStorageDownloadDataOptions>
        request,
    void Function(PluginTransferProgress)? onProgress,
  }) {
    throw UnimplementedError('downloadData() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.download_file}
  PluginStorageDownloadFileOperation downloadFile({
    required StorageDownloadFileRequest<PluginStorageDownloadFileOptions>
        request,
    void Function(PluginTransferProgress)? onProgress,
  }) {
    throw UnimplementedError('downloadFile() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.upload_data}
  PluginStorageUploadDataOperation uploadData({
    required StorageUploadDataRequest<PluginStorageUploadDataOptions> request,
    void Function(PluginTransferProgress)? onProgress,
  }) {
    throw UnimplementedError('uploadData() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.upload_file}
  PluginStorageUploadFileOperation uploadFile({
    required StorageUploadFileRequest<PluginStorageUploadFileOptions> request,
    void Function(PluginTransferProgress)? onProgress,
  }) {
    throw UnimplementedError('uploadFile() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.copy}
  PluginStorageCopyOperation copy({
    required StorageCopyRequest<PluginStorageItem, PluginStorageCopyOptions>
        request,
  }) {
    throw UnimplementedError('copy() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.move}
  PluginStorageMoveOperation move({
    required StorageMoveRequest<PluginStorageItem, PluginStorageMoveOptions>
        request,
  }) {
    throw UnimplementedError('move() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.remove}
  PluginStorageRemoveOperation remove({
    required StorageRemoveRequest<PluginStorageRemoveOptions> request,
  }) {
    throw UnimplementedError('remove() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.remove_many}
  PluginStorageRemoveManyOperation removeMany({
    required StorageRemoveManyRequest<PluginStorageRemoveManyOptions> request,
  }) {
    throw UnimplementedError('removeMany() has not been implemented.');
  }
}
