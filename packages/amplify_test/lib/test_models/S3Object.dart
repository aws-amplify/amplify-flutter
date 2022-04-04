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

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code, implicit_dynamic_parameter, implicit_dynamic_map_literal, implicit_dynamic_type

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the S3Object type in your schema. */
@immutable
class S3Object {
  final String? _bucket;
  final String? _region;
  final String? _key;
  final FileMeta? _meta;

  String get bucket {
    try {
      return _bucket!;
    } catch (e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get region {
    try {
      return _region!;
    } catch (e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get key {
    try {
      return _key!;
    } catch (e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  FileMeta? get meta {
    return _meta;
  }

  const S3Object._internal(
      {required bucket, required region, required key, meta})
      : _bucket = bucket,
        _region = region,
        _key = key,
        _meta = meta;

  factory S3Object(
      {required String bucket,
      required String region,
      required String key,
      FileMeta? meta}) {
    return S3Object._internal(
        bucket: bucket, region: region, key: key, meta: meta);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is S3Object &&
        _bucket == other._bucket &&
        _region == other._region &&
        _key == other._key &&
        _meta == other._meta;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("S3Object {");
    buffer.write("bucket=" + "$_bucket" + ", ");
    buffer.write("region=" + "$_region" + ", ");
    buffer.write("key=" + "$_key" + ", ");
    buffer.write("meta=" + (_meta != null ? _meta!.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  S3Object copyWith(
      {String? bucket, String? region, String? key, FileMeta? meta}) {
    return S3Object._internal(
        bucket: bucket ?? this.bucket,
        region: region ?? this.region,
        key: key ?? this.key,
        meta: meta ?? this.meta);
  }

  S3Object.fromJson(Map<String, dynamic> json)
      : _bucket = json['bucket'],
        _region = json['region'],
        _key = json['key'],
        _meta = json['meta']?['serializedData'] != null
            ? FileMeta.fromJson(
                new Map<String, dynamic>.from(json['meta']['serializedData']))
            : null;

  Map<String, dynamic> toJson() => {
        'bucket': _bucket,
        'region': _region,
        'key': _key,
        'meta': _meta?.toJson()
      };

  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "S3Object";
    modelSchemaDefinition.pluralName = "S3Objects";

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'bucket',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'region',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'key',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
        fieldName: 'meta',
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.embedded,
            ofCustomTypeName: 'FileMeta')));
  });
}
