/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:flutter/foundation.dart';

import 'model_schema.dart';
import 'model_schema_definition.dart';

abstract class Model {
  final String id;

  ModelType getInstanceType();

  const Model({this.id});

  String getId() {
    return id;
  }

  Map<String, dynamic> toJson();

  static ModelSchema defineSchema(
      {@required Function(ModelSchemaDefinition) define}) {
    var definition = ModelSchemaDefinition();

    define(definition);

    return definition.build();
  }
}

// New ModelType superclass
abstract class ModelType<T extends Model> {
  const ModelType();

  T fromSerializedMap(Map<String, dynamic> serializedMap) {
    return fromJson(serializedMapToJson(serializedMap));
  }

  Map<String, dynamic> serializedMapToJson(Map<String, dynamic> serializedMap) {
    Map<String, dynamic> resultMap = {};

    if (serializedMap.length == 0 ||
        !serializedMap.containsKey("serializedData")) {
      return resultMap;
    }

    serializedMap =
        new Map<String, dynamic>.from(serializedMap["serializedData"]);

    serializedMap.forEach((key, value) {
      if (value is Map) {
        resultMap[key] =
            serializedMapToJson(new Map<String, dynamic>.from(value));
      } else {
        resultMap[key] = value;
      }
    });

    return resultMap;
  }

  T fromJson(Map<String, dynamic> jsonData);

  String modelName() {
    return T.toString();
  }

  /// Perform [action] with [T] as type argument.
  R callWithType<R>(R Function<T>() action) => action<T>();

  // Checks and casts.
  bool isInstance(Object o) => o is T;
  T cast(Object o) => o as T;
  T safeCast(Object o) => o is T ? o : null;

  // Subtyping checks.
  bool operator >=(ModelType other) => other is ModelType<T>;
  bool operator <=(ModelType other) => other >= this;
  bool operator <(ModelType other) => other >= this && !(this >= other);
  bool operator >(ModelType other) => this >= other && !(other >= this);
  bool operator ==(Object other) =>
      other is ModelType && this >= other && other >= this;
  int get hashCode => T.hashCode;
}
