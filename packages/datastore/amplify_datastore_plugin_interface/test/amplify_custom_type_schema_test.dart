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

import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_core/src/types/models/mipr.dart';

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
    'email': ModelField(
      name: 'email',
      type: SchemaType.scalar(
        AppSyncScalar.string,
        isRequired: true,
      ),
    ),
    'phone': ModelField(
      name: 'phone',
      type: SchemaType.nonModel(
        'Phone',
        isRequired: true,
      ),
    ),
    'mailingAddresses': ModelField(
      name: 'mailingAddresses',
      type: SchemaType.list(
        SchemaType.nonModel(
          'Address',
        ),
        isRequired: false,
      ),
    ),
  };

  final expectedPhoneFields = {
    'country': ModelField(
      name: 'country',
      type: SchemaType.scalar(
        AppSyncScalar.string,
        isRequired: true,
      ),
    ),
    'area': ModelField(
      name: 'area',
      type: SchemaType.scalar(
        AppSyncScalar.string,
        isRequired: true,
      ),
    ),
    'number': ModelField(
      name: 'number',
      type: SchemaType.scalar(
        AppSyncScalar.string,
        isRequired: true,
      ),
    ),
  };

  final expectedAddressFields = {
    'line1': ModelField(
      name: 'line1',
      type: SchemaType.scalar(
        AppSyncScalar.string,
        isRequired: true,
      ),
    ),
    'line2': ModelField(
      name: 'line2',
      type: SchemaType.scalar(
        AppSyncScalar.string,
        isRequired: false,
      ),
    ),
    'city': ModelField(
      name: 'city',
      type: SchemaType.scalar(
        AppSyncScalar.string,
        isRequired: true,
      ),
    ),
    'state': ModelField(
      name: 'state',
      type: SchemaType.scalar(
        AppSyncScalar.string,
        isRequired: true,
      ),
    ),
    'postalCode': ModelField(
      name: 'postalCode',
      type: SchemaType.scalar(
        AppSyncScalar.string,
        isRequired: true,
      ),
    ),
  };

  test('Generated Dart class Contact should provide correct schema', () {
    final contactSchema = Contact.schema;
    expect(contactSchema.name, 'Contact');
    expect(contactSchema.pluralName, 'Contacts');
    expect(contactSchema.authRules, isEmpty);
    expect(contactSchema.fields, isNotEmpty);

    final fields = contactSchema.fields;

    fields.forEach((fieldName, field) {
      expect(field, expectedContactFields[fieldName]);
    });
  });

  test('Generated Dart class Phone should provide correct schema', () {
    final phoneSchema = Phone.schema;
    expect(phoneSchema.name, 'Phone');
    expect(phoneSchema.pluralName, 'Phones');
    expect(phoneSchema.authRules, isEmpty);
    expect(phoneSchema.fields, isNotEmpty);

    final fields = phoneSchema.fields;

    fields.forEach((fieldName, field) {
      expect(field, expectedPhoneFields[fieldName]);
    });
  });

  test('Generated Dart class Address should provide correct schema', () {
    final addressSchema = Address.schema;
    expect(addressSchema.name, 'Address');
    expect(addressSchema.pluralName, 'Addresses');
    expect(addressSchema.authRules, isEmpty);
    expect(addressSchema.fields, isNotEmpty);

    final fields = addressSchema.fields;

    fields.forEach((fieldName, field) {
      expect(field, expectedAddressFields[fieldName]);
    });
  });
}
