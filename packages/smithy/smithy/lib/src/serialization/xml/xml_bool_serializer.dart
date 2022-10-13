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
import 'package:smithy/smithy.dart';

/// XML Serializer for [bool] values.
class XmlBoolSerializer extends PrimitiveSmithySerializer<bool> {
  const XmlBoolSerializer() : super('Bool');

  @override
  Iterable<Type> get types => [bool];

  @override
  bool deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    serialized as String;
    return serialized == 'true';
  }

  @override
  Object serialize(Serializers serializers, bool object,
      {FullType specifiedType = FullType.unspecified}) {
    return object.toString();
  }
}
