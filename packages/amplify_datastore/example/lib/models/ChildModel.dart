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

// ignore_for_file: public_member_api_docs

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the ChildModel type in your schema. */
@immutable
class ChildModel extends Model {
  static const classType = const _ChildModelModelType();
  final String id;
  final String? _name;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  String get name {
    try {
      return _name!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  const ChildModel._internal({required this.id, required name}) : _name = name;

  factory ChildModel({String? id, required String name}) {
    return ChildModel._internal(
        id: id == null ? UUID.getUUID() : id, name: name);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChildModel && id == other.id && _name == other._name;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("ChildModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name");
    buffer.write("}");

    return buffer.toString();
  }

  ChildModel copyWith({String? id, String? name}) {
    return ChildModel(id: id ?? this.id, name: name ?? this.name);
  }

  ChildModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'];

  Map<String, dynamic> toJson() => {'id': id, 'name': _name};

  static final QueryField<String> ID = QueryField(fieldName: "childModel.id");
  static final QueryField<String> NAME = QueryField(fieldName: "name");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ChildModel";
    modelSchemaDefinition.pluralName = "ChildModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ChildModel.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _ChildModelModelType extends ModelType<ChildModel> {
  const _ChildModelModelType();

  @override
  ChildModel fromJson(Map<String, dynamic> jsonData) {
    return ChildModel.fromJson(jsonData);
  }
}
