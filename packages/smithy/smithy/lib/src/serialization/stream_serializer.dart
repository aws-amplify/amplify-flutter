// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/serializer.dart';

class StreamSerializer<T extends Object>
    implements PrimitiveSerializer<Stream<T>> {
  const StreamSerializer();

  @override
  Stream<T> deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) async* {
    final streamType = specifiedType.isUnspecified
        ? FullType.unspecified
        : specifiedType.parameters.first;
    if (serialized is Stream) {
      await for (final value in serialized) {
        yield serializers.deserialize(value, specifiedType: streamType) as T;
      }
    } else {
      yield serializers.deserialize(serialized, specifiedType: streamType) as T;
    }
  }

  @override
  Stream<Object?> serialize(
    Serializers serializers,
    Stream<T> object, {
    FullType specifiedType = FullType.unspecified,
  }) async* {
    final streamType = specifiedType.isUnspecified
        ? FullType.unspecified
        : specifiedType.parameters.first;
    await for (final value in object) {
      yield serializers.serialize(value, specifiedType: streamType);
    }
  }

  @override
  Iterable<Type> get types => [
        // TODO(dnys1): https://github.com/dart-lang/sdk/issues/49851
        Stream,
      ];

  @override
  String get wireName => 'Stream<$T>';
}
