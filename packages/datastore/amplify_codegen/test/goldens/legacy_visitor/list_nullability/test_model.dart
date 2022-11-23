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

// ignore_for_file: non_constant_identifier_names,inference_failure_on_collection_literal

library models.test_model;

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/models/mipr.dart' as mipr;

class TestModelType extends ModelType<String, TestModel, PartialTestModel> {
  const TestModelType();

  @override
  T fromJson<T extends PartialModel<String, TestModel>>(
    Map<String, Object?> json,
  ) {
    if (T == TestModel || T == Model<String, TestModel>) {
      return TestModel.fromJson(json) as T;
    }
    if (T == RemoteTestModel || T == RemoteModel<String, TestModel>) {
      return _RemoteTestModel.fromJson(json) as T;
    }
    return _PartialTestModel.fromJson(json) as T;
  }

  @override
  String get modelName => 'TestModel';
}

class TestModelQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const TestModelQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, TestModel>? _root;

  /// Query field for the [TestModel.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, TestModel, String>(
        const QueryField<String, TestModel, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [TestModel.floatVal] field.
  QueryField<ModelIdentifier, M, double> get $floatVal =>
      NestedQueryField<ModelIdentifier, M, String, TestModel, double>(
        const QueryField<String, TestModel, double>(fieldName: 'floatVal'),
        root: _root,
      );

  /// Query field for the [TestModel.floatNullableVal] field.
  QueryField<ModelIdentifier, M, double?> get $floatNullableVal =>
      NestedQueryField<ModelIdentifier, M, String, TestModel, double?>(
        const QueryField<String, TestModel, double?>(
          fieldName: 'floatNullableVal',
        ),
        root: _root,
      );

  /// Query field for the [TestModel.floatList] field.
  QueryField<ModelIdentifier, M, double> get $floatList =>
      NestedQueryField<ModelIdentifier, M, String, TestModel, double>(
        const QueryField<String, TestModel, double>(fieldName: 'floatList'),
        root: _root,
      );

  /// Query field for the [TestModel.floatNullableList] field.
  QueryField<ModelIdentifier, M, double> get $floatNullableList =>
      NestedQueryField<ModelIdentifier, M, String, TestModel, double>(
        const QueryField<String, TestModel, double>(
          fieldName: 'floatNullableList',
        ),
        root: _root,
      );

  /// Query field for the [TestModel.nullableFloatList] field.
  QueryField<ModelIdentifier, M, double?> get $nullableFloatList =>
      NestedQueryField<ModelIdentifier, M, String, TestModel, double?>(
        const QueryField<String, TestModel, double?>(
          fieldName: 'nullableFloatList',
        ),
        root: _root,
      );

  /// Query field for the [TestModel.nullableFloatNullableList] field.
  QueryField<ModelIdentifier, M, double?> get $nullableFloatNullableList =>
      NestedQueryField<ModelIdentifier, M, String, TestModel, double?>(
        const QueryField<String, TestModel, double?>(
          fieldName: 'nullableFloatNullableList',
        ),
        root: _root,
      );

  /// Query field for the [TestModel.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, TestModel, TemporalDateTime>(
        const QueryField<String, TestModel, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [TestModel.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, TestModel, TemporalDateTime>(
        const QueryField<String, TestModel, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [TestModel] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, TestModel, String>(
        const QueryField<String, TestModel, String>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialTestModel extends PartialModel<String, TestModel>
    with AWSEquatable<PartialTestModel> {
  const PartialTestModel._();

  String get id;
  double? get floatVal;
  double? get floatNullableVal;
  List<double>? get floatList;
  List<double>? get floatNullableList;
  List<double?>? get nullableFloatList;
  List<double?>? get nullableFloatNullableList;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  TestModelType get modelType => TestModel.classType;
  @override
  List<Object?> get props => [
        id,
        floatVal,
        floatNullableVal,
        floatList,
        floatNullableList,
        nullableFloatList,
        nullableFloatNullableList,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'floatVal': floatVal,
        'floatNullableVal': floatNullableVal,
        'floatList': floatList,
        'floatNullableList': floatNullableList,
        'nullableFloatList': nullableFloatList,
        'nullableFloatNullableList': nullableFloatNullableList,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'TestModel';
}

class _PartialTestModel extends PartialTestModel {
  const _PartialTestModel({
    required this.id,
    this.floatVal,
    this.floatNullableVal,
    this.floatList,
    this.floatNullableList,
    this.nullableFloatList,
    this.nullableFloatNullableList,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialTestModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'TestModel',
            'id',
          ))
        : (json['id'] as String);
    final floatVal =
        json['floatVal'] == null ? null : (json['floatVal'] as double);
    final floatNullableVal = json['floatNullableVal'] == null
        ? null
        : (json['floatNullableVal'] as double);
    final floatList = json['floatList'] == null
        ? null
        : (json['floatList'] as List<Object?>)
            .cast<double?>()
            .map(
              (el) =>
                  el ??
                  (throw ModelFieldError(
                    'TestModel',
                    'floatList',
                  )),
            )
            .toList();
    final floatNullableList = json['floatNullableList'] == null
        ? null
        : (json['floatNullableList'] as List<Object?>)
            .cast<double?>()
            .map(
              (el) =>
                  el ??
                  (throw ModelFieldError(
                    'TestModel',
                    'floatNullableList',
                  )),
            )
            .toList();
    final nullableFloatList = json['nullableFloatList'] == null
        ? null
        : (json['nullableFloatList'] as List<Object?>).cast<double?>().toList();
    final nullableFloatNullableList = json['nullableFloatNullableList'] == null
        ? null
        : (json['nullableFloatNullableList'] as List<Object?>)
            .cast<double?>()
            .toList();
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialTestModel(
      id: id,
      floatVal: floatVal,
      floatNullableVal: floatNullableVal,
      floatList: floatList,
      floatNullableList: floatNullableList,
      nullableFloatList: nullableFloatList,
      nullableFloatNullableList: nullableFloatNullableList,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String id;

  @override
  final double? floatVal;

  @override
  final double? floatNullableVal;

  @override
  final List<double>? floatList;

  @override
  final List<double>? floatNullableList;

  @override
  final List<double?>? nullableFloatList;

  @override
  final List<double?>? nullableFloatNullableList;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class TestModel extends PartialTestModel
    implements Model<String, TestModel> {
  factory TestModel({
    String? id,
    required double floatVal,
    double? floatNullableVal,
    required List<double> floatList,
    List<double>? floatNullableList,
    required List<double?> nullableFloatList,
    List<double?>? nullableFloatNullableList,
  }) = _TestModel;

  const TestModel._() : super._();

  factory TestModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'TestModel',
            'id',
          ))
        : (json['id'] as String);
    final floatVal = json['floatVal'] == null
        ? (throw ModelFieldError(
            'TestModel',
            'floatVal',
          ))
        : (json['floatVal'] as double);
    final floatNullableVal = json['floatNullableVal'] == null
        ? null
        : (json['floatNullableVal'] as double);
    final floatList = json['floatList'] == null
        ? (throw ModelFieldError(
            'TestModel',
            'floatList',
          ))
        : (json['floatList'] as List<Object?>)
            .cast<double?>()
            .map(
              (el) =>
                  el ??
                  (throw ModelFieldError(
                    'TestModel',
                    'floatList',
                  )),
            )
            .toList();
    final floatNullableList = json['floatNullableList'] == null
        ? null
        : (json['floatNullableList'] as List<Object?>)
            .cast<double?>()
            .map(
              (el) =>
                  el ??
                  (throw ModelFieldError(
                    'TestModel',
                    'floatNullableList',
                  )),
            )
            .toList();
    final nullableFloatList = json['nullableFloatList'] == null
        ? (throw ModelFieldError(
            'TestModel',
            'nullableFloatList',
          ))
        : (json['nullableFloatList'] as List<Object?>).cast<double?>().toList();
    final nullableFloatNullableList = json['nullableFloatNullableList'] == null
        ? null
        : (json['nullableFloatNullableList'] as List<Object?>)
            .cast<double?>()
            .toList();
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'TestModel',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'TestModel',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _TestModel._(
      id: id,
      floatVal: floatVal,
      floatNullableVal: floatNullableVal,
      floatList: floatList,
      floatNullableList: floatNullableList,
      nullableFloatList: nullableFloatList,
      nullableFloatNullableList: nullableFloatNullableList,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const TestModelType classType = TestModelType();

  static const TestModelQueryFields<String, TestModel> _queryFields =
      TestModelQueryFields();

  static final mipr.ModelTypeDefinition schema =
      mipr.serializers.deserializeWith(
    mipr.ModelTypeDefinition.serializer,
    const {
      'name': 'TestModel',
      'pluralName': 'TestModels',
      'fields': {
        'id': {
          'name': 'id',
          'type': {'scalar': 'ID'},
          'isReadOnly': false,
          'authRules': [],
        },
        'floatVal': {
          'name': 'floatVal',
          'type': {'scalar': 'Float'},
          'isReadOnly': false,
          'authRules': [],
        },
        'floatNullableVal': {
          'name': 'floatNullableVal',
          'type': {'scalar': 'Float'},
          'isReadOnly': false,
          'authRules': [],
        },
        'floatList': {
          'name': 'floatList',
          'type': {
            'list': {'scalar': 'Float'}
          },
          'isReadOnly': false,
          'authRules': [],
        },
        'floatNullableList': {
          'name': 'floatNullableList',
          'type': {
            'list': {'scalar': 'Float'}
          },
          'isReadOnly': false,
          'authRules': [],
        },
        'nullableFloatList': {
          'name': 'nullableFloatList',
          'type': {
            'list': {'scalar': 'Float'}
          },
          'isReadOnly': false,
          'authRules': [],
        },
        'nullableFloatNullableList': {
          'name': 'nullableFloatNullableList',
          'type': {
            'list': {'scalar': 'Float'}
          },
          'isReadOnly': false,
          'authRules': [],
        },
        'createdAt': {
          'name': 'createdAt',
          'type': {'scalar': 'AWSDateTime'},
          'isReadOnly': true,
          'authRules': [],
        },
        'updatedAt': {
          'name': 'updatedAt',
          'type': {'scalar': 'AWSDateTime'},
          'isReadOnly': true,
          'authRules': [],
        },
      },
      'authRules': [],
      'indexes': [
        {
          'type': 'primary',
          'primaryField': 'id',
          'sortKeyFields': [],
        }
      ],
    },
  )!;

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, TestModel, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, TestModel, String> get ID => $id;
  @override
  double get floatVal;

  /// Query field for the [floatVal] field.
  QueryField<String, TestModel, double> get $floatVal => _queryFields.$floatVal;

  /// Query field for the [floatVal] field.
  @Deprecated(r'Use $floatVal instead')
  QueryField<String, TestModel, double> get FLOAT_VAL => $floatVal;
  @override
  double? get floatNullableVal;

  /// Query field for the [floatNullableVal] field.
  QueryField<String, TestModel, double?> get $floatNullableVal =>
      _queryFields.$floatNullableVal;

  /// Query field for the [floatNullableVal] field.
  @Deprecated(r'Use $floatNullableVal instead')
  QueryField<String, TestModel, double?> get FLOAT_NULLABLE_VAL =>
      $floatNullableVal;
  @override
  List<double> get floatList;

  /// Query field for the [floatList] field.
  QueryField<String, TestModel, double> get $floatList =>
      _queryFields.$floatList;

  /// Query field for the [floatList] field.
  @Deprecated(r'Use $floatList instead')
  QueryField<String, TestModel, double> get FLOAT_LIST => $floatList;
  @override
  List<double>? get floatNullableList;

  /// Query field for the [floatNullableList] field.
  QueryField<String, TestModel, double> get $floatNullableList =>
      _queryFields.$floatNullableList;

  /// Query field for the [floatNullableList] field.
  @Deprecated(r'Use $floatNullableList instead')
  QueryField<String, TestModel, double> get FLOAT_NULLABLE_LIST =>
      $floatNullableList;
  @override
  List<double?> get nullableFloatList;

  /// Query field for the [nullableFloatList] field.
  QueryField<String, TestModel, double?> get $nullableFloatList =>
      _queryFields.$nullableFloatList;

  /// Query field for the [nullableFloatList] field.
  @Deprecated(r'Use $nullableFloatList instead')
  QueryField<String, TestModel, double?> get NULLABLE_FLOAT_LIST =>
      $nullableFloatList;
  @override
  List<double?>? get nullableFloatNullableList;

  /// Query field for the [nullableFloatNullableList] field.
  QueryField<String, TestModel, double?> get $nullableFloatNullableList =>
      _queryFields.$nullableFloatNullableList;

  /// Query field for the [nullableFloatNullableList] field.
  @Deprecated(r'Use $nullableFloatNullableList instead')
  QueryField<String, TestModel, double?> get NULLABLE_FLOAT_NULLABLE_LIST =>
      $nullableFloatNullableList;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, TestModel, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, TestModel, String> get MODEL_IDENTIFIER =>
      $modelIdentifier;
  TestModel copyWith({
    String? id,
    double? floatVal,
    double? floatNullableVal,
    List<double>? floatList,
    List<double>? floatNullableList,
    List<double?>? nullableFloatList,
    List<double?>? nullableFloatNullableList,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return _TestModel._(
      id: id ?? this.id,
      floatVal: floatVal ?? this.floatVal,
      floatNullableVal: floatNullableVal ?? this.floatNullableVal,
      floatList: floatList ?? this.floatList,
      floatNullableList: floatNullableList ?? this.floatNullableList,
      nullableFloatList: nullableFloatList ?? this.nullableFloatList,
      nullableFloatNullableList:
          nullableFloatNullableList ?? this.nullableFloatNullableList,
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
    );
  }

  @override
  T valueFor<T extends Object?>(QueryField<String, TestModel, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'floatVal':
        value = floatVal;
        break;
      case r'floatNullableVal':
        value = floatNullableVal;
        break;
      case r'floatList':
        value = floatList;
        break;
      case r'floatNullableList':
        value = floatNullableList;
        break;
      case r'nullableFloatList':
        value = nullableFloatList;
        break;
      case r'nullableFloatNullableList':
        value = nullableFloatNullableList;
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

class _TestModel extends TestModel {
  _TestModel({
    String? id,
    required this.floatVal,
    this.floatNullableVal,
    required this.floatList,
    this.floatNullableList,
    required this.nullableFloatList,
    this.nullableFloatNullableList,
  })  : id = id ?? uuid(),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _TestModel._({
    required this.id,
    required this.floatVal,
    this.floatNullableVal,
    required this.floatList,
    this.floatNullableList,
    required this.nullableFloatList,
    this.nullableFloatNullableList,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String id;

  @override
  final double floatVal;

  @override
  final double? floatNullableVal;

  @override
  final List<double> floatList;

  @override
  final List<double>? floatNullableList;

  @override
  final List<double?> nullableFloatList;

  @override
  final List<double?>? nullableFloatNullableList;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemoteTestModel extends TestModel
    implements RemoteModel<String, TestModel> {
  const RemoteTestModel._() : super._();
}

class _RemoteTestModel extends RemoteTestModel {
  const _RemoteTestModel({
    required this.id,
    required this.floatVal,
    this.floatNullableVal,
    required this.floatList,
    this.floatNullableList,
    required this.nullableFloatList,
    this.nullableFloatNullableList,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteTestModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'TestModel',
            'id',
          ))
        : (json['id'] as String);
    final floatVal = json['floatVal'] == null
        ? (throw ModelFieldError(
            'TestModel',
            'floatVal',
          ))
        : (json['floatVal'] as double);
    final floatNullableVal = json['floatNullableVal'] == null
        ? null
        : (json['floatNullableVal'] as double);
    final floatList = json['floatList'] == null
        ? (throw ModelFieldError(
            'TestModel',
            'floatList',
          ))
        : (json['floatList'] as List<Object?>)
            .cast<double?>()
            .map(
              (el) =>
                  el ??
                  (throw ModelFieldError(
                    'TestModel',
                    'floatList',
                  )),
            )
            .toList();
    final floatNullableList = json['floatNullableList'] == null
        ? null
        : (json['floatNullableList'] as List<Object?>)
            .cast<double?>()
            .map(
              (el) =>
                  el ??
                  (throw ModelFieldError(
                    'TestModel',
                    'floatNullableList',
                  )),
            )
            .toList();
    final nullableFloatList = json['nullableFloatList'] == null
        ? (throw ModelFieldError(
            'TestModel',
            'nullableFloatList',
          ))
        : (json['nullableFloatList'] as List<Object?>).cast<double?>().toList();
    final nullableFloatNullableList = json['nullableFloatNullableList'] == null
        ? null
        : (json['nullableFloatNullableList'] as List<Object?>)
            .cast<double?>()
            .toList();
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'TestModel',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'TestModel',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'TestModel',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'TestModel',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'TestModel',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteTestModel(
      id: id,
      floatVal: floatVal,
      floatNullableVal: floatNullableVal,
      floatList: floatList,
      floatNullableList: floatNullableList,
      nullableFloatList: nullableFloatList,
      nullableFloatNullableList: nullableFloatNullableList,
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
  final double floatVal;

  @override
  final double? floatNullableVal;

  @override
  final List<double> floatList;

  @override
  final List<double>? floatNullableList;

  @override
  final List<double?> nullableFloatList;

  @override
  final List<double?>? nullableFloatNullableList;

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
