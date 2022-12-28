// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';
import 'package:worker_bee/src/exception/worker_bee_exception.dart';
import 'package:worker_bee/src/logging/log_serializers.dart';
import 'package:worker_bee/src/serializers/stack_trace_serializer.dart';

part 'serializers.g.dart';

/// Serializers common to all worker bees.
@internal
@SerializersFor([
  WorkerBeeExceptionImpl,
])
final Serializers workerBeeSerializers = (_$workerBeeSerializers.toBuilder()
      ..add(const LogEntrySerializer())
      ..add(const StackTraceSerializer()))
    .build();
