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

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the HasOneParent type in your schema. */
@immutable
class HasOneParent extends Model {
  static const classType = const _HasOneParentModelType();
  final String id;
  final String? _name;
  final HasOneChild? _implicitChild;
  final String? _explicitChildID;
  final HasOneChild? _explicitChild;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final String? _hasOneParentImplicitChildId;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get name {
    return _name;
  }
  
  HasOneChild? get implicitChild {
    return _implicitChild;
  }
  
  String? get explicitChildID {
    return _explicitChildID;
  }
  
  HasOneChild? get explicitChild {
    return _explicitChild;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get hasOneParentImplicitChildId {
    return _hasOneParentImplicitChildId;
  }
  
  const HasOneParent._internal({required this.id, name, implicitChild, explicitChildID, explicitChild, createdAt, updatedAt, hasOneParentImplicitChildId}): _name = name, _implicitChild = implicitChild, _explicitChildID = explicitChildID, _explicitChild = explicitChild, _createdAt = createdAt, _updatedAt = updatedAt, _hasOneParentImplicitChildId = hasOneParentImplicitChildId;
  
  factory HasOneParent({String? id, String? name, HasOneChild? implicitChild, String? explicitChildID, HasOneChild? explicitChild, String? hasOneParentImplicitChildId}) {
    return HasOneParent._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      implicitChild: implicitChild,
      explicitChildID: explicitChildID,
      explicitChild: explicitChild,
      hasOneParentImplicitChildId: hasOneParentImplicitChildId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HasOneParent &&
      id == other.id &&
      _name == other._name &&
      _implicitChild == other._implicitChild &&
      _explicitChildID == other._explicitChildID &&
      _explicitChild == other._explicitChild &&
      _hasOneParentImplicitChildId == other._hasOneParentImplicitChildId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("HasOneParent {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("explicitChildID=" + "$_explicitChildID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("hasOneParentImplicitChildId=" + "$_hasOneParentImplicitChildId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  HasOneParent copyWith({String? id, String? name, HasOneChild? implicitChild, String? explicitChildID, HasOneChild? explicitChild, String? hasOneParentImplicitChildId}) {
    return HasOneParent._internal(
      id: id ?? this.id,
      name: name ?? this.name,
      implicitChild: implicitChild ?? this.implicitChild,
      explicitChildID: explicitChildID ?? this.explicitChildID,
      explicitChild: explicitChild ?? this.explicitChild,
      hasOneParentImplicitChildId: hasOneParentImplicitChildId ?? this.hasOneParentImplicitChildId);
  }
  
  HasOneParent.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _implicitChild = json['implicitChild'] != null
        ? HasOneChild.fromJson(new Map<String, dynamic>.from(json['implicitChild']))
        : null,
      _explicitChildID = json['explicitChildID'],
      _explicitChild = json['explicitChild'] != null
        ? HasOneChild.fromJson(new Map<String, dynamic>.from(json['explicitChild']))
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null,
      _hasOneParentImplicitChildId = json['hasOneParentImplicitChildId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'implicitChild': _implicitChild?.toJson(), 'explicitChildID': _explicitChildID, 'explicitChild': _explicitChild?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'hasOneParentImplicitChildId': _hasOneParentImplicitChildId
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'name': _name, 'implicitChild': _implicitChild, 'explicitChildID': _explicitChildID, 'explicitChild': _explicitChild, 'createdAt': _createdAt, 'updatedAt': _updatedAt, 'hasOneParentImplicitChildId': _hasOneParentImplicitChildId
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField IMPLICITCHILD = QueryField(
    fieldName: "implicitChild",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'HasOneChild'));
  static final QueryField EXPLICITCHILDID = QueryField(fieldName: "explicitChildID");
  static final QueryField EXPLICITCHILD = QueryField(
    fieldName: "explicitChild",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'HasOneChild'));
  static final QueryField HASONEPARENTIMPLICITCHILDID = QueryField(fieldName: "hasOneParentImplicitChildId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "HasOneParent";
    modelSchemaDefinition.pluralName = "HasOneParents";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: HasOneParent.NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: HasOneParent.IMPLICITCHILD,
      isRequired: false,
      ofModelName: 'HasOneChild',
      associatedKey: HasOneChild.ID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: HasOneParent.EXPLICITCHILDID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: HasOneParent.EXPLICITCHILD,
      isRequired: false,
      ofModelName: 'HasOneChild',
      associatedKey: HasOneChild.ID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: HasOneParent.HASONEPARENTIMPLICITCHILDID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _HasOneParentModelType extends ModelType<HasOneParent> {
  const _HasOneParentModelType();
  
  @override
  HasOneParent fromJson(Map<String, dynamic> jsonData) {
    return HasOneParent.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'HasOneParent';
  }
}