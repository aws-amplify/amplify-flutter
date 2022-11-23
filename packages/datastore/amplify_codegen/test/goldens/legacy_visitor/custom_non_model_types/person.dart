// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: non_constant_identifier_names

library models.person;

import 'package:amplify_core/amplify_core.dart';

import 'address.dart';
import 'phone.dart';

class PersonType extends ModelType<String, Person, PartialPerson> {
  const PersonType();

  @override
  T fromJson<T extends PartialModel<String, Person>>(
    Map<String, Object?> json,
  ) {
    if (T == Person || T == Model<String, Person>) {
      return Person.fromJson(json) as T;
    }
    if (T == RemotePerson || T == RemoteModel<String, Person>) {
      return _RemotePerson.fromJson(json) as T;
    }
    return _PartialPerson.fromJson(json) as T;
  }

  @override
  String get modelName => 'Person';
}

class PersonQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const PersonQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, Person>? _root;

  /// Query field for the [Person.name] field.
  QueryField<ModelIdentifier, M, String> get $name =>
      NestedQueryField<ModelIdentifier, M, String, Person, String>(
        const QueryField<String, Person, String>(fieldName: 'name'),
        root: _root,
      );

  /// Query field for the [Person.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, Person, TemporalDateTime>(
        const QueryField<String, Person, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [Person.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, Person, TemporalDateTime>(
        const QueryField<String, Person, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [Person.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, Person, String>(
        const QueryField<String, Person, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [Person] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, Person, String>(
        const QueryField<String, Person, String>(fieldName: 'modelIdentifier'),
        root: _root,
      );
}

abstract class PartialPerson extends PartialModel<String, Person>
    with AWSEquatable<PartialPerson> {
  const PartialPerson._();

  String? get name;
  Phone? get phone;
  List<Address?>? get mailingAddresses;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  String get id;
  @override
  String get modelIdentifier => id;
  @override
  PersonType get modelType => Person.classType;
  @override
  List<Object?> get props => [
        name,
        phone,
        mailingAddresses,
        createdAt,
        updatedAt,
        id,
      ];
  @override
  Map<String, Object?> toJson() => {
        'name': name,
        'phone': phone?.toJson(),
        'mailingAddresses':
            mailingAddresses?.map((el) => el?.toJson()).toList(),
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'id': id,
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'Person';
}

class _PartialPerson extends PartialPerson {
  const _PartialPerson({
    this.name,
    this.phone,
    this.mailingAddresses,
    this.createdAt,
    this.updatedAt,
    required this.id,
  }) : super._();

  factory _PartialPerson.fromJson(Map<String, Object?> json) {
    final name = json['name'] == null ? null : (json['name'] as String);
    final phone = json['phone'] == null
        ? null
        : Phone.fromJson((json['phone'] as Map<String, Object?>));
    final mailingAddresses = json['mailingAddresses'] == null
        ? null
        : (json['mailingAddresses'] as List<Object?>)
            .cast<Map<String, Object?>?>()
            .map((el) => el == null ? null : Address.fromJson(el))
            .toList();
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Person',
            'id',
          ))
        : (json['id'] as String);
    return _PartialPerson(
      name: name,
      phone: phone,
      mailingAddresses: mailingAddresses,
      createdAt: createdAt,
      updatedAt: updatedAt,
      id: id,
    );
  }

  @override
  final String? name;

  @override
  final Phone? phone;

  @override
  final List<Address?>? mailingAddresses;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String id;
}

abstract class Person extends PartialPerson implements Model<String, Person> {
  factory Person({
    required String name,
    required Phone phone,
    List<Address?>? mailingAddresses,
    String? id,
  }) = _Person;

  const Person._() : super._();

  factory Person.fromJson(Map<String, Object?> json) {
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'Person',
            'name',
          ))
        : (json['name'] as String);
    final phone = json['phone'] == null
        ? (throw ModelFieldError(
            'Person',
            'phone',
          ))
        : Phone.fromJson((json['phone'] as Map<String, Object?>));
    final mailingAddresses = json['mailingAddresses'] == null
        ? null
        : (json['mailingAddresses'] as List<Object?>)
            .cast<Map<String, Object?>?>()
            .map((el) => el == null ? null : Address.fromJson(el))
            .toList();
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Person',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Person',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Person',
            'id',
          ))
        : (json['id'] as String);
    return _Person._(
      name: name,
      phone: phone,
      mailingAddresses: mailingAddresses,
      createdAt: createdAt,
      updatedAt: updatedAt,
      id: id,
    );
  }

  static const PersonType classType = PersonType();

  static const PersonQueryFields<String, Person> _queryFields =
      PersonQueryFields();

  @override
  String get name;

  /// Query field for the [name] field.
  QueryField<String, Person, String> get $name => _queryFields.$name;

  /// Query field for the [name] field.
  @Deprecated(r'Use $name instead')
  QueryField<String, Person, String> get NAME => $name;
  @override
  Phone get phone;
  @override
  List<Address?>? get mailingAddresses;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;
  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, Person, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, Person, String> get ID => $id;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, Person, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, Person, String> get MODEL_IDENTIFIER => $modelIdentifier;
  Person copyWith({
    String? name,
    Phone? phone,
    List<Address?>? mailingAddresses,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? id,
  }) {
    return _Person._(
      name: name ?? this.name,
      phone: phone ?? this.phone,
      mailingAddresses: mailingAddresses ?? this.mailingAddresses,
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
      id: id ?? this.id,
    );
  }

  @override
  T valueFor<T extends Object?>(QueryField<String, Person, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'name':
        value = name;
        break;
      case r'phone':
        value = phone;
        break;
      case r'mailingAddresses':
        value = mailingAddresses;
        break;
      case r'createdAt':
        value = createdAt;
        break;
      case r'updatedAt':
        value = updatedAt;
        break;
      case r'id':
        value = id;
        break;
    }
    assert(
      value is T,
      'Invalid field ${field.fieldName}: $value (expected $T)',
    );
    return value as T;
  }
}

class _Person extends Person {
  _Person({
    required this.name,
    required this.phone,
    this.mailingAddresses,
    String? id,
  })  : createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        id = id ?? uuid(),
        super._();

  const _Person._({
    required this.name,
    required this.phone,
    this.mailingAddresses,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
  }) : super._();

  @override
  final String name;

  @override
  final Phone phone;

  @override
  final List<Address?>? mailingAddresses;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String id;
}

abstract class RemotePerson extends Person
    implements RemoteModel<String, Person> {
  const RemotePerson._() : super._();
}

class _RemotePerson extends RemotePerson {
  const _RemotePerson({
    required this.name,
    required this.phone,
    this.mailingAddresses,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemotePerson.fromJson(Map<String, Object?> json) {
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'Person',
            'name',
          ))
        : (json['name'] as String);
    final phone = json['phone'] == null
        ? (throw ModelFieldError(
            'Person',
            'phone',
          ))
        : Phone.fromJson((json['phone'] as Map<String, Object?>));
    final mailingAddresses = json['mailingAddresses'] == null
        ? null
        : (json['mailingAddresses'] as List<Object?>)
            .cast<Map<String, Object?>?>()
            .map((el) => el == null ? null : Address.fromJson(el))
            .toList();
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Person',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Person',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Person',
            'id',
          ))
        : (json['id'] as String);
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'Person',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'Person',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'Person',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemotePerson(
      name: name,
      phone: phone,
      mailingAddresses: mailingAddresses,
      createdAt: createdAt,
      updatedAt: updatedAt,
      id: id,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final String name;

  @override
  final Phone phone;

  @override
  final List<Address?>? mailingAddresses;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String id;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
