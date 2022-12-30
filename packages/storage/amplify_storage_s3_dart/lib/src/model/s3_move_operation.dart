// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

/// {@template storage.amplify_storage_s3.move_operation}
/// An operation created by calling the Storage S3 plugin `copy` API.
/// {@endtemplate}
class S3MoveOperation extends StorageMoveOperation<
    StorageMoveRequest<S3Item, S3MoveOptions>, S3MoveResult> {
  /// {@macro storage.amplify_storage_s3.move_operation}
  S3MoveOperation({
    required super.request,
    required super.result,
  });
}
