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


/** This is an auto generated class representing the TestTableOne type in your schema. */
class TestTableOne extends amplify_core.Model {
  static const classType = const _TestTableOneModelType();
  final String id;
  final String? _profile_id;
  final int? _count;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => modelIdentifier.serializeAsString();
  
  TestTableOneModelIdentifier get modelIdentifier {
    try {
      return TestTableOneModelIdentifier(
        profile_id: _profile_id!
      );
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get profile_id {
    try {
      return _profile_id!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int? get count {
    return _count;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const TestTableOne._internal({required this.id, required profile_id, count, createdAt, updatedAt}): _profile_id = profile_id, _count = count, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory TestTableOne({String? id, required String profile_id, int? count}) {
    return TestTableOne._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      profile_id: profile_id,
      count: count);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestTableOne &&
      id == other.id &&
      _profile_id == other._profile_id &&
      _count == other._count;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("TestTableOne {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("profile_id=" + "$_profile_id" + ", ");
    buffer.write("count=" + (_count != null ? _count!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  TestTableOne copyWith({String? id, int? count}) {
    return TestTableOne._internal(
      id: id ?? this.id,
      profile_id: profile_id,
      count: count ?? this.count);
  }
  
  TestTableOne copyWithModelFieldValues({
    ModelFieldValue<String>? id,
    ModelFieldValue<int?>? count
  }) {
    return TestTableOne._internal(
      id: id == null ? this.id : id.value,
      profile_id: profile_id,
      count: count == null ? this.count : count.value
    );
  }
  
  TestTableOne.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _profile_id = json['profile_id'],
      _count = (json['count'] as num?)?.toInt(),
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'profile_id': _profile_id, 'count': _count, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'profile_id': _profile_id,
    'count': _count,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<TestTableOneModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<TestTableOneModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final PROFILE_ID = amplify_core.QueryField(fieldName: "profile_id");
  static final COUNT = amplify_core.QueryField(fieldName: "count");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "TestTableOne";
    modelSchemaDefinition.pluralName = "TestTableOnes";
    
    modelSchemaDefinition.authRules = [
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
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["profile_id"], name: null)
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TestTableOne.PROFILE_ID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TestTableOne.COUNT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _TestTableOneModelType extends amplify_core.ModelType<TestTableOne> {
  const _TestTableOneModelType();
  
  @override
  TestTableOne fromJson(Map<String, dynamic> jsonData) {
    return TestTableOne.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'TestTableOne';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [TestTableOne] in your schema.
 */
class TestTableOneModelIdentifier implements amplify_core.ModelIdentifier<TestTableOne> {
  final String profile_id;

  /** Create an instance of TestTableOneModelIdentifier using [profile_id] the primary key. */
  const TestTableOneModelIdentifier({
    required this.profile_id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'profile_id': profile_id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'TestTableOneModelIdentifier(profile_id: $profile_id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is TestTableOneModelIdentifier &&
      profile_id == other.profile_id;
  }
  
  @override
  int get hashCode =>
    profile_id.hashCode;
}