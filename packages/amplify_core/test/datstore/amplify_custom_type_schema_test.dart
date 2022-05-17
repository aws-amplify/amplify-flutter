/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the 'License').
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the 'license' file accompanying this file. This file is distributed
 * on an 'AS IS' BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_test/flutter_test.dart';

import 'testData/ModelProvider.dart';

/*
  Tests use below schema

  type Phone {
    country: String!
    area: String!
    number: String!
  }
  type Address {
    line1: String!
    line2: String
    city: String!
    state: String!
    postalCode: String!
  }
  type Contact {
    email: String!
    phone: Phone!
    mailingAddresses: [Address]
  }
*/
void main() {
  final expectedContactFields = {
    'email': const ModelField(
        name: 'email',
        isRequired: true,
        type: ModelFieldType(ModelFieldTypeEnum.string)),
    'phone': const ModelField(
        name: 'phone',
        isRequired: true,
        type: ModelFieldType(ModelFieldTypeEnum.embedded,
            ofCustomTypeName: 'Phone')),
    'mailingAddresses': const ModelField(
        name: 'mailingAddresses',
        isRequired: false,
        isArray: true,
        type: ModelFieldType(ModelFieldTypeEnum.embeddedCollection,
            ofCustomTypeName: 'Address')),
  };

  final expectedPhoneFields = {
    'country': const ModelField(
        name: 'country',
        isRequired: true,
        type: ModelFieldType(ModelFieldTypeEnum.string)),
    'area': const ModelField(
        name: 'area',
        isRequired: true,
        type: ModelFieldType(ModelFieldTypeEnum.string)),
    'number': const ModelField(
        name: 'number',
        isRequired: true,
        type: ModelFieldType(ModelFieldTypeEnum.string)),
  };

  final expectedAddressFields = {
    'line1': const ModelField(
        name: 'line1',
        isRequired: true,
        type: ModelFieldType(ModelFieldTypeEnum.string)),
    'line2': const ModelField(
        name: 'line2',
        isRequired: false,
        type: ModelFieldType(ModelFieldTypeEnum.string)),
    'city': const ModelField(
        name: 'city',
        isRequired: true,
        type: ModelFieldType(ModelFieldTypeEnum.string)),
    'state': const ModelField(
        name: 'state',
        isRequired: true,
        type: ModelFieldType(ModelFieldTypeEnum.string)),
    'postalCode': const ModelField(
        name: 'postalCode',
        isRequired: true,
        type: ModelFieldType(ModelFieldTypeEnum.string)),
  };

  test('Generated Dart class Contact should provide correct schema', () {
    final contactSchema = Contact.schema;
    expect(contactSchema.name, 'Contact');
    expect(contactSchema.pluralName, 'Contacts');
    expect(contactSchema.authRules, null);
    expect(contactSchema.fields is Map, true);

    final fields = contactSchema.fields!;

    fields.forEach((fieldName, field) {
      expect(field, expectedContactFields[fieldName]);
    });
  });

  test('Generated Dart class Phone should provide correct schema', () {
    final phoneSchema = Phone.schema;
    expect(phoneSchema.name, 'Phone');
    expect(phoneSchema.pluralName, 'Phones');
    expect(phoneSchema.authRules, null);
    expect(phoneSchema.fields is Map, true);

    final fields = phoneSchema.fields!;

    fields.forEach((fieldName, field) {
      expect(field, expectedPhoneFields[fieldName]);
    });
  });

  test('Generated Dart class Address should provide correct schema', () {
    final addressSchema = Address.schema;
    expect(addressSchema.name, 'Address');
    expect(addressSchema.pluralName, 'Addresses');
    expect(addressSchema.authRules, null);
    expect(addressSchema.fields is Map, true);

    final fields = addressSchema.fields!;

    fields.forEach((fieldName, field) {
      expect(field, expectedAddressFields[fieldName]);
    });
  });
}
