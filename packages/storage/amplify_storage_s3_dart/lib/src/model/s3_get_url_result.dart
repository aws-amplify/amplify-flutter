// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template storage.amplify_storage_s3.get_url_result}
/// The result returned by the Storage S3 plugin `getUrl` API.
/// {@endtemplate}
class S3GetUrlResult extends StorageGetUrlResult {
  /// {@macro storage.amplify_storage_s3.get_url_result}
  const S3GetUrlResult({
    required super.url,
    this.expiresAt,
  });

  /// The date and time that the url expires at.
  final DateTime? expiresAt;
}
