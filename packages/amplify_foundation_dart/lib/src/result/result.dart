// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';

sealed class Result<T, E extends Object> {
  const Result();

  bool get isSuccess;
  bool get isFailure;

  T get dataOrThrow;
  T? get dataOrNull;
  E? get errorOrNull;

  void handle({void Function(T)? onSuccess, void Function(E)? onFailure});
}

class Success<T, E extends Object> implements Result<T, E> {
  const Success(this.data);

  final T data;

  @override
  bool get isSuccess => true;

  @override
  bool get isFailure => false;

  @override
  T get dataOrThrow => data;

  @override
  T? get dataOrNull => data;

  @override
  E? get errorOrNull => null;

  @override
  void handle({void Function(T)? onSuccess, void Function(E)? onFailure}) {
    onSuccess?.call(data);
  }
}

class Failure<T, E extends Object> implements Result<T, E> {
  const Failure(this.error);

  final E error;

  @override
  bool get isSuccess => false;

  @override
  bool get isFailure => true;

  @override
  T get dataOrThrow => throw ResultFailureException(cause: error);

  @override
  T? get dataOrNull => null;

  @override
  E? get errorOrNull => error;

  @override
  void handle({void Function(T)? onSuccess, void Function(E)? onFailure}) {
    onFailure?.call(error);
  }
}
