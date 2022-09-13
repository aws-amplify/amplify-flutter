// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/src/operation/aws_operation.dart';

/// {@template aws_common.http.aws_http_operation}
/// A wrapper over a [CancelableOperation] with progress monitoring support for
/// in-flight HTTP requests sent with an [AWSHttpClient].
/// {@endtemplate}
class AWSHttpOperation<ResponseType extends AWSBaseHttpResponse>
    extends AWSOperation<ResponseType> {
  /// Creates an [AWSHttpOperation] from a [CancelableOperation].
  AWSHttpOperation(
    super.operation, {
    required this.requestProgress,
    required this.responseProgress,
    super.onCancel,
  });

  /// The result of [operation].
  ///
  /// If [operation] is canceled before completing, this throws a
  /// [CancellationException].
  Future<ResponseType> get response async {
    final result = await operation.valueOrCancellation();
    if (result is! ResponseType || operation.isCanceled) {
      throw CancellationException(id);
    }
    return result;
  }

  /// The operation's progress sending the request, in bytes.
  ///
  /// If [cancel] is called before the request has been fully sent, the stream
  /// will be closed and its `onDone` callback will fire.
  final Stream<int> requestProgress;

  /// The operation's progress receiving a response, in bytes.
  ///
  /// If [cancel] is called before the response has been fully received, the
  /// stream will be closed and its `onDone` callback will fire.
  final Stream<int> responseProgress;

  @override
  String get runtimeTypeName => 'AWSHttpOperation';
}
