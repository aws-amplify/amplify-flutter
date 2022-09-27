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

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code, implicit_dynamic_parameter, implicit_dynamic_map_literal, implicit_dynamic_type

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the FileMeta type in your schema. */
@immutable
class FileMeta {
  final String? _name;

  String get name {
    try {
      return _name!;
    } catch (e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  const FileMeta._internal({required name}) : _name = name;

  factory FileMeta({required String name}) {
    return FileMeta._internal(name: name);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileMeta && _name == other._name;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("FileMeta {");
    buffer.write("name=" + "$_name");
    buffer.write("}");

    return buffer.toString();
  }

  FileMeta copyWith({String? name}) {
    return FileMeta._internal(name: name ?? this.name);
  }

  FileMeta.fromJson(Map<String, dynamic> json) : _name = json['name'];

  Map<String, dynamic> toJson() => {'name': _name};

  static var schema = Model.defineSchema(
      define: (ModelTypeDefinitionBuilder modelSchemaDefinition) {
    modelSchemaDefinition.name = "FileMeta";
    modelSchemaDefinition.pluralName = "FileMetas";

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'name',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}
