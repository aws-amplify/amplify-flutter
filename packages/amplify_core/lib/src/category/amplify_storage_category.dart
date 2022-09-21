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

/// {@template amplify_core.amplify_storage_category}
/// The Amplify Storage category provides an interface for interacting with
/// a storage plugin.
///
/// It comes with default, built-in support for Amazon S3 service
/// leveraging Amplify Auth Category for authorization.
///
/// The Amplify CLI helps you to create and configure the storage category
/// and auth category.
/// {@endtemplate}
class StorageCategory<
    PluginStorageListOperation extends StorageListOperation,
    PluginStorageListOptions extends StorageListOptions,
    PluginStorageGetPropertiesOperation extends StorageGetPropertiesOperation,
    PluginStorageGetPropertiesOptions extends StorageGetPropertiesOptions,
    PluginStorageGetUrlOperation extends StorageGetUrlOperation,
    PluginStorageGetUrlOptions extends StorageGetUrlOptions,
    PluginStorageUploadDataOperation extends StorageUploadDataOperation,
    PluginStorageUploadDataOptions extends StorageUploadDataOptions,
    PluginStorageCopyOperation extends StorageCopyOperation,
    PluginStorageMoveOperation extends StorageMoveOperation,
    PluginStorageRemoveOperation extends StorageRemoveOperation,
    PluginStorageRemoveOptions extends StorageRemoveOptions,
    PluginStorageRemoveManyOperation extends StorageRemoveManyOperation,
    PluginStorageRemoveManyOptions extends StorageRemoveManyOptions,
    PluginStorageItem extends StorageItem,
    Plugin extends StoragePluginInterface<
        PluginStorageListOperation,
        PluginStorageListOptions,
        PluginStorageGetPropertiesOperation,
        PluginStorageGetPropertiesOptions,
        PluginStorageGetUrlOperation,
        PluginStorageGetUrlOptions,
        PluginStorageUploadDataOperation,
        PluginStorageUploadDataOptions,
        PluginStorageCopyOperation,
        PluginStorageMoveOperation,
        PluginStorageRemoveOperation,
        PluginStorageRemoveOptions,
        PluginStorageRemoveManyOperation,
        PluginStorageRemoveManyOptions,
        PluginStorageItem>> extends AmplifyCategory<Plugin> {
  StorageCategory([Plugin? plugin]) : _pluginOverride = plugin;

  final Plugin? _pluginOverride;
  Plugin get _plugin => _pluginOverride ?? defaultPlugin;

  @override
  @nonVirtual
  Category get category => Category.storage;

  StorageCategory<
      GetPluginStorageListOperation,
      GetPluginStorageListOptions,
      GetPluginStorageGetPropertiesOperation,
      GetPluginStorageGetPropertiesOptions,
      GetPluginStorageGetUrlOperation,
      GetPluginStorageGetUrlOptions,
      GetPluginStorageUploadDataOperation,
      GetPluginStorageUploadDataOptions,
      GetPluginStorageCopyOperation,
      GetPluginStorageMoveOperation,
      GetPluginStorageRemoveOperation,
      GetPluginStorageRemoveOptions,
      GetPluginStorageRemoveManyOperation,
      GetPluginStorageRemoveManyOptions,
      GetPluginStorageItem,
      P> getPlugin<
          GetPluginStorageListOperation extends StorageListOperation,
          GetPluginStorageListOptions extends StorageListOptions,
          GetPluginStorageGetPropertiesOperation extends StorageGetPropertiesOperation,
          GetPluginStorageGetPropertiesOptions extends StorageGetPropertiesOptions,
          GetPluginStorageGetUrlOperation extends StorageGetUrlOperation,
          GetPluginStorageGetUrlOptions extends StorageGetUrlOptions,
          GetPluginStorageUploadDataOperation extends StorageUploadDataOperation,
          GetPluginStorageUploadDataOptions extends StorageUploadDataOptions,
          GetPluginStorageCopyOperation extends StorageCopyOperation,
          GetPluginStorageMoveOperation extends StorageMoveOperation,
          GetPluginStorageRemoveOperation extends StorageRemoveOperation,
          GetPluginStorageRemoveOptions extends StorageRemoveOptions,
          GetPluginStorageRemoveManyOperation extends StorageRemoveManyOperation,
          GetPluginStorageRemoveManyOptions extends StorageRemoveManyOptions,
          GetPluginStorageItem extends StorageItem,
          P extends StoragePluginInterface<
              GetPluginStorageListOperation,
              GetPluginStorageListOptions,
              GetPluginStorageGetPropertiesOperation,
              GetPluginStorageGetPropertiesOptions,
              GetPluginStorageGetUrlOperation,
              GetPluginStorageGetUrlOptions,
              GetPluginStorageUploadDataOperation,
              GetPluginStorageUploadDataOptions,
              GetPluginStorageCopyOperation,
              GetPluginStorageMoveOperation,
              GetPluginStorageRemoveOperation,
              GetPluginStorageRemoveOptions,
              GetPluginStorageRemoveManyOperation,
              GetPluginStorageRemoveManyOptions,
              GetPluginStorageItem>>(
    StoragePluginKey<
            GetPluginStorageListOperation,
            GetPluginStorageListOptions,
            GetPluginStorageGetPropertiesOperation,
            GetPluginStorageGetPropertiesOptions,
            GetPluginStorageGetUrlOperation,
            GetPluginStorageGetUrlOptions,
            GetPluginStorageUploadDataOperation,
            GetPluginStorageUploadDataOptions,
            GetPluginStorageCopyOperation,
            GetPluginStorageMoveOperation,
            GetPluginStorageRemoveOperation,
            GetPluginStorageRemoveOptions,
            GetPluginStorageRemoveManyOperation,
            GetPluginStorageRemoveManyOptions,
            GetPluginStorageItem,
            P>
        pluginKey,
  ) =>
      StorageCategory(
        plugins.singleWhere(
          (p) => p is P,
          orElse: () => throw AmplifyException(
            'No plugin registered for $pluginKey',
          ),
        ) as P,
      );

  /// {@template amplify_core.amplify_storage_category.list}
  /// Lists objects under specified `path` with [StorageListOptions]. Returned
  /// result is paginated.
  /// {@endtemplate}
  PluginStorageListOperation list({
    String? path,
    PluginStorageListOptions? options,
  }) {
    final request = StorageListRequest(
      path: path,
      options: options,
    );
    return _plugin.list(request: request);
  }

  /// {@template amplify_core.amplify_storage_category.get_properties}
  /// Retrieves properties of the object specified by `key` with
  /// [StorageGetPropertiesOptions]. The result may include the metadata
  /// (if any) specified when the object was uploaded.
  /// {@endtemplate}
  PluginStorageGetPropertiesOperation getProperties({
    required String key,
    PluginStorageGetPropertiesOptions? options,
  }) {
    final request = StorageGetPropertiesRequest(
      key: key,
      options: options,
    );
    return _plugin.getProperties(request: request);
  }

  /// {@template amplify_core.amplify_storage_category.get_url}
  /// Generates a downloadable url for the object specified by `key` with
  /// [StorageGetUrlOptions].
  ///
  /// The url is presigned by the aws_signature_v4, and is enforced with scheme
  /// `https`.
  /// {@endtemplate}
  PluginStorageGetUrlOperation getUrl({
    required String key,
    PluginStorageGetUrlOptions? options,
  }) {
    final request = StorageGetUrlRequest(
      key: key,
      options: options,
    );
    return _plugin.getUrl(request: request);
  }

  /// {@template amplify_core.amplify_storage_category.upload_data}
  /// Uploads data from a string `data` with [StorageUploadDataOptions].
  ///
  /// The string to be uploaded can be a plain string (uploaded as text/plain)
  /// or a data url.
  /// {@endtemplate}
  PluginStorageUploadDataOperation uploadData({
    required String data,
    required String key,
    PluginStorageUploadDataOptions? options,
  }) {
    final request = StorageUploadDataRequest(
      data: data,
      key: key,
      options: options,
    );
    return _plugin.uploadData(request: request);
  }

  /// {@template amplify_core.amplify_storage_category.copy}
  /// Makes a copy of the `source` to `destination` with [StorageCopyOptions].
  /// {@endtemplate}
  PluginStorageCopyOperation copy({
    required StorageItemWithAccessLevel<PluginStorageItem> source,
    required StorageItemWithAccessLevel<PluginStorageItem> destination,
  }) {
    final request = StorageCopyRequest(
      source: source,
      destination: destination,
    );
    return _plugin.copy(request: request);
  }

  /// {@template amplify_core.amplify_storage_category.move}
  /// Moves an object specified by `sourceKey` to a new object specified by
  /// `destinationKey` with [StorageMoveOptions].
  ///
  /// This API performs two consecutive S3 service calls:
  ///   1. copy the source object to destination objection
  ///   2. delete the source object
  /// {@endtemplate}
  PluginStorageMoveOperation move({
    required StorageItemWithAccessLevel<PluginStorageItem> source,
    required StorageItemWithAccessLevel<PluginStorageItem> destination,
  }) {
    final request = StorageMoveRequest(
      source: source,
      destination: destination,
    );
    return _plugin.move(request: request);
  }

  /// {@template amplify_core.amplify_storage_category.remove}
  /// Removes an object specified by `key` with [StorageRemoveOptions].
  /// {@endtemplate}
  PluginStorageRemoveOperation remove({
    required String key,
    PluginStorageRemoveOptions? options,
  }) {
    final request = StorageRemoveRequest(
      key: key,
      options: options,
    );
    return _plugin.remove(request: request);
  }

  /// {@template amplify_core.amplify_storage_category.remove_many}
  /// Removes multiple objects specified by a list of `keys` with
  /// [StorageRemoveManyOptions].
  /// {@endtemplate}
  PluginStorageRemoveManyOperation removeMany({
    required List<String> keys,
    PluginStorageRemoveManyOptions? options,
  }) {
    final request = StorageRemoveManyRequest(
      keys: keys,
      options: options,
    );
    return _plugin.removeMany(request: request);
  }

  // TODO(HuiSF): add interface for remaining APIs
  //  uploadFile, downloadFile, downloadData
}
