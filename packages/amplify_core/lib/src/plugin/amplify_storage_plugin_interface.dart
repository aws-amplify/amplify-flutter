// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

library amplify_storage_plugin_interface;

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// Defines Amplify Storage plugin interface.
///
/// {@macro amplify_core.amplify_storage_category}
abstract class StoragePluginInterface extends AmplifyPluginInterface {
  @override
  @nonVirtual
  Category get category => Category.storage;

  /// {@macro amplify_core.amplify_storage_category.list}
  StorageListOperation list({
    required StoragePath path,
    StorageListOptions? options,
  }) {
    throw UnimplementedError('list() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.get_properties}
  StorageGetPropertiesOperation getProperties({
    required StoragePath path,
    StorageGetPropertiesOptions? options,
  }) {
    throw UnimplementedError('getProperties() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.get_url}
  StorageGetUrlOperation getUrl({
    required StoragePath path,
    StorageGetUrlOptions? options,
  }) {
    throw UnimplementedError('getUrl() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.download_data}
  StorageDownloadDataOperation downloadData({
    required StoragePath path,
    void Function(StorageTransferProgress)? onProgress,
    StorageDownloadDataOptions? options,
  }) {
    throw UnimplementedError('downloadData() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.download_file}
  StorageDownloadFileOperation downloadFile({
    required StoragePath path,
    required AWSFile localFile,
    void Function(StorageTransferProgress)? onProgress,
    StorageDownloadFileOptions? options,
  }) {
    throw UnimplementedError('downloadFile() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.upload_data}
  StorageUploadDataOperation uploadData({
    required StoragePath path,
    required StorageDataPayload data,
    void Function(StorageTransferProgress)? onProgress,
    StorageUploadDataOptions? options,
  }) {
    throw UnimplementedError('uploadData() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.upload_file}
  StorageUploadFileOperation uploadFile({
    required StoragePath path,
    required AWSFile localFile,
    void Function(StorageTransferProgress)? onProgress,
    StorageUploadFileOptions? options,
  }) {
    throw UnimplementedError('uploadFile() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.copy}
  StorageCopyOperation copy({
    required StoragePath source,
    required StoragePath destination,
    StorageCopyOptions? options,
  }) {
    throw UnimplementedError('copy() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.remove}
  StorageRemoveOperation remove({
    required StoragePath path,
    StorageRemoveOptions? options,
  }) {
    throw UnimplementedError('remove() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_storage_category.remove_many}
  StorageRemoveManyOperation removeMany({
    required List<StoragePath> paths,
    StorageRemoveManyOptions? options,
  }) {
    throw UnimplementedError('removeMany() has not been implemented.');
  }
}
