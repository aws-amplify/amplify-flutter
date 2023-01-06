// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

/// {@template storage.amplify_storage_s3.list_operation}
/// An operation created by calling the Storage S3 plugin `list` API.
/// {@endtemplate}
class S3ListOperation extends StorageListOperation<
    StorageListRequest<S3ListOptions>, S3ListResult> {
  /// {@macro storage.amplify_storage_s3.list_operation}
  S3ListOperation({
    required super.request,
    required super.result,
  });
}
