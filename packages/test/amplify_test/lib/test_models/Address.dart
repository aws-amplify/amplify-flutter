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

/** This is an auto generated class representing the Address type in your schema. */
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
      throw amplify_core.AmplifyCodeGenModelException(
        amplify_core
            .AmplifyExceptionMessages
            .codeGenRequiredFieldForceCastExceptionMessage,
        recoverySuggestion: amplify_core
            .AmplifyExceptionMessages
            .codeGenRequiredFieldForceCastRecoverySuggestion,
        underlyingException: e.toString(),
      );
    }
  }

  String? get line2 {
    return _line2;
  }

  String get city {
    try {
      return _city!;
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
        amplify_core
            .AmplifyExceptionMessages
            .codeGenRequiredFieldForceCastExceptionMessage,
        recoverySuggestion: amplify_core
            .AmplifyExceptionMessages
            .codeGenRequiredFieldForceCastRecoverySuggestion,
        underlyingException: e.toString(),
      );
    }
  }

  String get state {
    try {
      return _state!;
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
        amplify_core
            .AmplifyExceptionMessages
            .codeGenRequiredFieldForceCastExceptionMessage,
        recoverySuggestion: amplify_core
            .AmplifyExceptionMessages
            .codeGenRequiredFieldForceCastRecoverySuggestion,
        underlyingException: e.toString(),
      );
    }
  }

  String get postalCode {
    try {
      return _postalCode!;
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
        amplify_core
            .AmplifyExceptionMessages
            .codeGenRequiredFieldForceCastExceptionMessage,
        recoverySuggestion: amplify_core
            .AmplifyExceptionMessages
            .codeGenRequiredFieldForceCastRecoverySuggestion,
        underlyingException: e.toString(),
      );
    }
  }

  const Address._internal({
    required line1,
    line2,
    required city,
    required state,
    required postalCode,
  }) : _line1 = line1,
       _line2 = line2,
       _city = city,
       _state = state,
       _postalCode = postalCode;

  factory Address({
    required String line1,
    String? line2,
    required String city,
    required String state,
    required String postalCode,
  }) {
    return Address._internal(
      line1: line1,
      line2: line2,
      city: city,
      state: state,
      postalCode: postalCode,
    );
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
    var buffer = new StringBuffer();

    buffer.write("Address {");
    buffer.write("line1=" + "$_line1" + ", ");
    buffer.write("line2=" + "$_line2" + ", ");
    buffer.write("city=" + "$_city" + ", ");
    buffer.write("state=" + "$_state" + ", ");
    buffer.write("postalCode=" + "$_postalCode");
    buffer.write("}");

    return buffer.toString();
  }

  Address copyWith({
    String? line1,
    String? line2,
    String? city,
    String? state,
    String? postalCode,
  }) {
    return Address._internal(
      line1: line1 ?? this.line1,
      line2: line2 ?? this.line2,
      city: city ?? this.city,
      state: state ?? this.state,
      postalCode: postalCode ?? this.postalCode,
    );
  }

  Address copyWithModelFieldValues({
    ModelFieldValue<String>? line1,
    ModelFieldValue<String?>? line2,
    ModelFieldValue<String>? city,
    ModelFieldValue<String>? state,
    ModelFieldValue<String>? postalCode,
  }) {
    return Address._internal(
      line1: line1 == null ? this.line1 : line1.value,
      line2: line2 == null ? this.line2 : line2.value,
      city: city == null ? this.city : city.value,
      state: state == null ? this.state : state.value,
      postalCode: postalCode == null ? this.postalCode : postalCode.value,
    );
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
    'postalCode': _postalCode,
  };

  Map<String, Object?> toMap() => {
    'line1': _line1,
    'line2': _line2,
    'city': _city,
    'state': _state,
    'postalCode': _postalCode,
  };

  static var schema = amplify_core.Model.defineSchema(
    define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
      modelSchemaDefinition.name = "Address";
      modelSchemaDefinition.pluralName = "Addresses";

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.customTypeField(
          fieldName: 'line1',
          isRequired: true,
          ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string,
          ),
        ),
      );

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.customTypeField(
          fieldName: 'line2',
          isRequired: false,
          ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string,
          ),
        ),
      );

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.customTypeField(
          fieldName: 'city',
          isRequired: true,
          ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string,
          ),
        ),
      );

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.customTypeField(
          fieldName: 'state',
          isRequired: true,
          ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string,
          ),
        ),
      );

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.customTypeField(
          fieldName: 'postalCode',
          isRequired: true,
          ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string,
          ),
        ),
      );
    },
  );
}
