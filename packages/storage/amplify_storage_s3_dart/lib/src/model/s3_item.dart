// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart' as s3;
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';
import 'package:meta/meta.dart';

/// {@template storage.amplify_storage_s3.storage_s3_item}
/// An object in a S3 bucket.
/// {@endtemplate}
class S3Item extends StorageItem {
  /// {@macro storage.amplify_storage_s3.storage_s3_item}
  S3Item({
    required super.key,
    super.size,
    super.lastModified,
    super.eTag,
    Map<String, String> metadata = const <String, String>{},
    this.versionId,
    this.contentType,
  }) : super(metadata: decodeMetadata(metadata));

  /// Creates [S3Item] from [StorageItem].
  factory S3Item.from(StorageItem storageItem) {
    return storageItem is S3Item
        ? storageItem
        : S3Item(
            key: storageItem.key,
            size: storageItem.size,
            lastModified: storageItem.lastModified,
            eTag: storageItem.eTag,
            metadata: decodeMetadata(storageItem.metadata),
          );
  }

  /// Creates a [S3Item] from [s3.S3Object] provided by S3 Client.
  @internal
  factory S3Item.fromS3Object(
    s3.S3Object object, {
    required String prefixToDrop,
  }) {
    final key = object.key;

    // Sanity check, key property should never be null in a S3Object returned
    // from service.
    if (key == null) {
      throw const UnknownException(
        '`key` property is null in S3Object.',
        recoverySuggestion: AmplifyExceptionMessages.missingExceptionMessage,
      );
    }

    final keyDroppedPrefix = dropPrefixFromKey(
      prefixToDrop: prefixToDrop,
      key: key,
    );

    return S3Item(
      key: keyDroppedPrefix,
      size: object.size?.toInt(),
      lastModified: object.lastModified,
      eTag: object.eTag,
    );
  }

  /// Creates a [S3Item] from [s3.HeadObjectOutput] provided by S3
  /// Client.
  @internal
  factory S3Item.fromHeadObjectOutput(
    s3.HeadObjectOutput headObjectOutput, {
    required String key,
  }) {
    return S3Item(
      key: key,
      lastModified: headObjectOutput.lastModified,
      eTag: headObjectOutput.eTag,
      metadata: headObjectOutput.metadata?.toMap() ?? const {},
      versionId: headObjectOutput.versionId,
      size: headObjectOutput.contentLength?.toInt(),
      contentType: headObjectOutput.contentType,
    );
  }

  /// Creates a [S3Item] from [s3.GetObjectOutput] provided by S3
  /// Client.
  @internal
  factory S3Item.fromGetObjectOutput(
    s3.GetObjectOutput getObjectOutput, {
    required String key,
  }) {
    return S3Item(
      key: key,
      lastModified: getObjectOutput.lastModified,
      eTag: getObjectOutput.eTag,
      metadata: getObjectOutput.metadata?.toMap() ?? const {},
      versionId: getObjectOutput.versionId,
      size: getObjectOutput.contentLength?.toInt(),
      contentType: getObjectOutput.contentType,
    );
  }

  /// Removes [prefixToDrop] from [key] string.
  @internal
  static String dropPrefixFromKey({
    required String prefixToDrop,
    required String key,
  }) {
    return key.replaceRange(0, prefixToDrop.length, '');
  }

  /// Object `versionId`, may be available when S3 bucket versioning is enabled.
  final String? versionId;

  /// Content type of the [S3Item].
  final String? contentType;
}
