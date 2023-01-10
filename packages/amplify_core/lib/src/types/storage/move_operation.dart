// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/storage/base/storage_operation.dart';

/// {@template amplify_core.storage.move_operation}
/// Presents a storage move operation.
/// {@endtemplate}
class StorageMoveOperation<Request extends StorageMoveRequest,
        Result extends StorageMoveResult>
    extends StorageOperation<Request, Result> {
  /// {@macro amplify_core.storage.move_operation}
  StorageMoveOperation({
    required super.request,
    required super.result,
  });
}
