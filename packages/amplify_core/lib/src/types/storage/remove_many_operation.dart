// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

import 'base/storage_operation.dart';

/// {@template amplify_core.storage.remove_many_operation}
/// Presents a storage remove many operation.
/// {@endtemplate}
class StorageRemoveManyOperation<Request extends StorageRemoveManyRequest,
        Result extends StorageRemoveManyResult>
    extends StorageOperation<Request, Result> {
  /// {@macro amplify_core.storage.remove_many_operation}
  StorageRemoveManyOperation({
    required super.request,
    required super.result,
  });
}
