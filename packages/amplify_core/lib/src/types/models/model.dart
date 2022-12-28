// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:meta/meta.dart';

import 'model_schema.dart';
import 'model_schema_definition.dart';

abstract class Model {
  ModelType getInstanceType() {
    throw UnimplementedError(
        'getInstanceType() has not been implemented on Model.');
  }

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  String getId() {
    throw UnimplementedError('getId() has not been implemented on Model.');
  }

  ModelIdentifier get modelIdentifier {
    throw UnimplementedError(
        'modelIdentifier has not been implemented on Model.');
  }

  Map<String, Object?> toJson() {
    throw UnimplementedError('toJson() has not been implemented on Model.');
  }

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

/// Model identifier presentation
abstract class ModelIdentifier<T extends Model> {
  const ModelIdentifier();

  /// Serialize a model identifier as a map.
  Map<String, dynamic> serializeAsMap();

  /// Serialize a model identifier as a list of key-value pairs. The order of
  /// key-value pairs presents primary key and sort keys.
  List<Map<String, dynamic>> serializeAsList();

  /// Serialize a model identifier into a single string in format:
  /// <primaryKey>[#<sortKey>]
  String serializeAsString();
}
