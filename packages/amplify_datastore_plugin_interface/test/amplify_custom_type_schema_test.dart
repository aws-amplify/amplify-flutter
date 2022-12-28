// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';
import 'package:flutter_test/flutter_test.dart';

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
    'email': ModelField(
        name: 'email',
        isRequired: true,
        type: ModelFieldType(ModelFieldTypeEnum.string)),
    'phone': ModelField(
        name: 'phone',
        isRequired: true,
        type: ModelFieldType(ModelFieldTypeEnum.embedded,
            ofCustomTypeName: 'Phone')),
    'mailingAddresses': ModelField(
        name: 'mailingAddresses',
        isRequired: false,
        isArray: true,
        type: ModelFieldType(ModelFieldTypeEnum.embeddedCollection,
            ofCustomTypeName: 'Address')),
  };

  final expectedPhoneFields = {
    'country': ModelField(
        name: 'country',
        isRequired: true,
        type: ModelFieldType(ModelFieldTypeEnum.string)),
    'area': ModelField(
        name: 'area',
        isRequired: true,
        type: ModelFieldType(ModelFieldTypeEnum.string)),
    'number': ModelField(
        name: 'number',
        isRequired: true,
        type: ModelFieldType(ModelFieldTypeEnum.string)),
  };

  final expectedAddressFields = {
    'line1': ModelField(
        name: 'line1',
        isRequired: true,
        type: ModelFieldType(ModelFieldTypeEnum.string)),
    'line2': ModelField(
        name: 'line2',
        isRequired: false,
        type: ModelFieldType(ModelFieldTypeEnum.string)),
    'city': ModelField(
        name: 'city',
        isRequired: true,
        type: ModelFieldType(ModelFieldTypeEnum.string)),
    'state': ModelField(
        name: 'state',
        isRequired: true,
        type: ModelFieldType(ModelFieldTypeEnum.string)),
    'postalCode': ModelField(
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
