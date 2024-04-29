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

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, override_on_non_overriding_member, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'package:collection/collection.dart';

/** This is an auto generated class representing the Contact type in your schema. */
class Contact {
  final String? _email;
  final Phone? _phone;
  final List<Address>? _mailingAddresses;

  String get email {
    try {
      return _email!;
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  Phone get phone {
    try {
      return _phone!;
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: amplify_core.AmplifyExceptionMessages
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

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Contact {");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write(
        "phone=" + (_phone != null ? _phone!.toString() : "null") + ", ");
    buffer.write("mailingAddresses=" +
        (_mailingAddresses != null ? _mailingAddresses!.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  Contact copyWith(
      {String? email, Phone? phone, List<Address>? mailingAddresses}) {
    return Contact._internal(
        email: email ?? this.email,
        phone: phone ?? this.phone,
        mailingAddresses: mailingAddresses ?? this.mailingAddresses);
  }

  Contact copyWithModelFieldValues(
      {ModelFieldValue<String>? email,
      ModelFieldValue<Phone>? phone,
      ModelFieldValue<List<Address>?>? mailingAddresses}) {
    return Contact._internal(
        email: email == null ? this.email : email.value,
        phone: phone == null ? this.phone : phone.value,
        mailingAddresses: mailingAddresses == null
            ? this.mailingAddresses
            : mailingAddresses.value);
  }

  Contact.fromJson(Map<String, dynamic> json)
      : _email = json['email'],
        _phone = json['phone'] != null
            ? Phone.fromJson(new Map<String, dynamic>.from(json['phone']))
            : null,
        _mailingAddresses = json['mailingAddresses'] is List
            ? (json['mailingAddresses'] as List)
                .where((e) => e != null)
                .map((e) => Address.fromJson(new Map<String, dynamic>.from(e)))
                .toList()
            : null;

  Map<String, dynamic> toJson() => {
        'email': _email,
        'phone': _phone?.toJson(),
        'mailingAddresses':
            _mailingAddresses?.map((Address? e) => e?.toJson()).toList()
      };

  Map<String, Object?> toMap() =>
      {'email': _email, 'phone': _phone, 'mailingAddresses': _mailingAddresses};

  static var schema = amplify_core.Model.defineSchema(
      define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Contact";
    modelSchemaDefinition.pluralName = "Contacts";

    modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.customTypeField(
            fieldName: 'email',
            isRequired: true,
            ofType: amplify_core.ModelFieldType(
                amplify_core.ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
        fieldName: 'phone',
        isRequired: true,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.embedded,
            ofCustomTypeName: 'Phone')));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
        fieldName: 'mailingAddresses',
        isRequired: false,
        isArray: true,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.embeddedCollection,
            ofCustomTypeName: 'Address')));
  });
}
