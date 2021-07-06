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

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the HasManyBelongsToModel type in your schema. */
@immutable
class HasManyBelongsToModel extends Model {
  static const classType = const _HasManyBelongsToModelModelType();
  final String id;
  final String? _title;
  final HasManyModel? _parent;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get title {
    return _title!;
  }
  
  HasManyModel? get parent {
    return _parent;
  }
  
  const HasManyBelongsToModel._internal({required this.id, required title, parent}): _title = title, _parent = parent;
  
  factory HasManyBelongsToModel({String? id, required String title, HasManyModel? parent}) {
    return HasManyBelongsToModel._internal(
      id: id == null ? UUID.getUUID() : id,
      title: title,
      parent: parent);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HasManyBelongsToModel &&
      id == other.id &&
      _title == other._title &&
      _parent == other._parent;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("HasManyBelongsToModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("parent=" + (_parent != null ? _parent!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  HasManyBelongsToModel copyWith({String? id, String? title, HasManyModel? parent}) {
    return HasManyBelongsToModel(
      id: id ?? this.id,
      title: title ?? this.title,
      parent: parent ?? this.parent);
  }
  
  HasManyBelongsToModel.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _title = json['title'],
      _parent = json['parent'] != null
        ? HasManyModel.fromJson(new Map<String, dynamic>.from(json['parent']?['serializedData']))
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'title': _title, 'parent': _parent?.toJson()
  };

  static final QueryField ID = QueryField(fieldName: "hasManyBelongsToModel.id");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField PARENT = QueryField(
    fieldName: "parent",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (HasManyModel).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "HasManyBelongsToModel";
    modelSchemaDefinition.pluralName = "HasManyBelongsToModels";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: HasManyBelongsToModel.TITLE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: HasManyBelongsToModel.PARENT,
      isRequired: false,
      targetName: "hasManyID",
      ofModelName: (HasManyModel).toString()
    ));
  });
}

class _HasManyBelongsToModelModelType extends ModelType<HasManyBelongsToModel> {
  const _HasManyBelongsToModelModelType();
  
  @override
  HasManyBelongsToModel fromJson(Map<String, dynamic> jsonData) {
    return HasManyBelongsToModel.fromJson(jsonData);
  }
}