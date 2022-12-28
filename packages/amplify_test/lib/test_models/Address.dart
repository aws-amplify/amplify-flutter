// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously, implicit_dynamic_parameter, implicit_dynamic_map_literal, implicit_dynamic_type

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';

/// This is an auto generated class representing the Address type in your schema.
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
      throw AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
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
      throw AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get state {
    try {
      return _state!;
    } catch (e) {
      throw AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get postalCode {
    try {
      return _postalCode!;
    } catch (e) {
      throw AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
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

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("Address {");
    buffer.write("line1=" + "$_line1" + ", ");
    buffer.write("line2=" + "$_line2" + ", ");
    buffer.write("city=" + "$_city" + ", ");
    buffer.write("state=" + "$_state" + ", ");
    buffer.write("postalCode=" + "$_postalCode");
    buffer.write("}");

    return buffer.toString();
  }

  Address copyWith(
      {String? line1,
      String? line2,
      String? city,
      String? state,
      String? postalCode}) {
    return Address._internal(
        line1: line1 ?? this.line1,
        line2: line2 ?? this.line2,
        city: city ?? this.city,
        state: state ?? this.state,
        postalCode: postalCode ?? this.postalCode);
  }

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
