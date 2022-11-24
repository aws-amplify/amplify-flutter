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
