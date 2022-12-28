// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously, implicit_dynamic_parameter, implicit_dynamic_map_literal, implicit_dynamic_type

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/// This is an auto generated class representing the Contact type in your schema.
@immutable
class Contact {
  final String? _email;
  final Phone? _phone;
  final List<Address>? _mailingAddresses;

  String get email {
    try {
      return _email!;
    } catch (e) {
      throw AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  Phone get phone {
    try {
      return _phone!;
    } catch (e) {
      throw AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
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
    var buffer = StringBuffer();

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

  Contact.fromJson(Map<String, dynamic> json)
      : _email = json['email'],
        _phone = json['phone']?['serializedData'] != null
            ? Phone.fromJson(
                Map<String, dynamic>.from(json['phone']['serializedData']))
            : null,
        _mailingAddresses = json['mailingAddresses'] is List
            ? (json['mailingAddresses'] as List)
                .where((e) => e != null)
                .map((e) => Address.fromJson(
                    Map<String, dynamic>.from(e['serializedData'])))
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
