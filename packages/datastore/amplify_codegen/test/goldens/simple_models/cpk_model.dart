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

library models.cpk_model;

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

@immutable
class CpkModelIdentifier
    with
        AWSEquatable<CpkModelIdentifier>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const CpkModelIdentifier({
    required this.firstName,
    required this.lastName,
  });

  final String firstName;

  final String lastName;

  @override
  List<Object?> get props => [
        firstName,
        lastName,
      ];
  @override
  Map<String, Object?> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
      };
  @override
  String get runtimeTypeName => 'CpkModelIdentifier';
}

class CpkModelType
    extends ModelType<CpkModelIdentifier, CpkModel, PartialCpkModel> {
  const CpkModelType();

  @override
  T fromJson<T extends PartialModel<CpkModelIdentifier, CpkModel>>(
      Map<String, Object?> json) {
    if (T == CpkModel || T == Model<CpkModelIdentifier, CpkModel>) {
      return CpkModel.fromJson(json) as T;
    }
    if (T == RemoteCpkModel || T == RemoteModel<CpkModelIdentifier, CpkModel>) {
      return _RemoteCpkModel.fromJson(json) as T;
    }
    return _PartialCpkModel.fromJson(json) as T;
  }

  @override
  String get modelName => 'CPKModel';
}

class CpkModelQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const CpkModelQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, CpkModel>? _root;

  /// Query field for the [CpkModel.firstName] field.
  QueryField<ModelIdentifier, M, String> get $firstName => NestedQueryField<
          ModelIdentifier, M, CpkModelIdentifier, CpkModel, String>(
        const QueryField<CpkModelIdentifier, CpkModel, String>(
            fieldName: 'firstName'),
        root: _root,
      );

  /// Query field for the [CpkModel.lastName] field.
  QueryField<ModelIdentifier, M, String> get $lastName => NestedQueryField<
          ModelIdentifier, M, CpkModelIdentifier, CpkModel, String>(
        const QueryField<CpkModelIdentifier, CpkModel, String>(
            fieldName: 'lastName'),
        root: _root,
      );

  /// Query field for the [CpkModel.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, CpkModelIdentifier, CpkModel,
          TemporalDateTime>(
        const QueryField<CpkModelIdentifier, CpkModel, TemporalDateTime>(
            fieldName: 'createdAt'),
        root: _root,
      );

  /// Query field for the [CpkModel.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, CpkModelIdentifier, CpkModel,
          TemporalDateTime>(
        const QueryField<CpkModelIdentifier, CpkModel, TemporalDateTime>(
            fieldName: 'updatedAt'),
        root: _root,
      );

  /// Query field for the [CpkModel] model identifier.
  QueryField<ModelIdentifier, M, CpkModelIdentifier> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, CpkModelIdentifier, CpkModel,
          CpkModelIdentifier>(
        const QueryField<CpkModelIdentifier, CpkModel, CpkModelIdentifier>(
            fieldName: 'modelIdentifier'),
        root: _root,
      );
}

abstract class PartialCpkModel
    extends PartialModel<CpkModelIdentifier, CpkModel>
    with AWSEquatable<PartialCpkModel> {
  const PartialCpkModel._();

  String get firstName;
  String get lastName;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  CpkModelIdentifier get modelIdentifier => CpkModelIdentifier(
        firstName: firstName,
        lastName: lastName,
      );
  @override
  CpkModelType get modelType => CpkModel.classType;
  @override
  List<Object?> get props => [
        firstName,
        lastName,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'CpkModel';
  @override
  T valueFor<T extends Object?>(
      QueryField<CpkModelIdentifier, CpkModel, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'firstName':
        value = firstName;
        break;
      case r'lastName':
        value = lastName;
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

class _PartialCpkModel extends PartialCpkModel {
  const _PartialCpkModel({
    required this.firstName,
    required this.lastName,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialCpkModel.fromJson(Map<String, Object?> json) {
    final firstName = json['firstName'] == null
        ? (throw ModelFieldError(
            'CpkModel',
            'firstName',
          ))
        : (json['firstName'] as String);
    final lastName = json['lastName'] == null
        ? (throw ModelFieldError(
            'CpkModel',
            'lastName',
          ))
        : (json['lastName'] as String);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialCpkModel(
      firstName: firstName,
      lastName: lastName,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String firstName;

  @override
  final String lastName;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class CpkModel extends PartialCpkModel
    implements Model<CpkModelIdentifier, CpkModel> {
  factory CpkModel({
    required String firstName,
    required String lastName,
  }) = _CpkModel;

  const CpkModel._() : super._();

  factory CpkModel.fromJson(Map<String, Object?> json) {
    final firstName = json['firstName'] == null
        ? (throw ModelFieldError(
            'CpkModel',
            'firstName',
          ))
        : (json['firstName'] as String);
    final lastName = json['lastName'] == null
        ? (throw ModelFieldError(
            'CpkModel',
            'lastName',
          ))
        : (json['lastName'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'CpkModel',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'CpkModel',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _CpkModel._(
      firstName: firstName,
      lastName: lastName,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const CpkModelType classType = CpkModelType();

  static const CpkModelQueryFields<CpkModelIdentifier, CpkModel> _queryFields =
      CpkModelQueryFields();

  @override
  String get firstName;

  /// Query field for the [firstName] field.
  QueryField<CpkModelIdentifier, CpkModel, String> get $firstName =>
      _queryFields.$firstName;

  /// Query field for the [firstName] field.
  @Deprecated(r'Use $firstName instead')
  QueryField<CpkModelIdentifier, CpkModel, String> get FIRST_NAME => $firstName;
  @override
  String get lastName;

  /// Query field for the [lastName] field.
  QueryField<CpkModelIdentifier, CpkModel, String> get $lastName =>
      _queryFields.$lastName;

  /// Query field for the [lastName] field.
  @Deprecated(r'Use $lastName instead')
  QueryField<CpkModelIdentifier, CpkModel, String> get LAST_NAME => $lastName;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<CpkModelIdentifier, CpkModel, CpkModelIdentifier>
      get $modelIdentifier => _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<CpkModelIdentifier, CpkModel, CpkModelIdentifier>
      get MODEL_IDENTIFIER => $modelIdentifier;
}

class _CpkModel extends CpkModel {
  _CpkModel({
    required this.firstName,
    required this.lastName,
  })  : createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _CpkModel._({
    required this.firstName,
    required this.lastName,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String firstName;

  @override
  final String lastName;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemoteCpkModel extends CpkModel
    implements RemoteModel<CpkModelIdentifier, CpkModel> {
  const RemoteCpkModel._() : super._();
}

class _RemoteCpkModel extends RemoteCpkModel {
  const _RemoteCpkModel({
    required this.firstName,
    required this.lastName,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteCpkModel.fromJson(Map<String, Object?> json) {
    final firstName = json['firstName'] == null
        ? (throw ModelFieldError(
            'CpkModel',
            'firstName',
          ))
        : (json['firstName'] as String);
    final lastName = json['lastName'] == null
        ? (throw ModelFieldError(
            'CpkModel',
            'lastName',
          ))
        : (json['lastName'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'CpkModel',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'CpkModel',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'CpkModel',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'CpkModel',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'CpkModel',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteCpkModel(
      firstName: firstName,
      lastName: lastName,
      createdAt: createdAt,
      updatedAt: updatedAt,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final String firstName;

  @override
  final String lastName;

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
