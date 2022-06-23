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
import 'dart:core' as core;
import 'dart:isolate' as isolate_lib;

import 'package:code_builder/code_builder.dart';
import 'package:stream_channel/isolate_channel.dart' as isolate_channel;
import 'package:worker_bee/worker_bee.dart' as worker_bee;

/// Common type references used throughout code generation.
abstract class DartTypes {
  DartTypes._();

  /// `dart:core` types.
  static const core = _Core();

  /// `dart:async` types.
  static const async = _Async();

  /// `package:aws_common` types.
  static const awsCommon = _AwsCommon();

  /// `dart:isolate` types.
  static const isolate = _Isolate();

  /// `package:stream_channel` types.
  static const streamChannel = _StreamChannel();

  /// `package:worker_bee` types.
  static const workerBee = _WorkerBee();
}

/// `dart:core` types
class _Core {
  const _Core();

  /// Creates a [core.List] reference.
  Reference list([Reference? ref]) => TypeReference(
        (t) => t
          ..symbol = 'List'
          ..types.addAll([
            if (ref != null) ref,
          ]),
      );

  /// Creates a [core.Map] reference.
  Reference map(Reference key, Reference value) => TypeReference(
        (t) => t
          ..symbol = 'Map'
          ..types.addAll([key, value]),
      );

  /// Creates an [core.Object] reference.
  Reference get object => const Reference('Object');

  /// Creates a [core.override] reference.
  Reference get override => const Reference('override');

  /// Creates a [core.String] reference.
  Reference get string => const Reference('String');

  /// Creates a `void` reference.
  Reference get void$ => const Reference('void');
}

/// `dart:async` types
class _Async {
  const _Async();

  static const _url = 'dart:async';

  /// Creates a [Future] reference.
  Reference future(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'Future'
          ..types.add(ref),
      );

  /// Creates an [unawaited] reference.
  Reference get unawaited => const Reference('unawaited', _url);
}

/// `package:aws_common` types
class _AwsCommon {
  const _AwsCommon();

  static const _url = 'package:aws_common/aws_common.dart';

  /// Creates a [zDebugMode] reference.
  Reference get zDebugMode => const Reference('zDebugMode', _url);

  /// Creates a [zReleaseMode] reference.
  Reference get zReleaseMode => const Reference('zReleaseMode', _url);

  /// Creates a [zIsFlutter] reference.
  Reference get zIsFlutter => const Reference('zIsFlutter', _url);
}

/// `dart:isolate` types
class _Isolate {
  const _Isolate();

  static const _url = 'dart:isolate';

  /// Creates an [isolate_lib.Isolate] reference.
  Reference get isolate => const Reference('Isolate', _url);
}

/// `package:stream_channel` types
class _StreamChannel {
  const _StreamChannel();

  static const _url = 'package:worker_bee/worker_bee.dart';

  /// Creates an [isolate_channel.IsolateChannel] reference.
  Reference get isolateChannel => const Reference('IsolateChannel', _url);
}

/// `package:worker_bee` types
class _WorkerBee {
  const _WorkerBee();

  static const _url = 'package:worker_bee/worker_bee.dart';

  /// Creates a [worker_bee.LogMessage] reference.
  Reference get logMessage => const Reference('LogMessage', _url);

  /// Creates a [worker_bee.runHive] reference.
  Reference get runHive => const Reference('runHive', _url);

  /// Creates a [worker_bee.SendPorts] reference.
  Reference get sendPorts => const Reference('SendPorts', _url);

  /// Creates a [worker_bee.VmEntrypoint] reference.
  Reference get vmEntrypoint => const Reference('VmEntrypoint', _url);

  /// Creates a [worker_bee.WorkerBeeBuilder] reference.
  Reference get workerBeeBuilder => const Reference('WorkerBeeBuilder', _url);
}

/// Helpers for [Reference] types.
extension ReferenceUtil on Reference {
  /// The [TypeReference] instance of `this`.
  TypeReference get typeRef =>
      (this is TypeReference ? this : type) as TypeReference;

  /// `this` as a nullable type.
  TypeReference get nullable => typeRef.rebuild((t) => t.isNullable = true);

  /// `this` as a non-nullable type.
  TypeReference get nonNull => typeRef.rebuild((t) => t.isNullable = false);
}
