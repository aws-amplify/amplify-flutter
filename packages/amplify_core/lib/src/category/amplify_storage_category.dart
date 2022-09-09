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
class StorageCategory extends AmplifyCategory<StoragePluginInterface> {
  @override
  @nonVirtual
  Category get category => Category.storage;

  /// {@template amplify_core.amplify_storage_category.list}
  /// Lists objects under specified `path` with [StorageListOptions]. Returned
  /// result is paginated.
  /// {@endtemplate}
  StorageListOperation list({
    String? path,
    StorageListOptions? options,
  }) {
    final request = StorageListRequest(
      path: path,
      options: options,
    );
    return defaultPlugin.list(request: request);
  }

  /// {@template amplify_core.amplify_storage_category.get_properties}
  /// Retrieves properties of the object specified by `key` with
  /// [StorageGetPropertiesOptions]. The result may include the metadata
  /// (if any) specified when the object was uploaded.
  /// {@endtemplate}
  StorageGetPropertiesOperation getProperties({
    required String key,
    StorageGetPropertiesOptions? options,
  }) {
    final request = StorageGetPropertiesRequest(
      key: key,
      options: options,
    );
    return defaultPlugin.getProperties(request: request);
  }

  /// {@template amplify_core.amplify_storage_category.get_url}
  /// Generates a downloadable url for the object specified by `key` with
  /// [StorageGetUrlOptions]. The url is presigned by the aws_signature_v4.
  /// {@endtemplate}
  StorageGetUrlOperation getUrl({
    required String key,
    StorageGetUrlOptions? options,
  }) {
    final request = StorageGetUrlRequest(
      key: key,
      options: options,
    );
    return defaultPlugin.getUrl(request: request);
  }

  /// {@template amplify_core.amplify_storage_category.upload_data}
  /// Uploads data from a string `data` with [StorageUploadDataOptions].
  ///
  /// The string to be uploaded can be a plain string (uploaded as text/plain)
  /// or a data url.
  /// {@endtemplate}
  StorageUploadDataOperation uploadData({
    required String data,
    required String key,
    StorageUploadDataOptions? options,
  }) {
    final request = StorageUploadDataRequest(
      data: data,
      key: key,
      options: options,
    );
    return defaultPlugin.uploadData(request: request);
  }

  /// {@template amplify_core.amplify_storage_category.copy}
  /// Makes a copy of the `source` to `destination` with [StorageCopyOptions].
  /// {@endtemplate}
  StorageCopyOperation copy({
    required StorageItemWithAccessLevel source,
    required StorageItemWithAccessLevel destination,
  }) {
    final request = StorageCopyRequest(
      source: source,
      destination: destination,
    );
    return defaultPlugin.copy(request: request);
  }

  /// {@template amplify_core.amplify_storage_category.move}
  /// Moves an object specified by `sourceKey` to a new object specified by
  /// `destinationKey` with [StorageMoveOptions].
  ///
  /// This API performs two consecutive S3 service calls:
  ///   1. copy the source object to destination objection
  ///   2. delete the source object
  /// {@endtemplate}
  StorageMoveOperation move({
    required StorageItemWithAccessLevel source,
    required StorageItemWithAccessLevel destination,
  }) {
    final request = StorageMoveRequest(
      source: source,
      destination: destination,
    );
    return defaultPlugin.move(request: request);
  }

  /// {@template amplify_core.amplify_storage_category.remove}
  /// Removes an object specified by `key` with [StorageRemoveOptions].
  /// {@endtemplate}
  StorageRemoveOperation remove({
    required String key,
    StorageRemoveOptions? options,
  }) {
    final request = StorageRemoveRequest(
      key: key,
      options: options,
    );
    return defaultPlugin.remove(request: request);
  }

  /// {@template amplify_core.amplify_storage_category.remove_many}
  /// Removes multiple objects specified by a list of `keys` with
  /// [StorageRemoveManyOptions].
  /// {@endtemplate}
  StorageRemoveManyOperation removeMany({
    required List<String> keys,
    StorageRemoveManyOptions? options,
  }) {
    final request = StorageRemoveManyRequest(
      keys: keys,
      options: options,
    );
    return defaultPlugin.removeMany(request: request);
  }

  // TODO(HuiSF): add interface for remaining APIs
  //  uploadFile, downloadFile, downloadData
}
