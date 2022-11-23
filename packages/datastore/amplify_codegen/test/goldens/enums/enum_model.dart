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

library models.enum_model;

import 'package:amplify_core/amplify_core.dart';

import 'my_enum.dart';

class EnumModelType extends ModelType<String, EnumModel, PartialEnumModel> {
  const EnumModelType();

  @override
  T fromJson<T extends PartialModel<String, EnumModel>>(
    Map<String, Object?> json,
  ) {
    if (T == EnumModel || T == Model<String, EnumModel>) {
      return EnumModel.fromJson(json) as T;
    }
    if (T == RemoteEnumModel || T == RemoteModel<String, EnumModel>) {
      return _RemoteEnumModel.fromJson(json) as T;
    }
    return _PartialEnumModel.fromJson(json) as T;
  }

  @override
  String get modelName => 'EnumModel';
}

class EnumModelQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const EnumModelQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, EnumModel>? _root;

  /// Query field for the [EnumModel.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, EnumModel, String>(
        const QueryField<String, EnumModel, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [EnumModel.enum_] field.
  QueryField<ModelIdentifier, M, MyEnum?> get $enum_ =>
      NestedQueryField<ModelIdentifier, M, String, EnumModel, MyEnum?>(
        const QueryField<String, EnumModel, MyEnum?>(fieldName: 'enum'),
        root: _root,
      );

  /// Query field for the [EnumModel.requiredEnum] field.
  QueryField<ModelIdentifier, M, MyEnum> get $requiredEnum =>
      NestedQueryField<ModelIdentifier, M, String, EnumModel, MyEnum>(
        const QueryField<String, EnumModel, MyEnum>(fieldName: 'requiredEnum'),
        root: _root,
      );

  /// Query field for the [EnumModel.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, EnumModel, TemporalDateTime>(
        const QueryField<String, EnumModel, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [EnumModel.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, EnumModel, TemporalDateTime>(
        const QueryField<String, EnumModel, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [EnumModel] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, EnumModel, String>(
        const QueryField<String, EnumModel, String>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialEnumModel extends PartialModel<String, EnumModel>
    with AWSEquatable<PartialEnumModel> {
  const PartialEnumModel._();

  String get id;
  MyEnum? get enum_;
  MyEnum? get requiredEnum;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  EnumModelType get modelType => EnumModel.classType;
  @override
  List<Object?> get props => [
        id,
        enum_,
        requiredEnum,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'enum': enum_?.value,
        'requiredEnum': requiredEnum?.value,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'EnumModel';
  @override
  T valueFor<T extends Object?>(QueryField<String, EnumModel, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'enum':
        value = enum_;
        break;
      case r'requiredEnum':
        value = requiredEnum;
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

class _PartialEnumModel extends PartialEnumModel {
  const _PartialEnumModel({
    required this.id,
    this.enum_,
    this.requiredEnum,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialEnumModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'EnumModel',
            'id',
          ))
        : (json['id'] as String);
    final enum_ =
        json['enum'] == null ? null : MyEnum.fromJson((json['enum'] as String));
    final requiredEnum = json['requiredEnum'] == null
        ? null
        : MyEnum.fromJson((json['requiredEnum'] as String));
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialEnumModel(
      id: id,
      enum_: enum_,
      requiredEnum: requiredEnum,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String id;

  @override
  final MyEnum? enum_;

  @override
  final MyEnum? requiredEnum;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class EnumModel extends PartialEnumModel
    implements Model<String, EnumModel> {
  factory EnumModel({
    String? id,
    MyEnum? enum_,
    required MyEnum requiredEnum,
  }) = _EnumModel;

  const EnumModel._() : super._();

  factory EnumModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'EnumModel',
            'id',
          ))
        : (json['id'] as String);
    final enum_ =
        json['enum'] == null ? null : MyEnum.fromJson((json['enum'] as String));
    final requiredEnum = json['requiredEnum'] == null
        ? (throw ModelFieldError(
            'EnumModel',
            'requiredEnum',
          ))
        : MyEnum.fromJson((json['requiredEnum'] as String));
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'EnumModel',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'EnumModel',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _EnumModel._(
      id: id,
      enum_: enum_,
      requiredEnum: requiredEnum,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const EnumModelType classType = EnumModelType();

  static const EnumModelQueryFields<String, EnumModel> _queryFields =
      EnumModelQueryFields();

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, EnumModel, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, EnumModel, String> get ID => $id;
  @override
  MyEnum? get enum_;

  /// Query field for the [enum_] field.
  QueryField<String, EnumModel, MyEnum?> get $enum_ => _queryFields.$enum_;

  /// Query field for the [enum_] field.
  @Deprecated(r'Use $enum_ instead')
  QueryField<String, EnumModel, MyEnum?> get ENUM => $enum_;
  @override
  MyEnum get requiredEnum;

  /// Query field for the [requiredEnum] field.
  QueryField<String, EnumModel, MyEnum> get $requiredEnum =>
      _queryFields.$requiredEnum;

  /// Query field for the [requiredEnum] field.
  @Deprecated(r'Use $requiredEnum instead')
  QueryField<String, EnumModel, MyEnum> get REQUIRED_ENUM => $requiredEnum;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, EnumModel, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, EnumModel, String> get MODEL_IDENTIFIER =>
      $modelIdentifier;
}

class _EnumModel extends EnumModel {
  _EnumModel({
    String? id,
    this.enum_,
    required this.requiredEnum,
  })  : id = id ?? uuid(),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _EnumModel._({
    required this.id,
    this.enum_,
    required this.requiredEnum,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String id;

  @override
  final MyEnum? enum_;

  @override
  final MyEnum requiredEnum;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemoteEnumModel extends EnumModel
    implements RemoteModel<String, EnumModel> {
  const RemoteEnumModel._() : super._();
}

class _RemoteEnumModel extends RemoteEnumModel {
  const _RemoteEnumModel({
    required this.id,
    this.enum_,
    required this.requiredEnum,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteEnumModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'EnumModel',
            'id',
          ))
        : (json['id'] as String);
    final enum_ =
        json['enum'] == null ? null : MyEnum.fromJson((json['enum'] as String));
    final requiredEnum = json['requiredEnum'] == null
        ? (throw ModelFieldError(
            'EnumModel',
            'requiredEnum',
          ))
        : MyEnum.fromJson((json['requiredEnum'] as String));
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'EnumModel',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'EnumModel',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'EnumModel',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'EnumModel',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'EnumModel',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteEnumModel(
      id: id,
      enum_: enum_,
      requiredEnum: requiredEnum,
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
  final MyEnum? enum_;

  @override
  final MyEnum requiredEnum;

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
