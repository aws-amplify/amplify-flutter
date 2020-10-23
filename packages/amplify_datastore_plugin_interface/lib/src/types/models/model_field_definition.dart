import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

import 'auth_rule.dart';
import 'model_association.dart';
import 'model_field_type.dart';

class ModelFieldDefinition {
  String name;
  ModelFieldType type;
  bool isRequired;
  ModelAssociation association;
  List<AuthRule> authRules;

  ModelFieldDefinition({
    this.name,
    this.type,
    this.isRequired,
    this.association,
    this.authRules = const [],
  });

  static ModelFieldDefinition field(
      {@required QueryField key,
      bool isRequired = true,
      ModelFieldType ofType = const ModelFieldType(ModelFieldTypeEnum.string),
      ModelAssociation association,
      List<AuthRule> authRules = const []}) {
    return ModelFieldDefinition(
        name: key.fieldName,
        type: ofType,
        isRequired: isRequired,
        association: association,
        authRules: authRules);
  }

  static ModelFieldDefinition idKey(QueryField key) {
    return id(name: key.fieldName);
  }

  static ModelFieldDefinition id({String name = "id"}) {
    return ModelFieldDefinition(
      name: name,
      type: const ModelFieldType(ModelFieldTypeEnum.string),
      isRequired: true,
    );
  }

  static ModelFieldDefinition hasMany({
    @required QueryField key,
    bool isRequired = true,
    @required String ofModelName,
    @required QueryField associatedKey,
  }) {
    return field(
        key: key,
        isRequired: isRequired,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: ofModelName),
        association: ModelAssociation(
            associationType: ModelAssociationEnum.hasMany,
            associatedName: associatedKey.fieldName,
            associatedType: associatedKey.fieldType.ofModelName));
  }

  static ModelFieldDefinition hasOne({
    @required QueryField key,
    bool isRequired = true,
    @required String ofModelName,
    @required QueryField associatedKey,
  }) {
    return field(
        key: key,
        isRequired: isRequired,
        ofType:
            ModelFieldType(ModelFieldTypeEnum.model, ofModelName: ofModelName),
        association: ModelAssociation(
            associationType: ModelAssociationEnum.hasOne,
            associatedName: associatedKey.fieldName,
            associatedType: associatedKey.fieldType.ofModelName));
  }

  static ModelFieldDefinition belongsTo(
      {@required QueryField key,
      bool isRequired: true,
      @required String ofModelName,
      QueryField associatedKey,
      String targetName}) {
    // Extra code needed due to lack of nullability support
    String associatedName;
    String associatedType;

    if (associatedKey != null) {
      associatedName = associatedKey.fieldName;

      if (associatedKey.fieldType != null) {
        associatedType = associatedKey.fieldType.ofModelName;
      }
    }

    return field(
        key: key,
        isRequired: isRequired,
        ofType:
            ModelFieldType(ModelFieldTypeEnum.model, ofModelName: ofModelName),
        association: ModelAssociation(
            associationType: ModelAssociationEnum.belongsTo,
            targetName: targetName,
            associatedName: associatedKey?.fieldName, // associatedName,
            associatedType: associatedKey?.fieldType?.ofModelName));
  }

  build() {
    return ModelField(
        name: name,
        type: type,
        isRequired: isRequired,
        association: association,
        authRules: authRules);
  }
}
