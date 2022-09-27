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

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/// This is an auto generated class representing the SimpleCustomType type in your schema.
@immutable
class SimpleCustomType {
  final String? _foo;

  String get foo {
    try {
      return _foo!;
    } catch (e) {
      throw DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  const SimpleCustomType._internal({required foo}) : _foo = foo;

  factory SimpleCustomType({required String foo}) {
    return SimpleCustomType._internal(foo: foo);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimpleCustomType && _foo == other._foo;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("SimpleCustomType {");
    buffer.write("foo=" + "$_foo");
    buffer.write("}");

    return buffer.toString();
  }

  SimpleCustomType copyWith({String? foo}) {
    return SimpleCustomType._internal(foo: foo ?? this.foo);
  }

  SimpleCustomType.fromJson(Map<String, dynamic> json) : _foo = json['foo'];

  Map<String, dynamic> toJson() => {'foo': _foo};

  static var schema = Model.defineSchema(
      define: (ModelTypeDefinitionBuilder modelSchemaDefinition) {
    modelSchemaDefinition.name = "SimpleCustomType";
    modelSchemaDefinition.pluralName = "SimpleCustomTypes";

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'foo',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}
