// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/storage/base/storage_operation.dart';
import 'package:amplify_core/src/types/storage/base/storage_controllable_operation.dart';

/// {@template amplify_core.storage.remove_operation}
/// Presents a storage remove operation with enhanced capabilities.
/// 
/// This operation implements Future<Result> for backward compatibility
/// while providing additional features like cancellation and state tracking.
/// {@endtemplate}
class StorageRemoveOperation<
  Request extends StorageRemoveRequest,
  Result extends StorageRemoveResult
> extends StorageOperation<Request, Result> 
  implements Future<Result>, StorageCancelableOperation {
  
  /// {@macro amplify_core.storage.remove_operation}
  StorageRemoveOperation({
    required super.request, 
    required super.result,
    required Future<void> Function() cancelFunction,
  }) : _cancelFunction = cancelFunction;

  /// Internal cancellation function
  final Future<void> Function() _cancelFunction;

  /// Current state of the operation
  StorageOperationState get state => _state;
  StorageOperationState _state = StorageOperationState.inProgress;

  /// Cancellation implementation
  @override
  Future<void> cancel() => _cancelFunction();

  // Future<Result> implementation for backward compatibility
  @override
  Stream<Result> asStream() => result.asStream();

  @override
  Future<Result> catchError(Function onError, {bool Function(Object error)? test}) =>
      result.catchError(onError, test: test);

  @override
  Future<S> then<S>(FutureOr<S> Function(Result value) onValue, {Function? onError}) =>
      result.then(onValue, onError: onError);

  @override
  Future<Result> timeout(Duration timeLimit, {FutureOr<Result> Function()? onTimeout}) =>
      result.timeout(timeLimit, onTimeout: onTimeout);

  @override
  Future<Result> whenComplete(FutureOr<void> Function() action) =>
      result.whenComplete(action);
}

/// State of a storage operation
enum StorageOperationState {
  /// Operation is in progress
  inProgress,
  /// Operation completed successfully
  success,
  /// Operation was cancelled
  cancelled,
  /// Operation failed with error
  error,
}
