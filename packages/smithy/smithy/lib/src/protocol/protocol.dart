// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:built_value/serializer.dart' hide Serializer;
import 'package:smithy/smithy.dart';

/// Metadata related to an operation regarding its serialization format,
/// authentication schemes, etc.
abstract class Protocol<Input, Output, WireType>
    implements FullSerializer<WireType> {
  const Protocol._();

  /// The shape ID of the protocol trait this class implements.
  ShapeId get protocolId;
}

abstract class FullSerializer<WireType>
    implements Serializer<Object?, WireType>, Deserializer<Object?, WireType> {
  @override
  FutureOr<WireType> serialize(Object? input, {FullType? specifiedType});

  @override
  FutureOr<Object?> deserialize(WireType input, {FullType? specifiedType});
}
