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
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the HasManyModel type in your schema. */
@immutable
class HasManyModel extends Model {
  static const classType = const _HasManyModelModelType();
  final String id;
  final String? _title;
  final List<HasManyBelongsToModel>? _children;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get title {
    return _title!;
  }
  
  List<HasManyBelongsToModel> get children {
    return _children!;
  }
  
  const HasManyModel._internal({required this.id, required title, required children}): _title = title, _children = children;
  
  factory HasManyModel({String? id, required String title, required List<HasManyBelongsToModel> children}) {
    return HasManyModel._internal(
      id: id == null ? UUID.getUUID() : id,
      title: title,
      children: children != null ? List.unmodifiable(children) : children);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HasManyModel &&
      id == other.id &&
      _title == other._title &&
      DeepCollectionEquality().equals(_children, other._children);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("HasManyModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  HasManyModel copyWith({String? id, String? title, List<HasManyBelongsToModel>? children}) {
    return HasManyModel(
      id: id ?? this.id,
      title: title ?? this.title,
      children: children ?? this.children);
  }
  
  HasManyModel.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _title = json['title'],
      _children = json['children'] is List
        ? (json['children'] as List)
          .map((e) => HasManyBelongsToModel.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
          .toList()
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'title': _title, 'children': _children?.map((e) => e?.toJson())?.toList()
  };

  static final QueryField ID = QueryField(fieldName: "hasManyModel.id");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField CHILDREN = QueryField(
    fieldName: "children",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (HasManyBelongsToModel).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "HasManyModel";
    modelSchemaDefinition.pluralName = "HasManyModels";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: HasManyModel.TITLE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: HasManyModel.CHILDREN,
      isRequired: false,
      ofModelName: (HasManyBelongsToModel).toString(),
      associatedKey: HasManyBelongsToModel.PARENT
    ));
  });
}

class _HasManyModelModelType extends ModelType<HasManyModel> {
  const _HasManyModelModelType();
  
  @override
  HasManyModel fromJson(Map<String, dynamic> jsonData) {
    return HasManyModel.fromJson(jsonData);
  }
}