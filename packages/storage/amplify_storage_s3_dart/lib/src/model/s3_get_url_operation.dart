// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

/// {@template storage.amplify_storage_s3.get_url_operation}
/// An operation created by calling the Storage S3 plugin `getUrl` API.
/// {@endtemplate}
class S3GetUrlOperation extends StorageGetUrlOperation<
    StorageGetUrlRequest<S3GetUrlOptions>, S3GetUrlResult> {
  /// {@macro storage.amplify_storage_s3.get_url_operation}
  S3GetUrlOperation({
    required super.request,
    required super.result,
  });
}
