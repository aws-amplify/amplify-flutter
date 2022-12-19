// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

/// {@template storage.amplify_storage_s3.copy_operation}
/// An operation created by calling the Storage S3 plugin `copy` API.
/// {@endtemplate}
class S3CopyOperation extends StorageCopyOperation<
    StorageCopyRequest<S3Item, S3CopyOptions>, S3CopyResult> {
  /// {@macro storage.amplify_storage_s3.copy_operation}
  S3CopyOperation({
    required super.request,
    required super.result,
  });
}
