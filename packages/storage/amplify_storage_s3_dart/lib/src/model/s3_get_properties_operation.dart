// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

/// {@template storage.amplify_storage_s3.get_properties_operation}
/// An operation created by calling the Storage S3 plugin `getProperties` API.
/// {@endtemplate}
class S3GetPropertiesOperation extends StorageGetPropertiesOperation<
    StorageGetPropertiesRequest<S3GetPropertiesOptions>,
    S3GetPropertiesResult> {
  /// {@macro storage.amplify_storage_s3.get_properties_operation}
  S3GetPropertiesOperation({
    required super.request,
    required super.result,
  });
}
