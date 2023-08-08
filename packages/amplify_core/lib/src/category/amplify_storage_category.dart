// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
class StorageCategory extends AmplifyCategory<StoragePluginInterface> {
  @override
  @nonVirtual
  Category get category => Category.storage;

  @override
  @nonVirtual
  Set<Category> get categoryDependencies => const {Category.auth};

  P getPlugin<P extends StoragePluginInterface>(
    StoragePluginKey<P> pluginKey,
  ) =>
      plugins.singleWhere(
        (p) => p is P,
        orElse: () => throw PluginError(
          'No plugin registered for $pluginKey',
        ),
      ) as P;

  /// {@template amplify_core.amplify_storage_category.list}
  /// Lists objects under the [path] with optional [StorageListOptions] and
  /// returns a [StorageListOperation].
  /// {@endtemplate}
  StorageListOperation list({
    String? path,
    StorageListOptions? options,
  }) {
    return identifyCall(
      StorageCategoryMethod.list,
      () => defaultPlugin.list(
        path: path,
        options: options,
      ),
    );
  }

  /// {@template amplify_core.amplify_storage_category.get_properties}
  /// Retrieves properties of the object specified by [key] with optional
  /// [StorageGetPropertiesOptions]. And returns a
  /// [StorageGetPropertiesOperation].
  ///
  /// The result may include the metadata (if any) specified when the object
  /// was uploaded.
  /// {@endtemplate}
  StorageGetPropertiesOperation getProperties({
    required String key,
    StorageGetPropertiesOptions? options,
  }) {
    return identifyCall(
      StorageCategoryMethod.getProperties,
      () => defaultPlugin.getProperties(
        key: key,
        options: options,
      ),
    );
  }

  /// {@template amplify_core.amplify_storage_category.get_url}
  /// Generates a downloadable url for the object specified by [key] with
  /// [StorageGetUrlOptions], and returns a [StorageGetUrlOperation].
  ///
  /// The url is presigned by the aws_signature_v4, and is enforced with scheme
  /// `https`.
  /// {@endtemplate}
  StorageGetUrlOperation getUrl({
    required String key,
    StorageGetUrlOptions? options,
  }) {
    return identifyCall(
      StorageCategoryMethod.getUrl,
      () => defaultPlugin.getUrl(
        key: key,
        options: options,
      ),
    );
  }

  /// {@template amplify_core.amplify_storage_category.download_data}
  /// Downloads bytes of object specified by [key] into memory with optional
  /// [onProgress] and [StorageDownloadDataOptions], and returns a
  /// [StorageDownloadDataOperation].
  ///
  /// Ensure you are managing the data in memory properly to avoid unexpected
  /// memory leaks.
  /// {@endtemplate}
  StorageDownloadDataOperation downloadData({
    required String key,
    void Function(StorageTransferProgress)? onProgress,
    StorageDownloadDataOptions? options,
  }) {
    return identifyCall(
      StorageCategoryMethod.downloadData,
      () => defaultPlugin.downloadData(
        key: key,
        onProgress: onProgress,
        options: options,
      ),
    );
  }

  /// {@template amplify_core.amplify_storage_category.download_file}
  /// Downloads the object specified by [key] to [localFile] with optional
  /// [onProgress] and [StorageDownloadFileOptions], and returns a
  /// [StorageDownloadFileOperation].
  /// {@endtemplate}
  StorageDownloadFileOperation downloadFile({
    required String key,
    required AWSFile localFile,
    void Function(StorageTransferProgress)? onProgress,
    StorageDownloadFileOptions? options,
  }) {
    return identifyCall(
      StorageCategoryMethod.downloadFile,
      () => defaultPlugin.downloadFile(
        key: key,
        localFile: localFile,
        onProgress: onProgress,
        options: options,
      ),
    );
  }

  /// {@template amplify_core.amplify_storage_category.upload_data}
  /// Uploads [data] as a [StorageDataPayload] with optional
  /// [onProgress] and [StorageUploadDataOptions] to object specified by [key],
  /// and returns a [StorageUploadDataOperation].
  ///
  /// See [StorageDataPayload] for supported data formats.
  /// {@endtemplate}
  StorageUploadDataOperation uploadData({
    required StorageDataPayload data,
    required String key,
    void Function(StorageTransferProgress)? onProgress,
    StorageUploadDataOptions? options,
  }) {
    return identifyCall(
      StorageCategoryMethod.uploadData,
      () => defaultPlugin.uploadData(
        key: key,
        data: data,
        onProgress: onProgress,
        options: options,
      ),
    );
  }

  /// {@template amplify_core.amplify_storage_category.upload_file}
  /// Uploads data from [localFile] with optional [onProgress] and
  /// [StorageUploadFileOptions] to object specified by [key], and returns a
  /// [StorageUploadFileOperation].
  ///
  /// [AWSFile] provides various adapters to read file content from file
  /// abstractions, such as `XFile`, `PlatformFile`, `io.File` or `html.File`.
  /// {@endtemplate}
  StorageUploadFileOperation uploadFile({
    required AWSFile localFile,
    required String key,
    void Function(StorageTransferProgress)? onProgress,
    StorageUploadFileOptions? options,
  }) {
    return identifyCall(
      StorageCategoryMethod.uploadFile,
      () => defaultPlugin.uploadFile(
        key: key,
        localFile: localFile,
        onProgress: onProgress,
        options: options,
      ),
    );
  }

  /// {@template amplify_core.amplify_storage_category.copy}
  /// Makes a copy of the [source] to [destination] with optional
  /// [StorageCopyOptions], and returns a [StorageCopyOperation].
  /// {@endtemplate}
  ///
  /// {@template amplify_core.amplify_storage_category.copy_source}
  /// The `source` should be readable to the API call originator following
  /// corresponding [StorageAccessLevel].
  /// {@endtemplate}
  StorageCopyOperation copy({
    required StorageItemWithAccessLevel<StorageItem> source,
    required StorageItemWithAccessLevel<StorageItem> destination,
    StorageCopyOptions? options,
  }) {
    return identifyCall(
      StorageCategoryMethod.copy,
      () => defaultPlugin.copy(
        source: source,
        destination: destination,
        options: options,
      ),
    );
  }

  /// {@template amplify_core.amplify_storage_category.move}
  /// Moves [source] to [destination] with optional [StorageMoveOptions],
  /// and returns a [StorageMoveOperation].
  ///
  /// This API performs two consecutive S3 service calls:
  ///   1. copy the source object to destination objection
  ///   2. delete the source object
  ///
  /// {@macro amplify_core.amplify_storage_category.copy_source}
  /// {@endtemplate}
  StorageMoveOperation move({
    required StorageItemWithAccessLevel<StorageItem> source,
    required StorageItemWithAccessLevel<StorageItem> destination,
    StorageMoveOptions? options,
  }) {
    return identifyCall(
      StorageCategoryMethod.move,
      () => defaultPlugin.move(
        source: source,
        destination: destination,
        options: options,
      ),
    );
  }

  /// {@template amplify_core.amplify_storage_category.remove}
  /// Removes an object specified by [key] with optional [StorageRemoveOptions],
  /// and returns a [StorageRemoveOperation].
  /// {@endtemplate}
  StorageRemoveOperation remove({
    required String key,
    StorageRemoveOptions? options,
  }) {
    return identifyCall(
      StorageCategoryMethod.remove,
      () => defaultPlugin.remove(key: key, options: options),
    );
  }

  /// {@template amplify_core.amplify_storage_category.remove_many}
  /// Removes multiple objects specified by [keys] with optional
  /// [StorageRemoveManyOptions], and returns a [StorageRemoveManyOperation].
  /// {@endtemplate}
  StorageRemoveManyOperation removeMany({
    required List<String> keys,
    StorageRemoveManyOptions? options,
  }) {
    return identifyCall(
      StorageCategoryMethod.removeMany,
      () => defaultPlugin.removeMany(
        keys: keys,
        options: options,
      ),
    );
  }
}
