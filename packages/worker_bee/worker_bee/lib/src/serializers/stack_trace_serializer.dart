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

import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';
import 'package:stack_trace/stack_trace.dart';

/// {@template worker_bee.exception.stack_trace_serializer}
/// Serializer for [StackTrace] objects for sending on the wire.
/// {@endtemplate}
@internal
class StackTraceSerializer implements PrimitiveSerializer<StackTrace> {
  /// {@macro worker_bee.exception.stack_trace_serializer}
  const StackTraceSerializer();

  @override
  String get wireName => 'StackTrace';

  @override
  Iterable<Type> get types => [
        StackTrace,
        StackTrace.empty.runtimeType,
        StackTrace.current.runtimeType,
        Trace,
        Chain,
      ];

  @override
  StackTrace deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    StackTrace? stackTrace;
    if (serialized is StackTrace) {
      stackTrace = serialized;
    }
    if (serialized is String) {
      stackTrace = Trace.parse(serialized);
    }
    if (serialized is List<String>) {
      stackTrace = Trace(serialized.map(Frame.parseFriendly));
    }
    if (stackTrace == null) {
      throw ArgumentError(
        'Unknown StackFrame type (${serialized.runtimeType}): $serialized',
      );
    }
    return stackTrace;
  }

  @override
  Object serialize(
    Serializers serializers,
    StackTrace object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return Trace.format(object);
  }
}
