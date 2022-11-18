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

library models.my_model;

import 'package:amplify_core/amplify_core.dart';

class MyModelType extends ModelType<String, MyModel, PartialMyModel> {
  const MyModelType();

  @override
  T fromJson<T extends PartialModel<String, MyModel>>(
      Map<String, Object?> json) {
    if (T == MyModel || T == Model<String, MyModel>) {
      return MyModel.fromJson(json) as T;
    }
    if (T == RemoteMyModel || T == RemoteModel<String, MyModel>) {
      return _RemoteMyModel.fromJson(json) as T;
    }
    return _PartialMyModel.fromJson(json) as T;
  }

  @override
  String get modelName => 'MyModel';
}

class MyModelQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const MyModelQueryFields([this.root]);

  final QueryField<ModelIdentifier, M, MyModel>? root;

  /// Query field for the [MyModel.enum_] field.
  QueryField<ModelIdentifier, M, String> get $enum_ =>
      NestedQueryField<ModelIdentifier, M, String, MyModel, String>(
          const QueryField<String, MyModel, String>(fieldName: 'enum'));

  /// Query field for the [MyModel.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime?> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, MyModel, TemporalDateTime?>(
          const QueryField<String, MyModel, TemporalDateTime?>(
              fieldName: 'createdAt'));

  /// Query field for the [MyModel.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime?> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, MyModel, TemporalDateTime?>(
          const QueryField<String, MyModel, TemporalDateTime?>(
              fieldName: 'updatedAt'));

  /// Query field for the [MyModel.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, MyModel, String>(
          const QueryField<String, MyModel, String>(fieldName: 'id'));

  /// Query field for the `modelIdentifier` field.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, MyModel, String>(
          const QueryField<String, MyModel, String>(
              fieldName: 'modelIdentifier'));
}

abstract class PartialMyModel extends PartialModel<String, MyModel>
    with AWSEquatable<PartialMyModel> {
  const PartialMyModel._();

  String? get enum_;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  String get id;
  @override
  String get modelIdentifier => id;
  @override
  MyModelType get modelType => MyModel.classType;
  @override
  List<Object?> get props => [
        enum_,
        createdAt,
        updatedAt,
        id,
      ];
  @override
  Map<String, Object?> toJson() => {
        'enum': enum_,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'id': id,
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'MyModel';
  @override
  T valueFor<T extends Object?>(QueryField<String, MyModel, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'enum':
        value = enum_;
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

class _PartialMyModel extends PartialMyModel {
  const _PartialMyModel({
    this.enum_,
    this.createdAt,
    this.updatedAt,
    required this.id,
  }) : super._();

  factory _PartialMyModel.fromJson(Map<String, Object?> json) {
    final enum_ = json['enum'] == null ? null : (json['enum'] as String);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'MyModel',
            'id',
          ))
        : (json['id'] as String);
    return _PartialMyModel(
      enum_: enum_,
      createdAt: createdAt,
      updatedAt: updatedAt,
      id: id,
    );
  }

  @override
  final String? enum_;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String id;
}

abstract class MyModel extends PartialMyModel
    implements Model<String, MyModel> {
  factory MyModel({
    required String enum_,
    TemporalDateTime? createdAt,
    TemporalDateTime? updatedAt,
    String? id,
  }) = _MyModel;

  const MyModel._() : super._();

  factory MyModel.fromJson(Map<String, Object?> json) {
    final enum_ = json['enum'] == null
        ? (throw ModelFieldError(
            'MyModel',
            'enum_',
          ))
        : (json['enum'] as String);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'MyModel',
            'id',
          ))
        : (json['id'] as String);
    return MyModel(
      enum_: enum_,
      createdAt: createdAt,
      updatedAt: updatedAt,
      id: id,
    );
  }

  static const MyModelType classType = MyModelType();

  static const MyModelQueryFields<String, MyModel> _queryFields =
      MyModelQueryFields();

  @override
  String get enum_;

  /// Query field for the [enum_] field.
  QueryField<String, MyModel, String> get $enum_ => _queryFields.$enum_;

  /// Query field for the [enum_] field.
  @Deprecated(r'Use $enum_ instead')
  QueryField<String, MyModel, String> get ENUM => $enum_;
  @override
  TemporalDateTime? get createdAt;

  /// Query field for the [createdAt] field.
  QueryField<String, MyModel, TemporalDateTime?> get $createdAt =>
      _queryFields.$createdAt;

  /// Query field for the [createdAt] field.
  @Deprecated(r'Use $createdAt instead')
  QueryField<String, MyModel, TemporalDateTime?> get CREATED_AT => $createdAt;
  @override
  TemporalDateTime? get updatedAt;

  /// Query field for the [updatedAt] field.
  QueryField<String, MyModel, TemporalDateTime?> get $updatedAt =>
      _queryFields.$updatedAt;

  /// Query field for the [updatedAt] field.
  @Deprecated(r'Use $updatedAt instead')
  QueryField<String, MyModel, TemporalDateTime?> get UPDATED_AT => $updatedAt;
  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, MyModel, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, MyModel, String> get ID => $id;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, MyModel, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, MyModel, String> get MODEL_IDENTIFIER => $modelIdentifier;
}

class _MyModel extends MyModel {
  _MyModel({
    required this.enum_,
    this.createdAt,
    this.updatedAt,
    String? id,
  })  : id = id ?? uuid(),
        super._();

  @override
  final String enum_;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String id;
}

abstract class RemoteMyModel extends MyModel
    implements RemoteModel<String, MyModel> {
  const RemoteMyModel._() : super._();
}

class _RemoteMyModel extends RemoteMyModel {
  const _RemoteMyModel({
    required this.enum_,
    this.createdAt,
    this.updatedAt,
    required this.id,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteMyModel.fromJson(Map<String, Object?> json) {
    final enum_ = json['enum'] == null
        ? (throw ModelFieldError(
            'MyModel',
            'enum_',
          ))
        : (json['enum'] as String);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'MyModel',
            'id',
          ))
        : (json['id'] as String);
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'MyModel',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'MyModel',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'MyModel',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteMyModel(
      enum_: enum_,
      createdAt: createdAt,
      updatedAt: updatedAt,
      id: id,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final String enum_;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String id;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
