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

/** This is an auto generated class representing the Person type in your schema. */
class Person extends amplify_core.Model {
  static const classType = const _PersonModelType();
  final String id;
  final String? _name;
  final List<Address>? _propertiesAddresses;
  final Contact? _contact;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

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
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: amplify_core.AmplifyExceptionMessages
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
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }

  amplify_core.TemporalDateTime? get updatedAt {
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
        id: id == null ? amplify_core.UUID.getUUID() : id,
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
    var buffer = new StringBuffer();

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

  Person copyWithModelFieldValues(
      {ModelFieldValue<String>? name,
      ModelFieldValue<List<Address>?>? propertiesAddresses,
      ModelFieldValue<Contact>? contact}) {
    return Person._internal(
        id: id,
        name: name == null ? this.name : name.value,
        propertiesAddresses: propertiesAddresses == null
            ? this.propertiesAddresses
            : propertiesAddresses.value,
        contact: contact == null ? this.contact : contact.value);
  }

  Person.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _propertiesAddresses = json['propertiesAddresses'] is List
            ? (json['propertiesAddresses'] as List)
                .where((e) => e != null)
                .map((e) => Address.fromJson(new Map<String, dynamic>.from(e)))
                .toList()
            : null,
        _contact = json['contact'] != null
            ? Contact.fromJson(new Map<String, dynamic>.from(json['contact']))
            : null,
        _createdAt = json['createdAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['updatedAt'])
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

  static final amplify_core.QueryModelIdentifier<PersonModelIdentifier>
      MODEL_IDENTIFIER =
      amplify_core.QueryModelIdentifier<PersonModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final PROPERTIESADDRESSES =
      amplify_core.QueryField(fieldName: "propertiesAddresses");
  static final CONTACT = amplify_core.QueryField(fieldName: "contact");
  static var schema = amplify_core.Model.defineSchema(
      define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Person";
    modelSchemaDefinition.pluralName = "People";

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: Person.NAME,
        isRequired: true,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
        fieldName: 'propertiesAddresses',
        isRequired: false,
        isArray: true,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.embeddedCollection,
            ofCustomTypeName: 'Address')));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
        fieldName: 'contact',
        isRequired: true,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.embedded,
            ofCustomTypeName: 'Contact')));

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

class _PersonModelType extends amplify_core.ModelType<Person> {
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

/**
 * This is an auto generated class representing the model identifier
 * of [Person] in your schema.
 */
class PersonModelIdentifier implements amplify_core.ModelIdentifier<Person> {
  final String id;

  /** Create an instance of PersonModelIdentifier using [id] the primary key. */
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
