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

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code, implicit_dynamic_map_literal, implicit_dynamic_parameter, implicit_dynamic_type

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the Person type in your schema. */
@immutable
class Person {
  final String? _name;
  final List<Address>? _propertiesAddresses;
  final Contact? _contact;

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

  List<Address>? get propertiesAddresses {
    return _propertiesAddresses;
  }

  Contact get contact {
    try {
      return _contact!;
    } catch (e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  const Person._internal({required name, propertiesAddresses, required contact})
      : _name = name,
        _propertiesAddresses = propertiesAddresses,
        _contact = contact;

  factory Person(
      {required String name,
      List<Address>? propertiesAddresses,
      required Contact contact}) {
    return Person._internal(
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
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("propertiesAddresses=" +
        (_propertiesAddresses != null
            ? _propertiesAddresses!.toString()
            : "null") +
        ", ");
    buffer
        .write("contact=" + (_contact != null ? _contact!.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  Person copyWith(
      {String? name, List<Address>? propertiesAddresses, Contact? contact}) {
    return Person._internal(
        name: name ?? this.name,
        propertiesAddresses: propertiesAddresses ?? this.propertiesAddresses,
        contact: contact ?? this.contact);
  }

  Person.fromJson(Map<String, dynamic> json)
      : _name = json['name'],
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
            : null;

  Map<String, dynamic> toJson() => {
        'name': _name,
        'propertiesAddresses':
            _propertiesAddresses?.map((Address? e) => e?.toJson()).toList(),
        'contact': _contact?.toJson()
      };

  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Person";
    modelSchemaDefinition.pluralName = "People";

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'name',
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
  });
}
