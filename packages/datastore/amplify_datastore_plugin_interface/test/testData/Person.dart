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

/** This is an auto generated class representing the Person type in your schema. */
@immutable
class Person extends Model {
  static const classType = const _PersonModelType();
  final String id;
  final String? _name;
  final List<Address>? _propertiesAddresses;
  final Contact? _contact;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

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

  List<Address>? get propertiesAddresses {
    return _propertiesAddresses;
  }

  Contact get contact {
    try {
      return _contact!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const Person._internal(
      {required this.id,
      required name,
      propertiesAddresses,
      required contact,
      createdAt,
      updatedAt})
      : _name = name,
        _propertiesAddresses = propertiesAddresses,
        _contact = contact,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory Person(
      {String? id,
      required String name,
      List<Address>? propertiesAddresses,
      required Contact contact}) {
    return Person._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        propertiesAddresses: propertiesAddresses != null
            ? List<Address>.unmodifiable(propertiesAddresses)
            : propertiesAddresses,
        contact: contact);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Person &&
        id == other.id &&
        _name == other._name &&
        DeepCollectionEquality()
            .equals(_propertiesAddresses, other._propertiesAddresses) &&
        _contact == other._contact;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Person {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("propertiesAddresses=" +
        (_propertiesAddresses != null
            ? _propertiesAddresses!.toString()
            : "null") +
        ", ");
    buffer.write(
        "contact=" + (_contact != null ? _contact!.toString() : "null") + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  Person copyWith(
      {String? id,
      String? name,
      List<Address>? propertiesAddresses,
      Contact? contact}) {
    return Person._internal(
        id: id ?? this.id,
        name: name ?? this.name,
        propertiesAddresses: propertiesAddresses ?? this.propertiesAddresses,
        contact: contact ?? this.contact);
  }

  Person.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _propertiesAddresses = json['propertiesAddresses'] is List
            ? (json['propertiesAddresses'] as List)
                .where((e) => e != null)
                .map((e) => Address.fromJson(
                    new Map<String, dynamic>.from(e['serializedData'])))
                .toList()
            : null,
        _contact = json['contact']?['serializedData'] != null
            ? Contact.fromJson(new Map<String, dynamic>.from(
                json['contact']['serializedData']))
            : null,
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': _name,
        'propertiesAddresses':
            _propertiesAddresses?.map((Address? e) => e?.toJson()).toList(),
        'contact': _contact?.toJson(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryField ID = QueryField(fieldName: "person.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField PROPERTIESADDRESSES =
      QueryField(fieldName: "propertiesAddresses");
  static final QueryField CONTACT = QueryField(fieldName: "contact");
  static var schema = Model.defineSchema(
      define: (ModelTypeDefinitionBuilder modelSchemaDefinition) {
    modelSchemaDefinition.name = "Person";
    modelSchemaDefinition.pluralName = "People";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Person.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
        fieldName: 'propertiesAddresses',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.embeddedCollection,
            ofCustomTypeName: 'Address')));

    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
        fieldName: 'contact',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.embedded,
            ofCustomTypeName: 'Contact')));

    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
        fieldName: 'createdAt',
        isRequired: false,
        isReadOnly: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
        fieldName: 'updatedAt',
        isRequired: false,
        isReadOnly: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));
  });
}

class _PersonModelType extends ModelType<Person> {
  const _PersonModelType();

  @override
  Person fromJson(Map<String, dynamic> jsonData) {
    return Person.fromJson(jsonData);
  }
}
