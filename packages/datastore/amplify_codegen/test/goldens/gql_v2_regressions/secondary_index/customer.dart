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

library models.customer;

import 'package:amplify_core/amplify_core.dart';

class CustomerType extends ModelType<String, Customer, PartialCustomer> {
  const CustomerType();

  @override
  T fromJson<T extends PartialModel<String, Customer>>(
    Map<String, Object?> json,
  ) {
    if (T == Customer || T == Model<String, Customer>) {
      return Customer.fromJson(json) as T;
    }
    if (T == RemoteCustomer || T == RemoteModel<String, Customer>) {
      return _RemoteCustomer.fromJson(json) as T;
    }
    return _PartialCustomer.fromJson(json) as T;
  }

  @override
  String get modelName => 'Customer';
}

class CustomerQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const CustomerQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, Customer>? _root;

  /// Query field for the [Customer.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, Customer, String>(
        const QueryField<String, Customer, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [Customer.name] field.
  QueryField<ModelIdentifier, M, String> get $name =>
      NestedQueryField<ModelIdentifier, M, String, Customer, String>(
        const QueryField<String, Customer, String>(fieldName: 'name'),
        root: _root,
      );

  /// Query field for the [Customer.phoneNumber] field.
  QueryField<ModelIdentifier, M, String?> get $phoneNumber =>
      NestedQueryField<ModelIdentifier, M, String, Customer, String?>(
        const QueryField<String, Customer, String?>(fieldName: 'phoneNumber'),
        root: _root,
      );

  /// Query field for the [Customer.accountRepresentativeId] field.
  QueryField<ModelIdentifier, M, String> get $accountRepresentativeId =>
      NestedQueryField<ModelIdentifier, M, String, Customer, String>(
        const QueryField<String, Customer, String>(
          fieldName: 'accountRepresentativeID',
        ),
        root: _root,
      );

  /// Query field for the [Customer.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, Customer, TemporalDateTime>(
        const QueryField<String, Customer, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [Customer.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, Customer, TemporalDateTime>(
        const QueryField<String, Customer, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [Customer] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, Customer, String>(
        const QueryField<String, Customer, String>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialCustomer extends PartialModel<String, Customer>
    with AWSEquatable<PartialCustomer> {
  const PartialCustomer._();

  String get id;
  String? get name;
  String? get phoneNumber;
  String? get accountRepresentativeId;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  CustomerType get modelType => Customer.classType;
  @override
  List<Object?> get props => [
        id,
        name,
        phoneNumber,
        accountRepresentativeId,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'name': name,
        'phoneNumber': phoneNumber,
        'accountRepresentativeID': accountRepresentativeId,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'Customer';
}

class _PartialCustomer extends PartialCustomer {
  const _PartialCustomer({
    required this.id,
    this.name,
    this.phoneNumber,
    this.accountRepresentativeId,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialCustomer.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Customer',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null ? null : (json['name'] as String);
    final phoneNumber =
        json['phoneNumber'] == null ? null : (json['phoneNumber'] as String);
    final accountRepresentativeId = json['accountRepresentativeID'] == null
        ? null
        : (json['accountRepresentativeID'] as String);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialCustomer(
      id: id,
      name: name,
      phoneNumber: phoneNumber,
      accountRepresentativeId: accountRepresentativeId,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String id;

  @override
  final String? name;

  @override
  final String? phoneNumber;

  @override
  final String? accountRepresentativeId;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class Customer extends PartialCustomer
    implements Model<String, Customer> {
  factory Customer({
    String? id,
    required String name,
    String? phoneNumber,
    required String accountRepresentativeId,
  }) = _Customer;

  const Customer._() : super._();

  factory Customer.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Customer',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'Customer',
            'name',
          ))
        : (json['name'] as String);
    final phoneNumber =
        json['phoneNumber'] == null ? null : (json['phoneNumber'] as String);
    final accountRepresentativeId = json['accountRepresentativeID'] == null
        ? (throw ModelFieldError(
            'Customer',
            'accountRepresentativeId',
          ))
        : (json['accountRepresentativeID'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Customer',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Customer',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _Customer._(
      id: id,
      name: name,
      phoneNumber: phoneNumber,
      accountRepresentativeId: accountRepresentativeId,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const CustomerType classType = CustomerType();

  static const CustomerQueryFields<String, Customer> _queryFields =
      CustomerQueryFields();

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, Customer, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, Customer, String> get ID => $id;
  @override
  String get name;

  /// Query field for the [name] field.
  QueryField<String, Customer, String> get $name => _queryFields.$name;

  /// Query field for the [name] field.
  @Deprecated(r'Use $name instead')
  QueryField<String, Customer, String> get NAME => $name;
  @override
  String? get phoneNumber;

  /// Query field for the [phoneNumber] field.
  QueryField<String, Customer, String?> get $phoneNumber =>
      _queryFields.$phoneNumber;

  /// Query field for the [phoneNumber] field.
  @Deprecated(r'Use $phoneNumber instead')
  QueryField<String, Customer, String?> get PHONE_NUMBER => $phoneNumber;
  @override
  String get accountRepresentativeId;

  /// Query field for the [accountRepresentativeId] field.
  QueryField<String, Customer, String> get $accountRepresentativeId =>
      _queryFields.$accountRepresentativeId;

  /// Query field for the [accountRepresentativeId] field.
  @Deprecated(r'Use $accountRepresentativeId instead')
  QueryField<String, Customer, String> get ACCOUNT_REPRESENTATIVE_ID =>
      $accountRepresentativeId;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, Customer, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, Customer, String> get MODEL_IDENTIFIER => $modelIdentifier;
  Customer copyWith({
    String? id,
    String? name,
    String? phoneNumber,
    String? accountRepresentativeId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return _Customer._(
      id: id ?? this.id,
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      accountRepresentativeId:
          accountRepresentativeId ?? this.accountRepresentativeId,
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
    );
  }

  @override
  T valueFor<T extends Object?>(QueryField<String, Customer, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'name':
        value = name;
        break;
      case r'phoneNumber':
        value = phoneNumber;
        break;
      case r'accountRepresentativeID':
        value = accountRepresentativeId;
        break;
      case r'createdAt':
        value = createdAt;
        break;
      case r'updatedAt':
        value = updatedAt;
        break;
    }
    assert(
      value is T,
      'Invalid field ${field.fieldName}: $value (expected $T)',
    );
    return value as T;
  }
}

class _Customer extends Customer {
  _Customer({
    String? id,
    required this.name,
    this.phoneNumber,
    required this.accountRepresentativeId,
  })  : id = id ?? uuid(),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _Customer._({
    required this.id,
    required this.name,
    this.phoneNumber,
    required this.accountRepresentativeId,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String id;

  @override
  final String name;

  @override
  final String? phoneNumber;

  @override
  final String accountRepresentativeId;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemoteCustomer extends Customer
    implements RemoteModel<String, Customer> {
  const RemoteCustomer._() : super._();
}

class _RemoteCustomer extends RemoteCustomer {
  const _RemoteCustomer({
    required this.id,
    required this.name,
    this.phoneNumber,
    required this.accountRepresentativeId,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteCustomer.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Customer',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'Customer',
            'name',
          ))
        : (json['name'] as String);
    final phoneNumber =
        json['phoneNumber'] == null ? null : (json['phoneNumber'] as String);
    final accountRepresentativeId = json['accountRepresentativeID'] == null
        ? (throw ModelFieldError(
            'Customer',
            'accountRepresentativeId',
          ))
        : (json['accountRepresentativeID'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Customer',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Customer',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'Customer',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'Customer',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'Customer',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteCustomer(
      id: id,
      name: name,
      phoneNumber: phoneNumber,
      accountRepresentativeId: accountRepresentativeId,
      createdAt: createdAt,
      updatedAt: updatedAt,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final String id;

  @override
  final String name;

  @override
  final String? phoneNumber;

  @override
  final String accountRepresentativeId;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
