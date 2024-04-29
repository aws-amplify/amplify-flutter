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

/** This is an auto generated class representing the Sample type in your schema. */
class Sample extends amplify_core.Model {
  static const classType = const _SampleModelType();
  final String id;
  final String? _name;
  final int? _number;
  final bool? _flag;
  final amplify_core.TemporalTime? _date;
  final double? _rootbeer;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  SampleModelIdentifier get modelIdentifier {
    return SampleModelIdentifier(id: id);
  }

  String? get name {
    return _name;
  }

  int? get number {
    return _number;
  }

  bool? get flag {
    return _flag;
  }

  amplify_core.TemporalTime? get date {
    return _date;
  }

  double? get rootbeer {
    return _rootbeer;
  }

  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }

  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const Sample._internal(
      {required this.id,
      name,
      number,
      flag,
      date,
      rootbeer,
      createdAt,
      updatedAt})
      : _name = name,
        _number = number,
        _flag = flag,
        _date = date,
        _rootbeer = rootbeer,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory Sample(
      {String? id,
      String? name,
      int? number,
      bool? flag,
      amplify_core.TemporalTime? date,
      double? rootbeer}) {
    return Sample._internal(
        id: id == null ? amplify_core.UUID.getUUID() : id,
        name: name,
        number: number,
        flag: flag,
        date: date,
        rootbeer: rootbeer);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Sample &&
        id == other.id &&
        _name == other._name &&
        _number == other._number &&
        _flag == other._flag &&
        _date == other._date &&
        _rootbeer == other._rootbeer;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Sample {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write(
        "number=" + (_number != null ? _number!.toString() : "null") + ", ");
    buffer.write("flag=" + (_flag != null ? _flag!.toString() : "null") + ", ");
    buffer.write("date=" + (_date != null ? _date!.format() : "null") + ", ");
    buffer.write("rootbeer=" +
        (_rootbeer != null ? _rootbeer!.toString() : "null") +
        ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  Sample copyWith(
      {String? name,
      int? number,
      bool? flag,
      amplify_core.TemporalTime? date,
      double? rootbeer}) {
    return Sample._internal(
        id: id,
        name: name ?? this.name,
        number: number ?? this.number,
        flag: flag ?? this.flag,
        date: date ?? this.date,
        rootbeer: rootbeer ?? this.rootbeer);
  }

  Sample copyWithModelFieldValues(
      {ModelFieldValue<String?>? name,
      ModelFieldValue<int?>? number,
      ModelFieldValue<bool?>? flag,
      ModelFieldValue<amplify_core.TemporalTime?>? date,
      ModelFieldValue<double?>? rootbeer}) {
    return Sample._internal(
        id: id,
        name: name == null ? this.name : name.value,
        number: number == null ? this.number : number.value,
        flag: flag == null ? this.flag : flag.value,
        date: date == null ? this.date : date.value,
        rootbeer: rootbeer == null ? this.rootbeer : rootbeer.value);
  }

  Sample.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _number = (json['number'] as num?)?.toInt(),
        _flag = json['flag'],
        _date = json['date'] != null
            ? amplify_core.TemporalTime.fromString(json['date'])
            : null,
        _rootbeer = (json['rootbeer'] as num?)?.toDouble(),
        _createdAt = json['createdAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': _name,
        'number': _number,
        'flag': _flag,
        'date': _date?.format(),
        'rootbeer': _rootbeer,
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  Map<String, Object?> toMap() => {
        'id': id,
        'name': _name,
        'number': _number,
        'flag': _flag,
        'date': _date,
        'rootbeer': _rootbeer,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt
      };

  static final amplify_core.QueryModelIdentifier<SampleModelIdentifier>
      MODEL_IDENTIFIER =
      amplify_core.QueryModelIdentifier<SampleModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final NUMBER = amplify_core.QueryField(fieldName: "number");
  static final FLAG = amplify_core.QueryField(fieldName: "flag");
  static final DATE = amplify_core.QueryField(fieldName: "date");
  static final ROOTBEER = amplify_core.QueryField(fieldName: "rootbeer");
  static var schema = amplify_core.Model.defineSchema(
      define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Sample";
    modelSchemaDefinition.pluralName = "Samples";

    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
          authStrategy: amplify_core.AuthStrategy.PUBLIC,
          provider: amplify_core.AuthRuleProvider.APIKEY,
          operations: const [amplify_core.ModelOperation.READ]),
      amplify_core.AuthRule(
          authStrategy: amplify_core.AuthStrategy.PUBLIC,
          provider: amplify_core.AuthRuleProvider.IAM,
          operations: const [amplify_core.ModelOperation.READ]),
      amplify_core.AuthRule(
          authStrategy: amplify_core.AuthStrategy.PRIVATE,
          provider: amplify_core.AuthRuleProvider.IAM,
          operations: const [amplify_core.ModelOperation.READ]),
      amplify_core.AuthRule(
          authStrategy: amplify_core.AuthStrategy.PRIVATE,
          provider: amplify_core.AuthRuleProvider.USERPOOLS,
          operations: const [amplify_core.ModelOperation.READ]),
      amplify_core.AuthRule(
          authStrategy: amplify_core.AuthStrategy.OWNER,
          ownerField: "owner",
          identityClaim: "cognito:username",
          provider: amplify_core.AuthRuleProvider.USERPOOLS,
          operations: const [
            amplify_core.ModelOperation.CREATE,
            amplify_core.ModelOperation.READ,
            amplify_core.ModelOperation.UPDATE,
            amplify_core.ModelOperation.DELETE
          ])
    ];

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: Sample.NAME,
        isRequired: false,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: Sample.NUMBER,
        isRequired: false,
        ofType:
            amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: Sample.FLAG,
        isRequired: false,
        ofType:
            amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: Sample.DATE,
        isRequired: false,
        ofType:
            amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.time)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: Sample.ROOTBEER,
        isRequired: false,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.double)));

    modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.nonQueryField(
            fieldName: 'createdAt',
            isRequired: false,
            isReadOnly: true,
            ofType: amplify_core.ModelFieldType(
                amplify_core.ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.nonQueryField(
            fieldName: 'updatedAt',
            isRequired: false,
            isReadOnly: true,
            ofType: amplify_core.ModelFieldType(
                amplify_core.ModelFieldTypeEnum.dateTime)));
  });
}

class _SampleModelType extends amplify_core.ModelType<Sample> {
  const _SampleModelType();

  @override
  Sample fromJson(Map<String, dynamic> jsonData) {
    return Sample.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'Sample';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Sample] in your schema.
 */
class SampleModelIdentifier implements amplify_core.ModelIdentifier<Sample> {
  final String id;

  /** Create an instance of SampleModelIdentifier using [id] the primary key. */
  const SampleModelIdentifier({required this.id});

  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{'id': id});

  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
      .entries
      .map((entry) => (<String, dynamic>{entry.key: entry.value}))
      .toList();

  @override
  String serializeAsString() => serializeAsMap().values.join('#');

  @override
  String toString() => 'SampleModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is SampleModelIdentifier && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
