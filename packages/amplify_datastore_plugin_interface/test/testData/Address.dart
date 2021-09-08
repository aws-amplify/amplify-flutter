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

/** This is an auto generated class representing the Address type in your schema. */
@immutable
class Address {
  final String? _line1;
  final String? _line2;
  final String? _city;
  final String? _state;
  final String? _postalCode;

  String get line1 {
    try {
      return _line1!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String? get line2 {
    return _line2;
  }

  String get city {
    try {
      return _city!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get state {
    try {
      return _state!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get postalCode {
    try {
      return _postalCode!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  const Address._internal(
      {required line1,
      line2,
      required city,
      required state,
      required postalCode})
      : _line1 = line1,
        _line2 = line2,
        _city = city,
        _state = state,
        _postalCode = postalCode;

  factory Address(
      {required String line1,
      String? line2,
      required String city,
      required String state,
      required String postalCode}) {
    return Address._internal(
        line1: line1,
        line2: line2,
        city: city,
        state: state,
        postalCode: postalCode);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Address &&
        _line1 == other._line1 &&
        _line2 == other._line2 &&
        _city == other._city &&
        _state == other._state &&
        _postalCode == other._postalCode;
  }

  @override
  int get hashCode => toString().hashCode;

  Address.fromJson(Map<String, dynamic> json)
      : _line1 = json['line1'],
        _line2 = json['line2'],
        _city = json['city'],
        _state = json['state'],
        _postalCode = json['postalCode'];

  Map<String, dynamic> toJson() => {
        'line1': _line1,
        'line2': _line2,
        'city': _city,
        'state': _state,
        'postalCode': _postalCode
      };

  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Address";
    modelSchemaDefinition.pluralName = "Addresses";

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'line1',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'line2',
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'city',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'state',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'postalCode',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}
