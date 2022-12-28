// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

/// {@template storage.amplify_storage_s3.remove_operation}
/// An operation created by calling the Storage S3 plugin `remove` API.
/// {@endtemplate}
class S3RemoveOperation extends StorageRemoveOperation<
    StorageRemoveRequest<S3RemoveOptions>, S3RemoveResult> {
  /// {@macro storage.amplify_storage_s3.remove_operation}
  S3RemoveOperation({
    required super.request,
    required super.result,
  });
}
