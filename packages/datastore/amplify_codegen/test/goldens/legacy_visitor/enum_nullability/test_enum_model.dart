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

library models.test_enum_model;

import 'package:amplify_core/amplify_core.dart';

import 'test_enum.dart';

class TestEnumModelType
    extends ModelType<String, TestEnumModel, PartialTestEnumModel> {
  const TestEnumModelType();

  @override
  T fromJson<T extends PartialModel<String, TestEnumModel>>(
    Map<String, Object?> json,
  ) {
    if (T == TestEnumModel || T == Model<String, TestEnumModel>) {
      return TestEnumModel.fromJson(json) as T;
    }
    if (T == RemoteTestEnumModel || T == RemoteModel<String, TestEnumModel>) {
      return _RemoteTestEnumModel.fromJson(json) as T;
    }
    return _PartialTestEnumModel.fromJson(json) as T;
  }

  @override
  String get modelName => 'TestEnumModel';
}

class TestEnumModelQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const TestEnumModelQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, TestEnumModel>? _root;

  /// Query field for the [TestEnumModel.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, TestEnumModel, String>(
        const QueryField<String, TestEnumModel, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [TestEnumModel.enumVal] field.
  QueryField<ModelIdentifier, M, TestEnum> get $enumVal =>
      NestedQueryField<ModelIdentifier, M, String, TestEnumModel, TestEnum>(
        const QueryField<String, TestEnumModel, TestEnum>(fieldName: 'enumVal'),
        root: _root,
      );

  /// Query field for the [TestEnumModel.nullableEnumVal] field.
  QueryField<ModelIdentifier, M, TestEnum?> get $nullableEnumVal =>
      NestedQueryField<ModelIdentifier, M, String, TestEnumModel, TestEnum?>(
        const QueryField<String, TestEnumModel, TestEnum?>(
          fieldName: 'nullableEnumVal',
        ),
        root: _root,
      );

  /// Query field for the [TestEnumModel.enumList] field.
  QueryField<ModelIdentifier, M, TestEnum> get $enumList =>
      NestedQueryField<ModelIdentifier, M, String, TestEnumModel, TestEnum>(
        const QueryField<String, TestEnumModel, TestEnum>(
          fieldName: 'enumList',
        ),
        root: _root,
      );

  /// Query field for the [TestEnumModel.enumNullableList] field.
  QueryField<ModelIdentifier, M, TestEnum> get $enumNullableList =>
      NestedQueryField<ModelIdentifier, M, String, TestEnumModel, TestEnum>(
        const QueryField<String, TestEnumModel, TestEnum>(
          fieldName: 'enumNullableList',
        ),
        root: _root,
      );

  /// Query field for the [TestEnumModel.nullableEnumList] field.
  QueryField<ModelIdentifier, M, TestEnum?> get $nullableEnumList =>
      NestedQueryField<ModelIdentifier, M, String, TestEnumModel, TestEnum?>(
        const QueryField<String, TestEnumModel, TestEnum?>(
          fieldName: 'nullableEnumList',
        ),
        root: _root,
      );

  /// Query field for the [TestEnumModel.nullableEnumNullableList] field.
  QueryField<ModelIdentifier, M, TestEnum?> get $nullableEnumNullableList =>
      NestedQueryField<ModelIdentifier, M, String, TestEnumModel, TestEnum?>(
        const QueryField<String, TestEnumModel, TestEnum?>(
          fieldName: 'nullableEnumNullableList',
        ),
        root: _root,
      );

  /// Query field for the [TestEnumModel.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, TestEnumModel,
          TemporalDateTime>(
        const QueryField<String, TestEnumModel, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [TestEnumModel.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, TestEnumModel,
          TemporalDateTime>(
        const QueryField<String, TestEnumModel, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [TestEnumModel] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, TestEnumModel, String>(
        const QueryField<String, TestEnumModel, String>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialTestEnumModel extends PartialModel<String, TestEnumModel>
    with AWSEquatable<PartialTestEnumModel> {
  const PartialTestEnumModel._();

  String get id;
  TestEnum? get enumVal;
  TestEnum? get nullableEnumVal;
  List<TestEnum>? get enumList;
  List<TestEnum>? get enumNullableList;
  List<TestEnum?>? get nullableEnumList;
  List<TestEnum?>? get nullableEnumNullableList;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  TestEnumModelType get modelType => TestEnumModel.classType;
  @override
  List<Object?> get props => [
        id,
        enumVal,
        nullableEnumVal,
        enumList,
        enumNullableList,
        nullableEnumList,
        nullableEnumNullableList,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'enumVal': enumVal?.value,
        'nullableEnumVal': nullableEnumVal?.value,
        'enumList': enumList,
        'enumNullableList': enumNullableList,
        'nullableEnumList': nullableEnumList,
        'nullableEnumNullableList': nullableEnumNullableList,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'TestEnumModel';
}

class _PartialTestEnumModel extends PartialTestEnumModel {
  const _PartialTestEnumModel({
    required this.id,
    this.enumVal,
    this.nullableEnumVal,
    this.enumList,
    this.enumNullableList,
    this.nullableEnumList,
    this.nullableEnumNullableList,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialTestEnumModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'TestEnumModel',
            'id',
          ))
        : (json['id'] as String);
    final enumVal = json['enumVal'] == null
        ? null
        : TestEnum.fromJson((json['enumVal'] as String));
    final nullableEnumVal = json['nullableEnumVal'] == null
        ? null
        : TestEnum.fromJson((json['nullableEnumVal'] as String));
    final enumList = json['enumList'] == null
        ? null
        : (json['enumList'] as List<Object?>)
            .cast<String?>()
            .map(
              (el) => el == null
                  ? (throw ModelFieldError(
                      'TestEnumModel',
                      'enumList',
                    ))
                  : TestEnum.fromJson(el),
            )
            .toList();
    final enumNullableList = json['enumNullableList'] == null
        ? null
        : (json['enumNullableList'] as List<Object?>)
            .cast<String?>()
            .map(
              (el) => el == null
                  ? (throw ModelFieldError(
                      'TestEnumModel',
                      'enumNullableList',
                    ))
                  : TestEnum.fromJson(el),
            )
            .toList();
    final nullableEnumList = json['nullableEnumList'] == null
        ? null
        : (json['nullableEnumList'] as List<Object?>).cast<String?>().toList();
    final nullableEnumNullableList = json['nullableEnumNullableList'] == null
        ? null
        : (json['nullableEnumNullableList'] as List<Object?>)
            .cast<String?>()
            .toList();
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialTestEnumModel(
      id: id,
      enumVal: enumVal,
      nullableEnumVal: nullableEnumVal,
      enumList: enumList,
      enumNullableList: enumNullableList,
      nullableEnumList: nullableEnumList,
      nullableEnumNullableList: nullableEnumNullableList,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String id;

  @override
  final TestEnum? enumVal;

  @override
  final TestEnum? nullableEnumVal;

  @override
  final List<TestEnum>? enumList;

  @override
  final List<TestEnum>? enumNullableList;

  @override
  final List<TestEnum?>? nullableEnumList;

  @override
  final List<TestEnum?>? nullableEnumNullableList;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class TestEnumModel extends PartialTestEnumModel
    implements Model<String, TestEnumModel> {
  factory TestEnumModel({
    String? id,
    required TestEnum enumVal,
    TestEnum? nullableEnumVal,
    required List<TestEnum> enumList,
    List<TestEnum>? enumNullableList,
    required List<TestEnum?> nullableEnumList,
    List<TestEnum?>? nullableEnumNullableList,
  }) = _TestEnumModel;

  const TestEnumModel._() : super._();

  factory TestEnumModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'TestEnumModel',
            'id',
          ))
        : (json['id'] as String);
    final enumVal = json['enumVal'] == null
        ? (throw ModelFieldError(
            'TestEnumModel',
            'enumVal',
          ))
        : TestEnum.fromJson((json['enumVal'] as String));
    final nullableEnumVal = json['nullableEnumVal'] == null
        ? null
        : TestEnum.fromJson((json['nullableEnumVal'] as String));
    final enumList = json['enumList'] == null
        ? (throw ModelFieldError(
            'TestEnumModel',
            'enumList',
          ))
        : (json['enumList'] as List<Object?>)
            .cast<String?>()
            .map(
              (el) => el == null
                  ? (throw ModelFieldError(
                      'TestEnumModel',
                      'enumList',
                    ))
                  : TestEnum.fromJson(el),
            )
            .toList();
    final enumNullableList = json['enumNullableList'] == null
        ? null
        : (json['enumNullableList'] as List<Object?>)
            .cast<String?>()
            .map(
              (el) => el == null
                  ? (throw ModelFieldError(
                      'TestEnumModel',
                      'enumNullableList',
                    ))
                  : TestEnum.fromJson(el),
            )
            .toList();
    final nullableEnumList = json['nullableEnumList'] == null
        ? (throw ModelFieldError(
            'TestEnumModel',
            'nullableEnumList',
          ))
        : (json['nullableEnumList'] as List<Object?>).cast<String?>().toList();
    final nullableEnumNullableList = json['nullableEnumNullableList'] == null
        ? null
        : (json['nullableEnumNullableList'] as List<Object?>)
            .cast<String?>()
            .toList();
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'TestEnumModel',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'TestEnumModel',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _TestEnumModel._(
      id: id,
      enumVal: enumVal,
      nullableEnumVal: nullableEnumVal,
      enumList: enumList,
      enumNullableList: enumNullableList,
      nullableEnumList: nullableEnumList,
      nullableEnumNullableList: nullableEnumNullableList,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const TestEnumModelType classType = TestEnumModelType();

  static const TestEnumModelQueryFields<String, TestEnumModel> _queryFields =
      TestEnumModelQueryFields();

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, TestEnumModel, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, TestEnumModel, String> get ID => $id;
  @override
  TestEnum get enumVal;

  /// Query field for the [enumVal] field.
  QueryField<String, TestEnumModel, TestEnum> get $enumVal =>
      _queryFields.$enumVal;

  /// Query field for the [enumVal] field.
  @Deprecated(r'Use $enumVal instead')
  QueryField<String, TestEnumModel, TestEnum> get ENUM_VAL => $enumVal;
  @override
  TestEnum? get nullableEnumVal;

  /// Query field for the [nullableEnumVal] field.
  QueryField<String, TestEnumModel, TestEnum?> get $nullableEnumVal =>
      _queryFields.$nullableEnumVal;

  /// Query field for the [nullableEnumVal] field.
  @Deprecated(r'Use $nullableEnumVal instead')
  QueryField<String, TestEnumModel, TestEnum?> get NULLABLE_ENUM_VAL =>
      $nullableEnumVal;
  @override
  List<TestEnum> get enumList;

  /// Query field for the [enumList] field.
  QueryField<String, TestEnumModel, TestEnum> get $enumList =>
      _queryFields.$enumList;

  /// Query field for the [enumList] field.
  @Deprecated(r'Use $enumList instead')
  QueryField<String, TestEnumModel, TestEnum> get ENUM_LIST => $enumList;
  @override
  List<TestEnum>? get enumNullableList;

  /// Query field for the [enumNullableList] field.
  QueryField<String, TestEnumModel, TestEnum> get $enumNullableList =>
      _queryFields.$enumNullableList;

  /// Query field for the [enumNullableList] field.
  @Deprecated(r'Use $enumNullableList instead')
  QueryField<String, TestEnumModel, TestEnum> get ENUM_NULLABLE_LIST =>
      $enumNullableList;
  @override
  List<TestEnum?> get nullableEnumList;

  /// Query field for the [nullableEnumList] field.
  QueryField<String, TestEnumModel, TestEnum?> get $nullableEnumList =>
      _queryFields.$nullableEnumList;

  /// Query field for the [nullableEnumList] field.
  @Deprecated(r'Use $nullableEnumList instead')
  QueryField<String, TestEnumModel, TestEnum?> get NULLABLE_ENUM_LIST =>
      $nullableEnumList;
  @override
  List<TestEnum?>? get nullableEnumNullableList;

  /// Query field for the [nullableEnumNullableList] field.
  QueryField<String, TestEnumModel, TestEnum?> get $nullableEnumNullableList =>
      _queryFields.$nullableEnumNullableList;

  /// Query field for the [nullableEnumNullableList] field.
  @Deprecated(r'Use $nullableEnumNullableList instead')
  QueryField<String, TestEnumModel, TestEnum?>
      get NULLABLE_ENUM_NULLABLE_LIST => $nullableEnumNullableList;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, TestEnumModel, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, TestEnumModel, String> get MODEL_IDENTIFIER =>
      $modelIdentifier;
  @override
  T valueFor<T extends Object?>(QueryField<String, TestEnumModel, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'enumVal':
        value = enumVal;
        break;
      case r'nullableEnumVal':
        value = nullableEnumVal;
        break;
      case r'enumList':
        value = enumList;
        break;
      case r'enumNullableList':
        value = enumNullableList;
        break;
      case r'nullableEnumList':
        value = nullableEnumList;
        break;
      case r'nullableEnumNullableList':
        value = nullableEnumNullableList;
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

class _TestEnumModel extends TestEnumModel {
  _TestEnumModel({
    String? id,
    required this.enumVal,
    this.nullableEnumVal,
    required this.enumList,
    this.enumNullableList,
    required this.nullableEnumList,
    this.nullableEnumNullableList,
  })  : id = id ?? uuid(),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _TestEnumModel._({
    required this.id,
    required this.enumVal,
    this.nullableEnumVal,
    required this.enumList,
    this.enumNullableList,
    required this.nullableEnumList,
    this.nullableEnumNullableList,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String id;

  @override
  final TestEnum enumVal;

  @override
  final TestEnum? nullableEnumVal;

  @override
  final List<TestEnum> enumList;

  @override
  final List<TestEnum>? enumNullableList;

  @override
  final List<TestEnum?> nullableEnumList;

  @override
  final List<TestEnum?>? nullableEnumNullableList;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemoteTestEnumModel extends TestEnumModel
    implements RemoteModel<String, TestEnumModel> {
  const RemoteTestEnumModel._() : super._();
}

class _RemoteTestEnumModel extends RemoteTestEnumModel {
  const _RemoteTestEnumModel({
    required this.id,
    required this.enumVal,
    this.nullableEnumVal,
    required this.enumList,
    this.enumNullableList,
    required this.nullableEnumList,
    this.nullableEnumNullableList,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteTestEnumModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'TestEnumModel',
            'id',
          ))
        : (json['id'] as String);
    final enumVal = json['enumVal'] == null
        ? (throw ModelFieldError(
            'TestEnumModel',
            'enumVal',
          ))
        : TestEnum.fromJson((json['enumVal'] as String));
    final nullableEnumVal = json['nullableEnumVal'] == null
        ? null
        : TestEnum.fromJson((json['nullableEnumVal'] as String));
    final enumList = json['enumList'] == null
        ? (throw ModelFieldError(
            'TestEnumModel',
            'enumList',
          ))
        : (json['enumList'] as List<Object?>)
            .cast<String?>()
            .map(
              (el) => el == null
                  ? (throw ModelFieldError(
                      'TestEnumModel',
                      'enumList',
                    ))
                  : TestEnum.fromJson(el),
            )
            .toList();
    final enumNullableList = json['enumNullableList'] == null
        ? null
        : (json['enumNullableList'] as List<Object?>)
            .cast<String?>()
            .map(
              (el) => el == null
                  ? (throw ModelFieldError(
                      'TestEnumModel',
                      'enumNullableList',
                    ))
                  : TestEnum.fromJson(el),
            )
            .toList();
    final nullableEnumList = json['nullableEnumList'] == null
        ? (throw ModelFieldError(
            'TestEnumModel',
            'nullableEnumList',
          ))
        : (json['nullableEnumList'] as List<Object?>).cast<String?>().toList();
    final nullableEnumNullableList = json['nullableEnumNullableList'] == null
        ? null
        : (json['nullableEnumNullableList'] as List<Object?>)
            .cast<String?>()
            .toList();
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'TestEnumModel',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'TestEnumModel',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'TestEnumModel',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'TestEnumModel',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'TestEnumModel',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteTestEnumModel(
      id: id,
      enumVal: enumVal,
      nullableEnumVal: nullableEnumVal,
      enumList: enumList,
      enumNullableList: enumNullableList,
      nullableEnumList: nullableEnumList,
      nullableEnumNullableList: nullableEnumNullableList,
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
  final TestEnum enumVal;

  @override
  final TestEnum? nullableEnumVal;

  @override
  final List<TestEnum> enumList;

  @override
  final List<TestEnum>? enumNullableList;

  @override
  final List<TestEnum?> nullableEnumList;

  @override
  final List<TestEnum?>? nullableEnumNullableList;

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
