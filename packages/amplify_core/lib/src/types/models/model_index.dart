/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:aws_common/aws_common.dart';

/// {@template amplify_core.models.model_index}
/// Describes an index that is created by `@primaryKey` or `@index` directive,
/// and is listed in [ModelSchemaDefinition.indexes].
/// {@endtemplate}
class ModelIndex with AWSEquatable<ModelIndex>, AWSSerializable {
  /// Index name that is defined by the name parameter of `@index` directive in
  /// a model schema. This will always be null when the index is representing
  /// `@primaryKey` directive.
  final String? name;

  /// An array of field names. The first field is always the field that is
  /// annotated by `@primaryKey` or `@index` directive , and the remaining
  /// fields are the fields specified by `sortKeyFields` parameter of
  /// `@primaryKey` or `@index` directive.
  final List<String> fields;

  /// {@macro model_index}
  const ModelIndex({
    required this.fields,
    this.name,
  });

  @override
  List<Object?> get props => [name, fields];

  /// Make a copy of an existing [ModelIndex] instance.
  ModelIndex copyWith({
    List<String>? fields,
    String? name,
  }) =>
      ModelIndex(fields: fields ?? this.fields, name: name ?? this.name);

  /// Create an instance of [ModelIndex] from a json object
  factory ModelIndex.fromJson(Map<String, Object?> map) => ModelIndex(
        fields: (map['fields'] as List<Object?>).cast(),
        name: map['name'] as String?,
      );

  /// Generate a json object that represents [ModelIndex]
  @override
  Map<String, Object?> toJson() => {
        'name': name,
        'fields': fields,
      };

  @override
  String toString() => 'ModelIndex(name: $name, fields: $fields)';
}
