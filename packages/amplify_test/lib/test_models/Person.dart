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

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/// This is an auto generated class representing the Person type in your schema.
@immutable
class Person extends Model {
  static const classType = _PersonModelType();
  final String id;
  final String? _name;
  final List<Address>? _propertiesAddresses;
  final Contact? _contact;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  PersonModelIdentifier get modelIdentifier {
    return PersonModelIdentifier(id: id);
  }

  String get name {
    try {
      return _name!;
    } catch (e) {
      throw AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  List<Address>? get propertiesAddresses {
    return _propertiesAddresses;
  }

  Contact get contact {
    try {
      return _contact!;
    } catch (e) {
      throw AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const Person._internal(
      {required this.id,
      required name,
      propertiesAddresses,
      required contact,
      createdAt,
      updatedAt})
      : _name = name,
        _propertiesAddresses = propertiesAddresses,
        _contact = contact,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory Person(
      {String? id,
      required String name,
      List<Address>? propertiesAddresses,
      required Contact contact}) {
    return Person._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        propertiesAddresses: propertiesAddresses != null
            ? List<Address>.unmodifiable(propertiesAddresses)
            : propertiesAddresses,
        contact: contact);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Person &&
        id == other.id &&
        _name == other._name &&
        DeepCollectionEquality()
            .equals(_propertiesAddresses, other._propertiesAddresses) &&
        _contact == other._contact;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("Person {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("propertiesAddresses=" +
        (_propertiesAddresses != null
            ? _propertiesAddresses!.toString()
            : "null") +
        ", ");
    buffer.write(
        "contact=" + (_contact != null ? _contact!.toString() : "null") + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  Person copyWith(
      {String? name, List<Address>? propertiesAddresses, Contact? contact}) {
    return Person._internal(
        id: id,
        name: name ?? this.name,
        propertiesAddresses: propertiesAddresses ?? this.propertiesAddresses,
        contact: contact ?? this.contact);
  }

  Person.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _propertiesAddresses = json['propertiesAddresses'] is List
            ? (json['propertiesAddresses'] as List)
                .where((e) => e != null)
                .map((e) => Address.fromJson(
                    Map<String, dynamic>.from(e['serializedData'])))
                .toList()
            : null,
        _contact = json['contact']?['serializedData'] != null
            ? Contact.fromJson(
                Map<String, dynamic>.from(json['contact']['serializedData']))
            : null,
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': _name,
        'propertiesAddresses':
            _propertiesAddresses?.map((Address? e) => e?.toJson()).toList(),
        'contact': _contact?.toJson(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  Map<String, Object?> toMap() => {
        'id': id,
        'name': _name,
        'propertiesAddresses': _propertiesAddresses,
        'contact': _contact,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt
      };

  static final QueryModelIdentifier<PersonModelIdentifier> MODEL_IDENTIFIER =
      QueryModelIdentifier<PersonModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField PROPERTIESADDRESSES =
      QueryField(fieldName: "propertiesAddresses");
  static final QueryField CONTACT = QueryField(fieldName: "contact");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Person";
    modelSchemaDefinition.pluralName = "People";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Person.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
        fieldName: 'propertiesAddresses',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.embeddedCollection,
            ofCustomTypeName: 'Address')));

    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
        fieldName: 'contact',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.embedded,
            ofCustomTypeName: 'Contact')));

    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
        fieldName: 'createdAt',
        isRequired: false,
        isReadOnly: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
        fieldName: 'updatedAt',
        isRequired: false,
        isReadOnly: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));
  });
}

class _PersonModelType extends ModelType<Person> {
  const _PersonModelType();

  @override
  Person fromJson(Map<String, dynamic> jsonData) {
    return Person.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'Person';
  }
}

/// This is an auto generated class representing the model identifier
/// of [Person] in your schema.
@immutable
class PersonModelIdentifier implements ModelIdentifier<Person> {
  final String id;

  /// Create an instance of PersonModelIdentifier using [id] the primary key.
  const PersonModelIdentifier({required this.id});

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
  String toString() => 'PersonModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is PersonModelIdentifier && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
