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


/** This is an auto generated class representing the BelongsToModel type in your schema. */
@immutable
class BelongsToModel extends Model {
  static const classType = const _BelongsToModelModelType();
  final String id;
  final String? _title;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get title {
    return _title!;
  }
  
  const BelongsToModel._internal({required this.id, required title}): _title = title;
  
  factory BelongsToModel({String? id, required String title}) {
    return BelongsToModel._internal(
      id: id == null ? UUID.getUUID() : id,
      title: title);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BelongsToModel &&
      id == other.id &&
      _title == other._title;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("BelongsToModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  BelongsToModel copyWith({String? id, String? title}) {
    return BelongsToModel(
      id: id ?? this.id,
      title: title ?? this.title);
  }
  
  BelongsToModel.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _title = json['title'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'title': _title
  };

  static final QueryField ID = QueryField(fieldName: "belongsToModel.id");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "BelongsToModel";
    modelSchemaDefinition.pluralName = "BelongsToModels";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: BelongsToModel.TITLE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _BelongsToModelModelType extends ModelType<BelongsToModel> {
  const _BelongsToModelModelType();
  
  @override
  BelongsToModel fromJson(Map<String, dynamic> jsonData) {
    return BelongsToModel.fromJson(jsonData);
  }
}