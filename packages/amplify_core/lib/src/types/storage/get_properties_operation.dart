// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

import 'base/storage_operation.dart';

/// {@template amplify_core.storage.get_properties_operation}
/// Presents a storage copy operation.
/// {@endtemplate}
class StorageGetPropertiesOperation<Request extends StorageGetPropertiesRequest,
        Result extends StorageGetPropertiesResult>
    extends StorageOperation<Request, Result> {
  /// {@macro amplify_core.storage.get_properties_operation}
  StorageGetPropertiesOperation({
    required super.request,
    required super.result,
  });
}
