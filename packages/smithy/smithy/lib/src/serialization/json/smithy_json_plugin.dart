// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

class SmithyJsonPlugin extends StandardJsonPlugin {
  @override
  Object? beforeSerialize(Object? object, FullType specifiedType) {
    return object;
  }

  @override
  Object? afterSerialize(Object? object, FullType specifiedType) {
    if (object is List<int>) {
      return object;
    }

    // specifiedType is passed as FullType(Type, [TypePayload]) so that we
    // have both types here. If either are a list, we don't want to invoke
    // the standard JSON plugin since it will be serialized to a map.
    final types = [
      specifiedType.root,
      ...specifiedType.parameters.map((p) => p.root)
    ];
    if (object is List &&
        (types.contains(BuiltList) ||
            types.contains(BuiltSet) ||
            types.contains(JsonObject))) {
      return object;
    }
    return super.afterSerialize(object, specifiedType);
  }
}
