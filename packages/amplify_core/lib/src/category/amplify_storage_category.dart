// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of 'amplify_categories.dart';

/// {@template amplify_core.amplify_storage_category}
/// The Amplify Storage category provides an interface for interacting with
/// a storage plugin.
///
/// It comes with default, built-in support for Amazon S3 service
/// leveraging Amplify Auth Category for authorization.
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
    required StoragePath path,
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
  /// Retrieves properties of the object specified by [path] with optional
  /// [StorageGetPropertiesOptions]. And returns a
  /// [StorageGetPropertiesOperation].
  ///
  /// The result may include the metadata (if any) specified when the object
  /// was uploaded.
  /// {@endtemplate}
  StorageGetPropertiesOperation getProperties({
    required StoragePath path,
    StorageGetPropertiesOptions? options,
  }) {
    return identifyCall(
      StorageCategoryMethod.getProperties,
      () => defaultPlugin.getProperties(
        path: path,
        options: options,
      ),
    );
  }

  /// {@template amplify_core.amplify_storage_category.get_url}
  /// Generates a downloadable url for the object specified by [path] with
  /// [StorageGetUrlOptions], and returns a [StorageGetUrlOperation].
  ///
  /// The url is presigned by the aws_signature_v4, and is enforced with scheme
  /// `https`.
  /// {@endtemplate}
  StorageGetUrlOperation getUrl({
    required StoragePath path,
    StorageGetUrlOptions? options,
  }) {
    return identifyCall(
      StorageCategoryMethod.getUrl,
      () => defaultPlugin.getUrl(
        path: path,
        options: options,
      ),
    );
  }

  /// {@template amplify_core.amplify_storage_category.download_data}
  /// Downloads bytes of object specified by [path] into memory with optional
  /// [onProgress] and [StorageDownloadDataOptions], and returns a
  /// [StorageDownloadDataOperation].
  ///
  /// Ensure you are managing the data in memory properly to avoid unexpected
  /// memory leaks.
  /// {@endtemplate}
  StorageDownloadDataOperation downloadData({
    required StoragePath path,
    void Function(StorageTransferProgress)? onProgress,
    StorageDownloadDataOptions? options,
  }) {
    return identifyCall(
      StorageCategoryMethod.downloadData,
      () => defaultPlugin.downloadData(
        path: path,
        onProgress: onProgress,
        options: options,
      ),
    );
  }

  /// {@template amplify_core.amplify_storage_category.download_file}
  /// Downloads the object specified by [path] to [localFile] with optional
  /// [onProgress] and [StorageDownloadFileOptions], and returns a
  /// [StorageDownloadFileOperation].
  /// {@endtemplate}
  StorageDownloadFileOperation downloadFile({
    required StoragePath path,
    required AWSFile localFile,
    void Function(StorageTransferProgress)? onProgress,
    StorageDownloadFileOptions? options,
  }) {
    return identifyCall(
      StorageCategoryMethod.downloadFile,
      () => defaultPlugin.downloadFile(
        path: path,
        localFile: localFile,
        onProgress: onProgress,
        options: options,
      ),
    );
  }

  /// {@template amplify_core.amplify_storage_category.upload_data}
  /// Uploads [data] as a [StorageDataPayload] with optional
  /// [onProgress] and [StorageUploadDataOptions] to object specified by [path],
  /// and returns a [StorageUploadDataOperation].
  ///
  /// See [StorageDataPayload] for supported data formats.
  /// {@endtemplate}
  StorageUploadDataOperation uploadData({
    required StorageDataPayload data,
    required StoragePath path,
    void Function(StorageTransferProgress)? onProgress,
    StorageUploadDataOptions? options,
  }) {
    return identifyCall(
      StorageCategoryMethod.uploadData,
      () => defaultPlugin.uploadData(
        path: path,
        data: data,
        onProgress: onProgress,
        options: options,
      ),
    );
  }

  /// {@template amplify_core.amplify_storage_category.upload_file}
  /// Uploads data from [localFile] with optional [onProgress] and
  /// [StorageUploadFileOptions] to object specified by [path], and returns a
  /// [StorageUploadFileOperation].
  ///
  /// [AWSFile] provides various adapters to read file content from file
  /// abstractions, such as `XFile`, `PlatformFile`, `io.File` or `html.File`.
  /// {@endtemplate}
  StorageUploadFileOperation uploadFile({
    required AWSFile localFile,
    required StoragePath path,
    void Function(StorageTransferProgress)? onProgress,
    StorageUploadFileOptions? options,
  }) {
    return identifyCall(
      StorageCategoryMethod.uploadFile,
      () => defaultPlugin.uploadFile(
        path: path,
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
  /// The `source` should be readable to the API call originator.
  /// {@endtemplate}
  StorageCopyOperation copy({
    required StoragePath source,
    required StoragePath destination,
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

  /// {@template amplify_core.amplify_storage_category.remove}
  /// Removes an object specified by [path] with optional [StorageRemoveOptions],
  /// and returns a [StorageRemoveOperation].
  /// {@endtemplate}
  StorageRemoveOperation remove({
    required StoragePath path,
    StorageRemoveOptions? options,
  }) {
    return identifyCall(
      StorageCategoryMethod.remove,
      () => defaultPlugin.remove(path: path, options: options),
    );
  }

  /// {@template amplify_core.amplify_storage_category.remove_many}
  /// Removes multiple objects specified by [paths] with optional
  /// [StorageRemoveManyOptions], and returns a [StorageRemoveManyOperation].
  /// {@endtemplate}
  StorageRemoveManyOperation removeMany({
    required List<StoragePath> paths,
    StorageRemoveManyOptions? options,
  }) {
    return identifyCall(
      StorageCategoryMethod.removeMany,
      () => defaultPlugin.removeMany(
        paths: paths,
        options: options,
      ),
    );
  }
}

/// {@template amplify_core.amplify_storage_category.subpath_strategy}
/// Configurable options for `Amplify.Storage.list`.
/// {@endtemplate}
class SubpathStrategy with AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.amplify_storage_category.subpath_strategy}
  const SubpathStrategy.include() : this._();

  const SubpathStrategy._({
    this.excludeSubPaths = false,
    this.delimiter = '/',
  });

  /// Constructor for SubpathStrategy for excluding subpaths, option to specify the delimiter
  const SubpathStrategy.exclude({String? delimiter = '/'})
      : this._(
          excludeSubPaths: true,
          delimiter: delimiter ?? '/',
        );

  /// Whether to exclude objects under the sub paths of the path to list.
  final bool excludeSubPaths;

  /// The delimiter to use when evaluating sub paths. If [excludeSubPaths] is
  /// false, this value has no impact on behavior.
  final String delimiter;

  @override
  Map<String, Object?> toJson() {
    return <String, dynamic>{
      'excludeSubPaths': excludeSubPaths,
      'delimiter': delimiter,
    };
  }
}
