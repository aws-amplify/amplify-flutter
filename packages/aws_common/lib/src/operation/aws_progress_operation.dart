// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';

/// {@template aws_common.operation.aws_progress_operation}
/// A mixin to [AWSOperation] which adds progress monitoring.
/// {@endtemplate}
mixin AWSProgressOperation<T> on AWSOperation<T> {
  /// {@template aws_common.operation.request_progress}
  /// The operation's progress sending the request, in bytes.
  ///
  /// If [cancel] is called before the request has been fully sent, the stream
  /// will be closed and its `onDone` callback will fire.
  /// {@endtemplate}
  Stream<int> get requestProgress;

  /// {@template aws_common.operation.response_progress}
  /// The operation's progress receiving a response, in bytes.
  ///
  /// If [cancel] is called before the response has been fully received, the
  /// stream will be closed and its `onDone` callback will fire.
  /// {@endtemplate}
  Stream<int> get responseProgress;
}
