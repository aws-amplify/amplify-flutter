// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart';

/// XML Serializer for [bool] values.
class XmlBoolSerializer extends PrimitiveSmithySerializer<bool> {
  const XmlBoolSerializer() : super('Bool');

  @override
  Iterable<Type> get types => const [bool];

  @override
  bool deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    serialized as String;
    return serialized == 'true';
  }

  @override
  Object serialize(
    Serializers serializers,
    bool object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return object.toString();
  }
}
