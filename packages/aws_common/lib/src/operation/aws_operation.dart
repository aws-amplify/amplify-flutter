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
import 'package:meta/meta.dart';

/// {@template aws_common.operation.aws_operation}
/// A wrapper over a [CancelableOperation].
/// {@endtemplate}
abstract class AWSOperation<T extends Object?>
    with AWSDebuggable, AWSLoggerMixin
    implements Cancelable, Closeable {
  /// Creates an [AWSOperation] from a [CancelableOperation].
  AWSOperation(this.operation);

  /// A unique identifier for the operation.
  final String id = uuid();

  @override
  AWSLogger get logger => super.logger.createChild(id);

  /// The wrapped [CancelableOperation] which can be used for cancelable
  /// chaining and interop with other [CancelableOperation]s.
  final CancelableOperation<T> operation;

  @override
  Future<void> cancel() => operation.cancel();

  @override
  @mustCallSuper
  Future<void> close() async {
    await operation.cancel();
  }
}
