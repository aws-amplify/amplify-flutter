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
  Iterable<Type> get types => [Stream<T>];

  @override
  String get wireName => 'Stream<$T>';
}
