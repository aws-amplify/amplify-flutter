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


/** This is an auto generated class representing the HasOneModel type in your schema. */
@immutable
class HasOneModel extends Model {
  static const classType = const _HasOneModelModelType();
  final String id;
  final String? _title;
  final BelongsToModel? _child;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get title {
    return _title!;
  }
  
  BelongsToModel? get child {
    return _child;
  }
  
  const HasOneModel._internal({required this.id, required title, child}): _title = title, _child = child;
  
  factory HasOneModel({String? id, required String title, BelongsToModel? child}) {
    return HasOneModel._internal(
      id: id == null ? UUID.getUUID() : id,
      title: title,
      child: child);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HasOneModel &&
      id == other.id &&
      _title == other._title &&
      _child == other._child;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("HasOneModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("child=" + (_child != null ? _child!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  HasOneModel copyWith({String? id, String? title, BelongsToModel? child}) {
    return HasOneModel(
      id: id ?? this.id,
      title: title ?? this.title,
      child: child ?? this.child);
  }
  
  HasOneModel.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _title = json['title'],
      _child = json['child'] != null
        ? BelongsToModel.fromJson(new Map<String, dynamic>.from(json['child']?['serializedData']))
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'title': _title, 'child': _child?.toJson()
  };

  static final QueryField ID = QueryField(fieldName: "hasOneModel.id");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField CHILD = QueryField(
    fieldName: "child",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (BelongsToModel).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "HasOneModel";
    modelSchemaDefinition.pluralName = "HasOneModels";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: HasOneModel.TITLE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: HasOneModel.CHILD,
      isRequired: false,
      targetName: "hasOneModelChildId",
      ofModelName: (BelongsToModel).toString()
    ));
  });
}

class _HasOneModelModelType extends ModelType<HasOneModel> {
  const _HasOneModelModelType();
  
  @override
  HasOneModel fromJson(Map<String, dynamic> jsonData) {
    return HasOneModel.fromJson(jsonData);
  }
}