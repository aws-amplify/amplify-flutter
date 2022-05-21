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

import 'package:meta/meta.dart';

import 'model_schema.dart';
import 'model_schema_definition.dart';

abstract class Model {
  ModelType getInstanceType();

  String getId();

  Map<String, Object?> toJson();

  const Model();

  static ModelSchema defineSchema(
      {required void Function(ModelSchemaDefinition) define}) {
    var definition = ModelSchemaDefinition();

    define(definition);

    return definition.build();
  }
}

// New ModelType superclass
@immutable
abstract class ModelType<T extends Model> {
  const ModelType();

  T fromSerializedMap(Map<String, dynamic> serializedMap) {
    return fromJson((serializedMap['serializedData'] as Map).cast());
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
  T? safeCast(Object o) => o is T ? o : null;

  // Subtyping checks.
  bool operator >=(ModelType other) => other is ModelType<T>;
  bool operator <=(ModelType other) => other >= this;
  bool operator <(ModelType other) => other >= this && !(this >= other);
  bool operator >(ModelType other) => this >= other && !(other >= this);

  @override
  bool operator ==(Object other) =>
      other is ModelType && this >= other && other >= this;

  @override
  int get hashCode => T.hashCode;
}
