// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

part 'worker_bee_exception.g.dart';

/// {@template worker_bee.web_worker_exception}
/// An error encountered in a worker bee, serializable using `built_value`.
/// {@endtemplate}
@BuiltValue(instantiable: false)
abstract class WorkerBeeException implements Exception {
  /// The error.
  String get error;

  /// The stack trace associated with this exception.
  StackTrace? get stackTrace;

  /// Rebuilds the worker bee exception using the provided builder.
  WorkerBeeException rebuild(void Function(WorkerBeeExceptionBuilder) b);
}

/// {@macro worker_bee.web_worker_exception}
@internal
abstract class WorkerBeeExceptionImpl
    implements
        WorkerBeeException,
        Built<WorkerBeeExceptionImpl, WorkerBeeExceptionImplBuilder> {
  /// {@macro worker_bee.web_worker_exception}
  factory WorkerBeeExceptionImpl(Object error, [StackTrace? stackTrace]) =>
      _$WorkerBeeExceptionImpl(
        (b) => b
          ..error = error.toString()
          ..stackTrace = stackTrace,
      );
  WorkerBeeExceptionImpl._();

  /// The [WorkerBeeExceptionImpl] serializer.
  static Serializer<WorkerBeeExceptionImpl> get serializer =>
      _$workerBeeExceptionImplSerializer;
}
