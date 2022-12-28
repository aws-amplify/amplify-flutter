// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

/// {@template storage.amplify_storage_s3.remove_many_operation}
/// An operation created by calling the Storage S3 plugin `removeMany` API.
/// {@endtemplate}
class S3RemoveManyOperation extends StorageRemoveManyOperation<
    StorageRemoveManyRequest<S3RemoveManyOptions>, S3RemoveManyResult> {
  /// {@macro storage.amplify_storage_s3.remove_many_operation}
  S3RemoveManyOperation({
    required super.request,
    required super.result,
  });
}
