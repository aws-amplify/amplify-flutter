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

/** This is an auto generated class representing the Contact type in your schema. */
@immutable
class Contact {
  final String? _email;
  final Phone? _phone;
  final List<Address>? _mailingAddresses;

  String get email {
    try {
      return _email!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  Phone get phone {
    try {
      return _phone!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  List<Address>? get mailingAddresses {
    return _mailingAddresses;
  }

  const Contact._internal({required email, required phone, mailingAddresses})
      : _email = email,
        _phone = phone,
        _mailingAddresses = mailingAddresses;

  factory Contact(
      {required String email,
      required Phone phone,
      List<Address>? mailingAddresses}) {
    return Contact._internal(
        email: email,
        phone: phone,
        mailingAddresses: mailingAddresses != null
            ? List<Address>.unmodifiable(mailingAddresses)
            : mailingAddresses);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Contact &&
        _email == other._email &&
        _phone == other._phone &&
        DeepCollectionEquality()
            .equals(_mailingAddresses, other._mailingAddresses);
  }

  @override
  int get hashCode => toString().hashCode;

  Contact.fromJson(Map<String, dynamic> json)
      : _email = json['email'],
        _phone = json['phone']?['serializedData'] != null
            ? Phone.fromJson(
                new Map<String, dynamic>.from(json['phone']['serializedData']))
            : null,
        _mailingAddresses = json['mailingAddresses'] is List
            ? (json['mailingAddresses'] as List)
                .where((e) => e != null)
                .map((e) => Address.fromJson(
                    new Map<String, dynamic>.from(e['serializedData'])))
                .toList()
            : null;

  Map<String, dynamic> toJson() => {
        'email': _email,
        'phone': _phone?.toJson(),
        'mailingAddresses':
            _mailingAddresses?.map((Address? e) => e?.toJson()).toList()
      };

  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Contact";
    modelSchemaDefinition.pluralName = "Contacts";

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'email',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
        fieldName: 'phone',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.embedded,
            ofCustomTypeName: 'Phone')));

    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
        fieldName: 'mailingAddresses',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.embeddedCollection,
            ofCustomTypeName: 'Address')));
  });
}
