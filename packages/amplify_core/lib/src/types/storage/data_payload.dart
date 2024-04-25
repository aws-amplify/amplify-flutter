// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

/// {@template amplify_core.storage.data_payload}
/// A data payload to be uploaded by the Storage category.
///
/// Create a [StorageDataPayload] from various data types using one of the
/// following constructors:
/// - [StorageDataPayload.empty]
/// - [StorageDataPayload.bytes]
/// - [StorageDataPayload.string]
/// - [StorageDataPayload.formFields]
/// - [StorageDataPayload.json]
/// - [StorageDataPayload.streaming]
/// - [StorageDataPayload.dataUrl]
/// {@endtemplate}

// The implementation is based on HttpPayload from aws_common. StorageDataPayload
// converts all payloads other than streams to byte data when the object is
// constructed in order to read the length of the byte data. HttpPayload does not
// convert the data to byte data until th data is read. Monitoring storage
// upload progress requires knowing the length of the data prior to the start
// of the upload.
//
class StorageDataPayload extends StreamView<List<int>> {
  /// An empty [StorageDataPayload].
  const StorageDataPayload.empty({this.contentType})
      : size = 0,
        super(const Stream.empty());

  /// A byte buffer [StorageDataPayload].
  StorageDataPayload.bytes(
    List<int> body, {
    this.contentType,
  })  : size = body.length,
        super(Stream.value(body));

  /// A [StorageDataPayload].
  ///
  /// Defaults to UTF-8 encoding.
  ///
  /// The Content-Type defaults to 'text/plain'.
  factory StorageDataPayload.string(
    String body, {
    Encoding encoding = utf8,
    String? contentType,
  }) {
    return StorageDataPayload.bytes(
      encoding.encode(body),
      contentType: contentType ?? 'text/plain; charset=${encoding.name}',
    );
  }

  /// A form-encoded [StorageDataPayload].
  ///
  /// The Content-Type defaults to 'application/x-www-form-urlencoded'.
  factory StorageDataPayload.formFields(
    Map<String, String> body, {
    Encoding encoding = utf8,
    String? contentType,
  }) {
    return StorageDataPayload.bytes(
      // ignore: invalid_use_of_internal_member
      encoding.encode(HttpPayload.encodeFormValues(body, encoding: encoding)),
      contentType: contentType ??
          'application/x-www-form-urlencoded; charset=${encoding.name}',
    );
  }

  /// A JSON [StorageDataPayload]
  ///
  /// The Content-Type defaults to 'application/json'.
  factory StorageDataPayload.json(
    Object? body, {
    Encoding encoding = utf8,
    String? contentType,
  }) {
    return StorageDataPayload.bytes(
      encoding.encode(json.encode(body)),
      contentType: contentType ?? 'application/json; charset=${encoding.name}',
    );
  }

  /// A streaming [StorageDataPayload].
  const StorageDataPayload.streaming(
    super.body, {
    this.contentType,
  }) : size = -1;

  /// A data url [StorageDataPayload].
  factory StorageDataPayload.dataUrl(String dataUrl) {
    // ignore: invalid_use_of_internal_member
    if (!dataUrl.startsWith(HttpPayload.dataUrlMatcher)) {
      throw ArgumentError('Invalid data url: $dataUrl');
    }

    final dataUrlParts = dataUrl.split(',');
    final mediaTypeEncoding = dataUrlParts.first.replaceFirst('data:', '');
    final body = dataUrlParts.skip(1).join(',');

    if (mediaTypeEncoding.endsWith(';base64')) {
      return StorageDataPayload.bytes(
        base64Decode(body),
        contentType: mediaTypeEncoding.replaceFirst(';base64', ''),
      );
    }

    return StorageDataPayload.bytes(
      // data url encodes body, need to decode before converting it into bytes
      utf8.encode(Uri.decodeComponent(body)),
      contentType: mediaTypeEncoding,
    );
  }

  /// The content type of the body.
  final String? contentType;

  /// The size of the content of the data payload.
  ///
  /// If this payload was created using the  [StorageDataPayload.streaming]
  /// constructor the size will be unknown until the stream completes. This
  /// value will return -1 in that case.
  @internal
  final int size;
}
