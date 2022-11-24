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

import 'package:aws_common/aws_common.dart';

/// {@template smithy.smithy_operation}
/// An operation run against a service with progress monitoring support.
/// {@endtemplate}
class SmithyOperation<Output> extends AWSOperation<Output>
    with AWSProgressOperation<Output> {
  /// {@macro smithy.smithy_operation}
  SmithyOperation(
    super.operation, {
    required String operationName,
    required this.requestProgress,
    required this.responseProgress,
    super.onCancel,
  }) : runtimeTypeName = operationName;

  @override
  AWSLogger get logger => AWSLogger().createChild(runtimeTypeName);

  /// The result of [operation].
  ///
  /// If [operation] is canceled before completing, this throws a
  /// [CancellationException].
  Future<Output> get result async {
    final result = await operation.valueOrCancellation();
    if (result is! Output || operation.isCanceled) {
      throw CancellationException(id);
    }
    return result;
  }

  @override
  final Stream<int> requestProgress;

  @override
  final Stream<int> responseProgress;

  @override
  final String runtimeTypeName;
}

/// A constructor of [Output] from [T].
///
/// See:
/// - [JsonConstructor]
typedef Constructor<T extends Object?, Output> = Output Function(T);

/// A constructor of [Output] from a JSON map.
typedef JsonConstructor<Output> = Constructor<Map<String, Object?>, Output>;
