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
import 'package:smithy/ast.dart';

abstract class SmithySerializer<T> implements Serializer<T> {
  const SmithySerializer(this.wireName);

  /// The protocols for which this serializer is valid.
  ///
  /// By default, this returns an empty array, which indicates it is
  /// valid for all protocols.
  Iterable<ShapeId> get supportedProtocols => const [];

  @override
  final String wireName;
}

abstract class StructuredSmithySerializer<T> extends SmithySerializer<T>
    implements StructuredSerializer<T> {
  const StructuredSmithySerializer(String wireName) : super(wireName);

  @override
  T deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified});

  @override
  Iterable<Object?> serialize(Serializers serializers, T object,
      {FullType specifiedType = FullType.unspecified});

  @override
  Iterable<Type> get types;
}

abstract class PrimitiveSmithySerializer<T> extends SmithySerializer<T>
    implements PrimitiveSerializer<T> {
  const PrimitiveSmithySerializer(String wireName) : super(wireName);

  @override
  Iterable<Type> get types;

  @override
  T deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified});

  @override
  Object serialize(Serializers serializers, T object,
      {FullType specifiedType = FullType.unspecified});
}
