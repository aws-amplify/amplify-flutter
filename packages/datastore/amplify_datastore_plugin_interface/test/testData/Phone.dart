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

/** This is an auto generated class representing the Phone type in your schema. */
@immutable
class Phone {
  final String? _country;
  final String? _number;

  String get country {
    try {
      return _country!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get number {
    try {
      return _number!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  const Phone._internal({required country, required number})
      : _country = country,
        _number = number;

  factory Phone({required String country, required String number}) {
    return Phone._internal(country: country, number: number);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Phone &&
        _country == other._country &&
        _number == other._number;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Phone {");
    buffer.write("country=" + "$_country" + ", ");
    buffer.write("number=" + "$_number");
    buffer.write("}");

    return buffer.toString();
  }

  Phone copyWith({String? country, String? number}) {
    return Phone._internal(
        country: country ?? this.country, number: number ?? this.number);
  }

  Phone.fromJson(Map<String, dynamic> json)
      : _country = json['country'],
        _number = json['number'];

  Map<String, dynamic> toJson() => {'country': _country, 'number': _number};

  static var schema = Model.defineSchema(
      define: (ModelTypeDefinitionBuilder modelSchemaDefinition) {
    modelSchemaDefinition.name = "Phone";
    modelSchemaDefinition.pluralName = "Phones";

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'country',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'number',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}
