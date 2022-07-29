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

import 'package:smithy/smithy.dart';

/// An operation which belongs to a service.
///
/// See:
/// - [HttpOperation]
abstract class Operation<Input, Output> {
  const Operation();

  /// Runs the operation for [input].
  ///
  /// Specifying [client] or [useProtocol] overrides the default for the
  /// operation.
  Future<Output> run(
    Input input, {
    covariant Client? client,
    ShapeId? useProtocol,
  });

  /// The error types of the operation.
  List<SmithyError> get errorTypes;
}

/// A constructor of [Output] from [T].
///
/// See:
/// - [StreamingResponseContructor]
/// - [RawResponseConstructor]
/// - [JsonConstructor]
typedef Constructor<T extends Object?, Output> = Output Function(T);

/// A constructor of [Output] from a stream of [T] events.
typedef StreamingResponseContructor<T extends Object?, Output> = Output
    Function(Stream<T>);

/// A constructor of [Output] from [T].
typedef RawResponseConstructor<T extends Object?, Output> = Output Function(T);

/// A constructor of [Output] a JSON map, typically [Output.fromJson].
typedef JsonConstructor<Output> = Output Function(Map<String, Object?>);

/// Applies pagination to an operation.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/behavior-traits.html#paginated-trait
mixin PaginatedOperation<Input, Output> on Operation<Input, Output> {
  String? inputToken(Input input);
  String? outputToken(Output output);
  Object /* List|Map */ items(Output output);
  int? pageSize(Input input);
}
