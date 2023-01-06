// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

import 'base/storage_operation.dart';

/// {@template amplify_core.storage.list_operation}
/// Presents a storage list operation.
/// {@endtemplate}
class StorageListOperation<Request extends StorageListRequest,
        Result extends StorageListResult>
    extends StorageOperation<Request, Result> {
  /// {@macro amplify_core.storage.list_operation}
  StorageListOperation({
    required super.request,
    required super.result,
  });
}
