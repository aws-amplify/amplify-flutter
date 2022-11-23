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

library models.scalar_model;

import 'package:amplify_core/amplify_core.dart';

class ScalarModelType
    extends ModelType<String, ScalarModel, PartialScalarModel> {
  const ScalarModelType();

  @override
  T fromJson<T extends PartialModel<String, ScalarModel>>(
    Map<String, Object?> json,
  ) {
    if (T == ScalarModel || T == Model<String, ScalarModel>) {
      return ScalarModel.fromJson(json) as T;
    }
    if (T == RemoteScalarModel || T == RemoteModel<String, ScalarModel>) {
      return _RemoteScalarModel.fromJson(json) as T;
    }
    return _PartialScalarModel.fromJson(json) as T;
  }

  @override
  String get modelName => 'ScalarModel';
}

class ScalarModelQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const ScalarModelQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, ScalarModel>? _root;

  /// Query field for the [ScalarModel.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, String>(
        const QueryField<String, ScalarModel, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [ScalarModel.str] field.
  QueryField<ModelIdentifier, M, String?> get $str =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, String?>(
        const QueryField<String, ScalarModel, String?>(fieldName: 'str'),
        root: _root,
      );

  /// Query field for the [ScalarModel.requiredStr] field.
  QueryField<ModelIdentifier, M, String> get $requiredStr =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, String>(
        const QueryField<String, ScalarModel, String>(fieldName: 'requiredStr'),
        root: _root,
      );

  /// Query field for the [ScalarModel.integer] field.
  QueryField<ModelIdentifier, M, int?> get $integer =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, int?>(
        const QueryField<String, ScalarModel, int?>(fieldName: 'integer'),
        root: _root,
      );

  /// Query field for the [ScalarModel.requiredInteger] field.
  QueryField<ModelIdentifier, M, int> get $requiredInteger =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, int>(
        const QueryField<String, ScalarModel, int>(
          fieldName: 'requiredInteger',
        ),
        root: _root,
      );

  /// Query field for the [ScalarModel.float] field.
  QueryField<ModelIdentifier, M, double?> get $float =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, double?>(
        const QueryField<String, ScalarModel, double?>(fieldName: 'float'),
        root: _root,
      );

  /// Query field for the [ScalarModel.requiredFloat] field.
  QueryField<ModelIdentifier, M, double> get $requiredFloat =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, double>(
        const QueryField<String, ScalarModel, double>(
          fieldName: 'requiredFloat',
        ),
        root: _root,
      );

  /// Query field for the [ScalarModel.boolean] field.
  QueryField<ModelIdentifier, M, bool?> get $boolean =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, bool?>(
        const QueryField<String, ScalarModel, bool?>(fieldName: 'boolean'),
        root: _root,
      );

  /// Query field for the [ScalarModel.requiredBoolean] field.
  QueryField<ModelIdentifier, M, bool> get $requiredBoolean =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, bool>(
        const QueryField<String, ScalarModel, bool>(
          fieldName: 'requiredBoolean',
        ),
        root: _root,
      );

  /// Query field for the [ScalarModel.awsDate] field.
  QueryField<ModelIdentifier, M, TemporalDate?> get $awsDate =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, TemporalDate?>(
        const QueryField<String, ScalarModel, TemporalDate?>(
          fieldName: 'awsDate',
        ),
        root: _root,
      );

  /// Query field for the [ScalarModel.requiredAwsDate] field.
  QueryField<ModelIdentifier, M, TemporalDate> get $requiredAwsDate =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, TemporalDate>(
        const QueryField<String, ScalarModel, TemporalDate>(
          fieldName: 'requiredAwsDate',
        ),
        root: _root,
      );

  /// Query field for the [ScalarModel.awsDateTime] field.
  QueryField<ModelIdentifier, M, TemporalDateTime?> get $awsDateTime =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel,
          TemporalDateTime?>(
        const QueryField<String, ScalarModel, TemporalDateTime?>(
          fieldName: 'awsDateTime',
        ),
        root: _root,
      );

  /// Query field for the [ScalarModel.requiredAwsDateTime] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $requiredAwsDateTime =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel,
          TemporalDateTime>(
        const QueryField<String, ScalarModel, TemporalDateTime>(
          fieldName: 'requiredAwsDateTime',
        ),
        root: _root,
      );

  /// Query field for the [ScalarModel.awsTime] field.
  QueryField<ModelIdentifier, M, TemporalTime?> get $awsTime =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, TemporalTime?>(
        const QueryField<String, ScalarModel, TemporalTime?>(
          fieldName: 'awsTime',
        ),
        root: _root,
      );

  /// Query field for the [ScalarModel.requiredAwsTime] field.
  QueryField<ModelIdentifier, M, TemporalTime> get $requiredAwsTime =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, TemporalTime>(
        const QueryField<String, ScalarModel, TemporalTime>(
          fieldName: 'requiredAwsTime',
        ),
        root: _root,
      );

  /// Query field for the [ScalarModel.awsTimestamp] field.
  QueryField<ModelIdentifier, M, TemporalTimestamp?> get $awsTimestamp =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel,
          TemporalTimestamp?>(
        const QueryField<String, ScalarModel, TemporalTimestamp?>(
          fieldName: 'awsTimestamp',
        ),
        root: _root,
      );

  /// Query field for the [ScalarModel.requiredAwsTimestamp] field.
  QueryField<ModelIdentifier, M, TemporalTimestamp> get $requiredAwsTimestamp =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel,
          TemporalTimestamp>(
        const QueryField<String, ScalarModel, TemporalTimestamp>(
          fieldName: 'requiredAwsTimestamp',
        ),
        root: _root,
      );

  /// Query field for the [ScalarModel.awsEmail] field.
  QueryField<ModelIdentifier, M, String?> get $awsEmail =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, String?>(
        const QueryField<String, ScalarModel, String?>(fieldName: 'awsEmail'),
        root: _root,
      );

  /// Query field for the [ScalarModel.requiredAwsEmail] field.
  QueryField<ModelIdentifier, M, String> get $requiredAwsEmail =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, String>(
        const QueryField<String, ScalarModel, String>(
          fieldName: 'requiredAwsEmail',
        ),
        root: _root,
      );

  /// Query field for the [ScalarModel.awsJson] field.
  QueryField<ModelIdentifier, M, Object?> get $awsJson =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, Object?>(
        const QueryField<String, ScalarModel, Object?>(fieldName: 'awsJson'),
        root: _root,
      );

  /// Query field for the [ScalarModel.requiredAwsJson] field.
  QueryField<ModelIdentifier, M, Object> get $requiredAwsJson =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, Object>(
        const QueryField<String, ScalarModel, Object>(
          fieldName: 'requiredAwsJson',
        ),
        root: _root,
      );

  /// Query field for the [ScalarModel.awsPhone] field.
  QueryField<ModelIdentifier, M, String?> get $awsPhone =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, String?>(
        const QueryField<String, ScalarModel, String?>(fieldName: 'awsPhone'),
        root: _root,
      );

  /// Query field for the [ScalarModel.requiredAwsPhone] field.
  QueryField<ModelIdentifier, M, String> get $requiredAwsPhone =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, String>(
        const QueryField<String, ScalarModel, String>(
          fieldName: 'requiredAwsPhone',
        ),
        root: _root,
      );

  /// Query field for the [ScalarModel.awsUrl] field.
  QueryField<ModelIdentifier, M, Uri?> get $awsUrl =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, Uri?>(
        const QueryField<String, ScalarModel, Uri?>(fieldName: 'awsUrl'),
        root: _root,
      );

  /// Query field for the [ScalarModel.requiredAwsUrl] field.
  QueryField<ModelIdentifier, M, Uri> get $requiredAwsUrl =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, Uri>(
        const QueryField<String, ScalarModel, Uri>(fieldName: 'requiredAwsUrl'),
        root: _root,
      );

  /// Query field for the [ScalarModel.awsIpAddress] field.
  QueryField<ModelIdentifier, M, String?> get $awsIpAddress =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, String?>(
        const QueryField<String, ScalarModel, String?>(
          fieldName: 'awsIpAddress',
        ),
        root: _root,
      );

  /// Query field for the [ScalarModel.requiredAwsIpAddress] field.
  QueryField<ModelIdentifier, M, String> get $requiredAwsIpAddress =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, String>(
        const QueryField<String, ScalarModel, String>(
          fieldName: 'requiredAwsIpAddress',
        ),
        root: _root,
      );

  /// Query field for the [ScalarModel.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel,
          TemporalDateTime>(
        const QueryField<String, ScalarModel, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [ScalarModel.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel,
          TemporalDateTime>(
        const QueryField<String, ScalarModel, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [ScalarModel] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, ScalarModel, String>(
        const QueryField<String, ScalarModel, String>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialScalarModel extends PartialModel<String, ScalarModel>
    with AWSEquatable<PartialScalarModel> {
  const PartialScalarModel._();

  String get id;
  String? get str;
  String? get requiredStr;
  int? get integer;
  int? get requiredInteger;
  double? get float;
  double? get requiredFloat;
  bool? get boolean;
  bool? get requiredBoolean;
  TemporalDate? get awsDate;
  TemporalDate? get requiredAwsDate;
  TemporalDateTime? get awsDateTime;
  TemporalDateTime? get requiredAwsDateTime;
  TemporalTime? get awsTime;
  TemporalTime? get requiredAwsTime;
  TemporalTimestamp? get awsTimestamp;
  TemporalTimestamp? get requiredAwsTimestamp;
  String? get awsEmail;
  String? get requiredAwsEmail;
  Object? get awsJson;
  Object? get requiredAwsJson;
  String? get awsPhone;
  String? get requiredAwsPhone;
  Uri? get awsUrl;
  Uri? get requiredAwsUrl;
  String? get awsIpAddress;
  String? get requiredAwsIpAddress;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  ScalarModelType get modelType => ScalarModel.classType;
  @override
  List<Object?> get props => [
        id,
        str,
        requiredStr,
        integer,
        requiredInteger,
        float,
        requiredFloat,
        boolean,
        requiredBoolean,
        awsDate,
        requiredAwsDate,
        awsDateTime,
        requiredAwsDateTime,
        awsTime,
        requiredAwsTime,
        awsTimestamp,
        requiredAwsTimestamp,
        awsEmail,
        requiredAwsEmail,
        awsJson,
        requiredAwsJson,
        awsPhone,
        requiredAwsPhone,
        awsUrl,
        requiredAwsUrl,
        awsIpAddress,
        requiredAwsIpAddress,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'str': str,
        'requiredStr': requiredStr,
        'integer': integer,
        'requiredInteger': requiredInteger,
        'float': float,
        'requiredFloat': requiredFloat,
        'boolean': boolean,
        'requiredBoolean': requiredBoolean,
        'awsDate': awsDate?.format(),
        'requiredAwsDate': requiredAwsDate?.format(),
        'awsDateTime': awsDateTime?.format(),
        'requiredAwsDateTime': requiredAwsDateTime?.format(),
        'awsTime': awsTime?.format(),
        'requiredAwsTime': requiredAwsTime?.format(),
        'awsTimestamp': awsTimestamp?.toSeconds(),
        'requiredAwsTimestamp': requiredAwsTimestamp?.toSeconds(),
        'awsEmail': awsEmail,
        'requiredAwsEmail': requiredAwsEmail,
        'awsJson': awsJson,
        'requiredAwsJson': requiredAwsJson,
        'awsPhone': awsPhone,
        'requiredAwsPhone': requiredAwsPhone,
        'awsUrl': awsUrl?.toString(),
        'requiredAwsUrl': requiredAwsUrl?.toString(),
        'awsIpAddress': awsIpAddress,
        'requiredAwsIpAddress': requiredAwsIpAddress,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'ScalarModel';
}

class _PartialScalarModel extends PartialScalarModel {
  const _PartialScalarModel({
    required this.id,
    this.str,
    this.requiredStr,
    this.integer,
    this.requiredInteger,
    this.float,
    this.requiredFloat,
    this.boolean,
    this.requiredBoolean,
    this.awsDate,
    this.requiredAwsDate,
    this.awsDateTime,
    this.requiredAwsDateTime,
    this.awsTime,
    this.requiredAwsTime,
    this.awsTimestamp,
    this.requiredAwsTimestamp,
    this.awsEmail,
    this.requiredAwsEmail,
    this.awsJson,
    this.requiredAwsJson,
    this.awsPhone,
    this.requiredAwsPhone,
    this.awsUrl,
    this.requiredAwsUrl,
    this.awsIpAddress,
    this.requiredAwsIpAddress,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialScalarModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'id',
          ))
        : (json['id'] as String);
    final str = json['str'] == null ? null : (json['str'] as String);
    final requiredStr =
        json['requiredStr'] == null ? null : (json['requiredStr'] as String);
    final integer = json['integer'] == null ? null : (json['integer'] as int);
    final requiredInteger = json['requiredInteger'] == null
        ? null
        : (json['requiredInteger'] as int);
    final float = json['float'] == null ? null : (json['float'] as double);
    final requiredFloat = json['requiredFloat'] == null
        ? null
        : (json['requiredFloat'] as double);
    final boolean = json['boolean'] == null ? null : (json['boolean'] as bool);
    final requiredBoolean = json['requiredBoolean'] == null
        ? null
        : (json['requiredBoolean'] as bool);
    final awsDate = json['awsDate'] == null
        ? null
        : TemporalDate.fromString((json['awsDate'] as String));
    final requiredAwsDate = json['requiredAwsDate'] == null
        ? null
        : TemporalDate.fromString((json['requiredAwsDate'] as String));
    final awsDateTime = json['awsDateTime'] == null
        ? null
        : TemporalDateTime.fromString((json['awsDateTime'] as String));
    final requiredAwsDateTime = json['requiredAwsDateTime'] == null
        ? null
        : TemporalDateTime.fromString((json['requiredAwsDateTime'] as String));
    final awsTime = json['awsTime'] == null
        ? null
        : TemporalTime.fromString((json['awsTime'] as String));
    final requiredAwsTime = json['requiredAwsTime'] == null
        ? null
        : TemporalTime.fromString((json['requiredAwsTime'] as String));
    final awsTimestamp = json['awsTimestamp'] == null
        ? null
        : TemporalTimestamp.fromSeconds((json['awsTimestamp'] as int));
    final requiredAwsTimestamp = json['requiredAwsTimestamp'] == null
        ? null
        : TemporalTimestamp.fromSeconds((json['requiredAwsTimestamp'] as int));
    final awsEmail =
        json['awsEmail'] == null ? null : (json['awsEmail'] as String);
    final requiredAwsEmail = json['requiredAwsEmail'] == null
        ? null
        : (json['requiredAwsEmail'] as String);
    final awsJson = json['awsJson'];
    final requiredAwsJson = json['requiredAwsJson'];
    final awsPhone =
        json['awsPhone'] == null ? null : (json['awsPhone'] as String);
    final requiredAwsPhone = json['requiredAwsPhone'] == null
        ? null
        : (json['requiredAwsPhone'] as String);
    final awsUrl =
        json['awsUrl'] == null ? null : Uri.parse((json['awsUrl'] as String));
    final requiredAwsUrl = json['requiredAwsUrl'] == null
        ? null
        : Uri.parse((json['requiredAwsUrl'] as String));
    final awsIpAddress =
        json['awsIpAddress'] == null ? null : (json['awsIpAddress'] as String);
    final requiredAwsIpAddress = json['requiredAwsIpAddress'] == null
        ? null
        : (json['requiredAwsIpAddress'] as String);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialScalarModel(
      id: id,
      str: str,
      requiredStr: requiredStr,
      integer: integer,
      requiredInteger: requiredInteger,
      float: float,
      requiredFloat: requiredFloat,
      boolean: boolean,
      requiredBoolean: requiredBoolean,
      awsDate: awsDate,
      requiredAwsDate: requiredAwsDate,
      awsDateTime: awsDateTime,
      requiredAwsDateTime: requiredAwsDateTime,
      awsTime: awsTime,
      requiredAwsTime: requiredAwsTime,
      awsTimestamp: awsTimestamp,
      requiredAwsTimestamp: requiredAwsTimestamp,
      awsEmail: awsEmail,
      requiredAwsEmail: requiredAwsEmail,
      awsJson: awsJson,
      requiredAwsJson: requiredAwsJson,
      awsPhone: awsPhone,
      requiredAwsPhone: requiredAwsPhone,
      awsUrl: awsUrl,
      requiredAwsUrl: requiredAwsUrl,
      awsIpAddress: awsIpAddress,
      requiredAwsIpAddress: requiredAwsIpAddress,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String id;

  @override
  final String? str;

  @override
  final String? requiredStr;

  @override
  final int? integer;

  @override
  final int? requiredInteger;

  @override
  final double? float;

  @override
  final double? requiredFloat;

  @override
  final bool? boolean;

  @override
  final bool? requiredBoolean;

  @override
  final TemporalDate? awsDate;

  @override
  final TemporalDate? requiredAwsDate;

  @override
  final TemporalDateTime? awsDateTime;

  @override
  final TemporalDateTime? requiredAwsDateTime;

  @override
  final TemporalTime? awsTime;

  @override
  final TemporalTime? requiredAwsTime;

  @override
  final TemporalTimestamp? awsTimestamp;

  @override
  final TemporalTimestamp? requiredAwsTimestamp;

  @override
  final String? awsEmail;

  @override
  final String? requiredAwsEmail;

  @override
  final Object? awsJson;

  @override
  final Object? requiredAwsJson;

  @override
  final String? awsPhone;

  @override
  final String? requiredAwsPhone;

  @override
  final Uri? awsUrl;

  @override
  final Uri? requiredAwsUrl;

  @override
  final String? awsIpAddress;

  @override
  final String? requiredAwsIpAddress;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class ScalarModel extends PartialScalarModel
    implements Model<String, ScalarModel> {
  factory ScalarModel({
    String? id,
    String? str,
    required String requiredStr,
    int? integer,
    required int requiredInteger,
    double? float,
    required double requiredFloat,
    bool? boolean,
    required bool requiredBoolean,
    DateTime? awsDate,
    required DateTime requiredAwsDate,
    DateTime? awsDateTime,
    required DateTime requiredAwsDateTime,
    DateTime? awsTime,
    required DateTime requiredAwsTime,
    DateTime? awsTimestamp,
    required DateTime requiredAwsTimestamp,
    String? awsEmail,
    required String requiredAwsEmail,
    Object? awsJson,
    required Object requiredAwsJson,
    String? awsPhone,
    required String requiredAwsPhone,
    Uri? awsUrl,
    required Uri requiredAwsUrl,
    String? awsIpAddress,
    required String requiredAwsIpAddress,
  }) = _ScalarModel;

  const ScalarModel._() : super._();

  factory ScalarModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'id',
          ))
        : (json['id'] as String);
    final str = json['str'] == null ? null : (json['str'] as String);
    final requiredStr = json['requiredStr'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredStr',
          ))
        : (json['requiredStr'] as String);
    final integer = json['integer'] == null ? null : (json['integer'] as int);
    final requiredInteger = json['requiredInteger'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredInteger',
          ))
        : (json['requiredInteger'] as int);
    final float = json['float'] == null ? null : (json['float'] as double);
    final requiredFloat = json['requiredFloat'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredFloat',
          ))
        : (json['requiredFloat'] as double);
    final boolean = json['boolean'] == null ? null : (json['boolean'] as bool);
    final requiredBoolean = json['requiredBoolean'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredBoolean',
          ))
        : (json['requiredBoolean'] as bool);
    final awsDate = json['awsDate'] == null
        ? null
        : TemporalDate.fromString((json['awsDate'] as String));
    final requiredAwsDate = json['requiredAwsDate'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredAwsDate',
          ))
        : TemporalDate.fromString((json['requiredAwsDate'] as String));
    final awsDateTime = json['awsDateTime'] == null
        ? null
        : TemporalDateTime.fromString((json['awsDateTime'] as String));
    final requiredAwsDateTime = json['requiredAwsDateTime'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredAwsDateTime',
          ))
        : TemporalDateTime.fromString((json['requiredAwsDateTime'] as String));
    final awsTime = json['awsTime'] == null
        ? null
        : TemporalTime.fromString((json['awsTime'] as String));
    final requiredAwsTime = json['requiredAwsTime'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredAwsTime',
          ))
        : TemporalTime.fromString((json['requiredAwsTime'] as String));
    final awsTimestamp = json['awsTimestamp'] == null
        ? null
        : TemporalTimestamp.fromSeconds((json['awsTimestamp'] as int));
    final requiredAwsTimestamp = json['requiredAwsTimestamp'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredAwsTimestamp',
          ))
        : TemporalTimestamp.fromSeconds((json['requiredAwsTimestamp'] as int));
    final awsEmail =
        json['awsEmail'] == null ? null : (json['awsEmail'] as String);
    final requiredAwsEmail = json['requiredAwsEmail'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredAwsEmail',
          ))
        : (json['requiredAwsEmail'] as String);
    final awsJson = json['awsJson'];
    final requiredAwsJson = json['requiredAwsJson'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredAwsJson',
          ))
        : (json['requiredAwsJson'] as Object);
    final awsPhone =
        json['awsPhone'] == null ? null : (json['awsPhone'] as String);
    final requiredAwsPhone = json['requiredAwsPhone'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredAwsPhone',
          ))
        : (json['requiredAwsPhone'] as String);
    final awsUrl =
        json['awsUrl'] == null ? null : Uri.parse((json['awsUrl'] as String));
    final requiredAwsUrl = json['requiredAwsUrl'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredAwsUrl',
          ))
        : Uri.parse((json['requiredAwsUrl'] as String));
    final awsIpAddress =
        json['awsIpAddress'] == null ? null : (json['awsIpAddress'] as String);
    final requiredAwsIpAddress = json['requiredAwsIpAddress'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredAwsIpAddress',
          ))
        : (json['requiredAwsIpAddress'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _ScalarModel._(
      id: id,
      str: str,
      requiredStr: requiredStr,
      integer: integer,
      requiredInteger: requiredInteger,
      float: float,
      requiredFloat: requiredFloat,
      boolean: boolean,
      requiredBoolean: requiredBoolean,
      awsDate: awsDate,
      requiredAwsDate: requiredAwsDate,
      awsDateTime: awsDateTime,
      requiredAwsDateTime: requiredAwsDateTime,
      awsTime: awsTime,
      requiredAwsTime: requiredAwsTime,
      awsTimestamp: awsTimestamp,
      requiredAwsTimestamp: requiredAwsTimestamp,
      awsEmail: awsEmail,
      requiredAwsEmail: requiredAwsEmail,
      awsJson: awsJson,
      requiredAwsJson: requiredAwsJson,
      awsPhone: awsPhone,
      requiredAwsPhone: requiredAwsPhone,
      awsUrl: awsUrl,
      requiredAwsUrl: requiredAwsUrl,
      awsIpAddress: awsIpAddress,
      requiredAwsIpAddress: requiredAwsIpAddress,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const ScalarModelType classType = ScalarModelType();

  static const ScalarModelQueryFields<String, ScalarModel> _queryFields =
      ScalarModelQueryFields();

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, ScalarModel, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, ScalarModel, String> get ID => $id;
  @override
  String? get str;

  /// Query field for the [str] field.
  QueryField<String, ScalarModel, String?> get $str => _queryFields.$str;

  /// Query field for the [str] field.
  @Deprecated(r'Use $str instead')
  QueryField<String, ScalarModel, String?> get STR => $str;
  @override
  String get requiredStr;

  /// Query field for the [requiredStr] field.
  QueryField<String, ScalarModel, String> get $requiredStr =>
      _queryFields.$requiredStr;

  /// Query field for the [requiredStr] field.
  @Deprecated(r'Use $requiredStr instead')
  QueryField<String, ScalarModel, String> get REQUIRED_STR => $requiredStr;
  @override
  int? get integer;

  /// Query field for the [integer] field.
  QueryField<String, ScalarModel, int?> get $integer => _queryFields.$integer;

  /// Query field for the [integer] field.
  @Deprecated(r'Use $integer instead')
  QueryField<String, ScalarModel, int?> get INTEGER => $integer;
  @override
  int get requiredInteger;

  /// Query field for the [requiredInteger] field.
  QueryField<String, ScalarModel, int> get $requiredInteger =>
      _queryFields.$requiredInteger;

  /// Query field for the [requiredInteger] field.
  @Deprecated(r'Use $requiredInteger instead')
  QueryField<String, ScalarModel, int> get REQUIRED_INTEGER => $requiredInteger;
  @override
  double? get float;

  /// Query field for the [float] field.
  QueryField<String, ScalarModel, double?> get $float => _queryFields.$float;

  /// Query field for the [float] field.
  @Deprecated(r'Use $float instead')
  QueryField<String, ScalarModel, double?> get FLOAT => $float;
  @override
  double get requiredFloat;

  /// Query field for the [requiredFloat] field.
  QueryField<String, ScalarModel, double> get $requiredFloat =>
      _queryFields.$requiredFloat;

  /// Query field for the [requiredFloat] field.
  @Deprecated(r'Use $requiredFloat instead')
  QueryField<String, ScalarModel, double> get REQUIRED_FLOAT => $requiredFloat;
  @override
  bool? get boolean;

  /// Query field for the [boolean] field.
  QueryField<String, ScalarModel, bool?> get $boolean => _queryFields.$boolean;

  /// Query field for the [boolean] field.
  @Deprecated(r'Use $boolean instead')
  QueryField<String, ScalarModel, bool?> get BOOLEAN => $boolean;
  @override
  bool get requiredBoolean;

  /// Query field for the [requiredBoolean] field.
  QueryField<String, ScalarModel, bool> get $requiredBoolean =>
      _queryFields.$requiredBoolean;

  /// Query field for the [requiredBoolean] field.
  @Deprecated(r'Use $requiredBoolean instead')
  QueryField<String, ScalarModel, bool> get REQUIRED_BOOLEAN =>
      $requiredBoolean;
  @override
  TemporalDate? get awsDate;

  /// Query field for the [awsDate] field.
  QueryField<String, ScalarModel, TemporalDate?> get $awsDate =>
      _queryFields.$awsDate;

  /// Query field for the [awsDate] field.
  @Deprecated(r'Use $awsDate instead')
  QueryField<String, ScalarModel, TemporalDate?> get AWS_DATE => $awsDate;
  @override
  TemporalDate get requiredAwsDate;

  /// Query field for the [requiredAwsDate] field.
  QueryField<String, ScalarModel, TemporalDate> get $requiredAwsDate =>
      _queryFields.$requiredAwsDate;

  /// Query field for the [requiredAwsDate] field.
  @Deprecated(r'Use $requiredAwsDate instead')
  QueryField<String, ScalarModel, TemporalDate> get REQUIRED_AWS_DATE =>
      $requiredAwsDate;
  @override
  TemporalDateTime? get awsDateTime;

  /// Query field for the [awsDateTime] field.
  QueryField<String, ScalarModel, TemporalDateTime?> get $awsDateTime =>
      _queryFields.$awsDateTime;

  /// Query field for the [awsDateTime] field.
  @Deprecated(r'Use $awsDateTime instead')
  QueryField<String, ScalarModel, TemporalDateTime?> get AWS_DATE_TIME =>
      $awsDateTime;
  @override
  TemporalDateTime get requiredAwsDateTime;

  /// Query field for the [requiredAwsDateTime] field.
  QueryField<String, ScalarModel, TemporalDateTime> get $requiredAwsDateTime =>
      _queryFields.$requiredAwsDateTime;

  /// Query field for the [requiredAwsDateTime] field.
  @Deprecated(r'Use $requiredAwsDateTime instead')
  QueryField<String, ScalarModel, TemporalDateTime>
      get REQUIRED_AWS_DATE_TIME => $requiredAwsDateTime;
  @override
  TemporalTime? get awsTime;

  /// Query field for the [awsTime] field.
  QueryField<String, ScalarModel, TemporalTime?> get $awsTime =>
      _queryFields.$awsTime;

  /// Query field for the [awsTime] field.
  @Deprecated(r'Use $awsTime instead')
  QueryField<String, ScalarModel, TemporalTime?> get AWS_TIME => $awsTime;
  @override
  TemporalTime get requiredAwsTime;

  /// Query field for the [requiredAwsTime] field.
  QueryField<String, ScalarModel, TemporalTime> get $requiredAwsTime =>
      _queryFields.$requiredAwsTime;

  /// Query field for the [requiredAwsTime] field.
  @Deprecated(r'Use $requiredAwsTime instead')
  QueryField<String, ScalarModel, TemporalTime> get REQUIRED_AWS_TIME =>
      $requiredAwsTime;
  @override
  TemporalTimestamp? get awsTimestamp;

  /// Query field for the [awsTimestamp] field.
  QueryField<String, ScalarModel, TemporalTimestamp?> get $awsTimestamp =>
      _queryFields.$awsTimestamp;

  /// Query field for the [awsTimestamp] field.
  @Deprecated(r'Use $awsTimestamp instead')
  QueryField<String, ScalarModel, TemporalTimestamp?> get AWS_TIMESTAMP =>
      $awsTimestamp;
  @override
  TemporalTimestamp get requiredAwsTimestamp;

  /// Query field for the [requiredAwsTimestamp] field.
  QueryField<String, ScalarModel, TemporalTimestamp>
      get $requiredAwsTimestamp => _queryFields.$requiredAwsTimestamp;

  /// Query field for the [requiredAwsTimestamp] field.
  @Deprecated(r'Use $requiredAwsTimestamp instead')
  QueryField<String, ScalarModel, TemporalTimestamp>
      get REQUIRED_AWS_TIMESTAMP => $requiredAwsTimestamp;
  @override
  String? get awsEmail;

  /// Query field for the [awsEmail] field.
  QueryField<String, ScalarModel, String?> get $awsEmail =>
      _queryFields.$awsEmail;

  /// Query field for the [awsEmail] field.
  @Deprecated(r'Use $awsEmail instead')
  QueryField<String, ScalarModel, String?> get AWS_EMAIL => $awsEmail;
  @override
  String get requiredAwsEmail;

  /// Query field for the [requiredAwsEmail] field.
  QueryField<String, ScalarModel, String> get $requiredAwsEmail =>
      _queryFields.$requiredAwsEmail;

  /// Query field for the [requiredAwsEmail] field.
  @Deprecated(r'Use $requiredAwsEmail instead')
  QueryField<String, ScalarModel, String> get REQUIRED_AWS_EMAIL =>
      $requiredAwsEmail;
  @override
  Object? get awsJson;

  /// Query field for the [awsJson] field.
  QueryField<String, ScalarModel, Object?> get $awsJson =>
      _queryFields.$awsJson;

  /// Query field for the [awsJson] field.
  @Deprecated(r'Use $awsJson instead')
  QueryField<String, ScalarModel, Object?> get AWS_JSON => $awsJson;
  @override
  Object get requiredAwsJson;

  /// Query field for the [requiredAwsJson] field.
  QueryField<String, ScalarModel, Object> get $requiredAwsJson =>
      _queryFields.$requiredAwsJson;

  /// Query field for the [requiredAwsJson] field.
  @Deprecated(r'Use $requiredAwsJson instead')
  QueryField<String, ScalarModel, Object> get REQUIRED_AWS_JSON =>
      $requiredAwsJson;
  @override
  String? get awsPhone;

  /// Query field for the [awsPhone] field.
  QueryField<String, ScalarModel, String?> get $awsPhone =>
      _queryFields.$awsPhone;

  /// Query field for the [awsPhone] field.
  @Deprecated(r'Use $awsPhone instead')
  QueryField<String, ScalarModel, String?> get AWS_PHONE => $awsPhone;
  @override
  String get requiredAwsPhone;

  /// Query field for the [requiredAwsPhone] field.
  QueryField<String, ScalarModel, String> get $requiredAwsPhone =>
      _queryFields.$requiredAwsPhone;

  /// Query field for the [requiredAwsPhone] field.
  @Deprecated(r'Use $requiredAwsPhone instead')
  QueryField<String, ScalarModel, String> get REQUIRED_AWS_PHONE =>
      $requiredAwsPhone;
  @override
  Uri? get awsUrl;

  /// Query field for the [awsUrl] field.
  QueryField<String, ScalarModel, Uri?> get $awsUrl => _queryFields.$awsUrl;

  /// Query field for the [awsUrl] field.
  @Deprecated(r'Use $awsUrl instead')
  QueryField<String, ScalarModel, Uri?> get AWS_URL => $awsUrl;
  @override
  Uri get requiredAwsUrl;

  /// Query field for the [requiredAwsUrl] field.
  QueryField<String, ScalarModel, Uri> get $requiredAwsUrl =>
      _queryFields.$requiredAwsUrl;

  /// Query field for the [requiredAwsUrl] field.
  @Deprecated(r'Use $requiredAwsUrl instead')
  QueryField<String, ScalarModel, Uri> get REQUIRED_AWS_URL => $requiredAwsUrl;
  @override
  String? get awsIpAddress;

  /// Query field for the [awsIpAddress] field.
  QueryField<String, ScalarModel, String?> get $awsIpAddress =>
      _queryFields.$awsIpAddress;

  /// Query field for the [awsIpAddress] field.
  @Deprecated(r'Use $awsIpAddress instead')
  QueryField<String, ScalarModel, String?> get AWS_IP_ADDRESS => $awsIpAddress;
  @override
  String get requiredAwsIpAddress;

  /// Query field for the [requiredAwsIpAddress] field.
  QueryField<String, ScalarModel, String> get $requiredAwsIpAddress =>
      _queryFields.$requiredAwsIpAddress;

  /// Query field for the [requiredAwsIpAddress] field.
  @Deprecated(r'Use $requiredAwsIpAddress instead')
  QueryField<String, ScalarModel, String> get REQUIRED_AWS_IP_ADDRESS =>
      $requiredAwsIpAddress;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, ScalarModel, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, ScalarModel, String> get MODEL_IDENTIFIER =>
      $modelIdentifier;
  @override
  T valueFor<T extends Object?>(QueryField<String, ScalarModel, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'str':
        value = str;
        break;
      case r'requiredStr':
        value = requiredStr;
        break;
      case r'integer':
        value = integer;
        break;
      case r'requiredInteger':
        value = requiredInteger;
        break;
      case r'float':
        value = float;
        break;
      case r'requiredFloat':
        value = requiredFloat;
        break;
      case r'boolean':
        value = boolean;
        break;
      case r'requiredBoolean':
        value = requiredBoolean;
        break;
      case r'awsDate':
        value = awsDate;
        break;
      case r'requiredAwsDate':
        value = requiredAwsDate;
        break;
      case r'awsDateTime':
        value = awsDateTime;
        break;
      case r'requiredAwsDateTime':
        value = requiredAwsDateTime;
        break;
      case r'awsTime':
        value = awsTime;
        break;
      case r'requiredAwsTime':
        value = requiredAwsTime;
        break;
      case r'awsTimestamp':
        value = awsTimestamp;
        break;
      case r'requiredAwsTimestamp':
        value = requiredAwsTimestamp;
        break;
      case r'awsEmail':
        value = awsEmail;
        break;
      case r'requiredAwsEmail':
        value = requiredAwsEmail;
        break;
      case r'awsJson':
        value = awsJson;
        break;
      case r'requiredAwsJson':
        value = requiredAwsJson;
        break;
      case r'awsPhone':
        value = awsPhone;
        break;
      case r'requiredAwsPhone':
        value = requiredAwsPhone;
        break;
      case r'awsUrl':
        value = awsUrl;
        break;
      case r'requiredAwsUrl':
        value = requiredAwsUrl;
        break;
      case r'awsIpAddress':
        value = awsIpAddress;
        break;
      case r'requiredAwsIpAddress':
        value = requiredAwsIpAddress;
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

class _ScalarModel extends ScalarModel {
  _ScalarModel({
    String? id,
    this.str,
    required this.requiredStr,
    this.integer,
    required this.requiredInteger,
    this.float,
    required this.requiredFloat,
    this.boolean,
    required this.requiredBoolean,
    DateTime? awsDate,
    required DateTime requiredAwsDate,
    DateTime? awsDateTime,
    required DateTime requiredAwsDateTime,
    DateTime? awsTime,
    required DateTime requiredAwsTime,
    DateTime? awsTimestamp,
    required DateTime requiredAwsTimestamp,
    this.awsEmail,
    required this.requiredAwsEmail,
    this.awsJson,
    required this.requiredAwsJson,
    this.awsPhone,
    required this.requiredAwsPhone,
    this.awsUrl,
    required this.requiredAwsUrl,
    this.awsIpAddress,
    required this.requiredAwsIpAddress,
  })  : id = id ?? uuid(),
        awsDate = awsDate == null ? null : TemporalDate(awsDate),
        requiredAwsDate = TemporalDate(requiredAwsDate),
        awsDateTime =
            awsDateTime == null ? null : TemporalDateTime(awsDateTime),
        requiredAwsDateTime = TemporalDateTime(requiredAwsDateTime),
        awsTime = awsTime == null ? null : TemporalTime(awsTime),
        requiredAwsTime = TemporalTime(requiredAwsTime),
        awsTimestamp =
            awsTimestamp == null ? null : TemporalTimestamp(awsTimestamp),
        requiredAwsTimestamp = TemporalTimestamp(requiredAwsTimestamp),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _ScalarModel._({
    required this.id,
    this.str,
    required this.requiredStr,
    this.integer,
    required this.requiredInteger,
    this.float,
    required this.requiredFloat,
    this.boolean,
    required this.requiredBoolean,
    this.awsDate,
    required this.requiredAwsDate,
    this.awsDateTime,
    required this.requiredAwsDateTime,
    this.awsTime,
    required this.requiredAwsTime,
    this.awsTimestamp,
    required this.requiredAwsTimestamp,
    this.awsEmail,
    required this.requiredAwsEmail,
    this.awsJson,
    required this.requiredAwsJson,
    this.awsPhone,
    required this.requiredAwsPhone,
    this.awsUrl,
    required this.requiredAwsUrl,
    this.awsIpAddress,
    required this.requiredAwsIpAddress,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String id;

  @override
  final String? str;

  @override
  final String requiredStr;

  @override
  final int? integer;

  @override
  final int requiredInteger;

  @override
  final double? float;

  @override
  final double requiredFloat;

  @override
  final bool? boolean;

  @override
  final bool requiredBoolean;

  @override
  final TemporalDate? awsDate;

  @override
  final TemporalDate requiredAwsDate;

  @override
  final TemporalDateTime? awsDateTime;

  @override
  final TemporalDateTime requiredAwsDateTime;

  @override
  final TemporalTime? awsTime;

  @override
  final TemporalTime requiredAwsTime;

  @override
  final TemporalTimestamp? awsTimestamp;

  @override
  final TemporalTimestamp requiredAwsTimestamp;

  @override
  final String? awsEmail;

  @override
  final String requiredAwsEmail;

  @override
  final Object? awsJson;

  @override
  final Object requiredAwsJson;

  @override
  final String? awsPhone;

  @override
  final String requiredAwsPhone;

  @override
  final Uri? awsUrl;

  @override
  final Uri requiredAwsUrl;

  @override
  final String? awsIpAddress;

  @override
  final String requiredAwsIpAddress;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemoteScalarModel extends ScalarModel
    implements RemoteModel<String, ScalarModel> {
  const RemoteScalarModel._() : super._();
}

class _RemoteScalarModel extends RemoteScalarModel {
  const _RemoteScalarModel({
    required this.id,
    this.str,
    required this.requiredStr,
    this.integer,
    required this.requiredInteger,
    this.float,
    required this.requiredFloat,
    this.boolean,
    required this.requiredBoolean,
    this.awsDate,
    required this.requiredAwsDate,
    this.awsDateTime,
    required this.requiredAwsDateTime,
    this.awsTime,
    required this.requiredAwsTime,
    this.awsTimestamp,
    required this.requiredAwsTimestamp,
    this.awsEmail,
    required this.requiredAwsEmail,
    this.awsJson,
    required this.requiredAwsJson,
    this.awsPhone,
    required this.requiredAwsPhone,
    this.awsUrl,
    required this.requiredAwsUrl,
    this.awsIpAddress,
    required this.requiredAwsIpAddress,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteScalarModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'id',
          ))
        : (json['id'] as String);
    final str = json['str'] == null ? null : (json['str'] as String);
    final requiredStr = json['requiredStr'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredStr',
          ))
        : (json['requiredStr'] as String);
    final integer = json['integer'] == null ? null : (json['integer'] as int);
    final requiredInteger = json['requiredInteger'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredInteger',
          ))
        : (json['requiredInteger'] as int);
    final float = json['float'] == null ? null : (json['float'] as double);
    final requiredFloat = json['requiredFloat'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredFloat',
          ))
        : (json['requiredFloat'] as double);
    final boolean = json['boolean'] == null ? null : (json['boolean'] as bool);
    final requiredBoolean = json['requiredBoolean'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredBoolean',
          ))
        : (json['requiredBoolean'] as bool);
    final awsDate = json['awsDate'] == null
        ? null
        : TemporalDate.fromString((json['awsDate'] as String));
    final requiredAwsDate = json['requiredAwsDate'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredAwsDate',
          ))
        : TemporalDate.fromString((json['requiredAwsDate'] as String));
    final awsDateTime = json['awsDateTime'] == null
        ? null
        : TemporalDateTime.fromString((json['awsDateTime'] as String));
    final requiredAwsDateTime = json['requiredAwsDateTime'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredAwsDateTime',
          ))
        : TemporalDateTime.fromString((json['requiredAwsDateTime'] as String));
    final awsTime = json['awsTime'] == null
        ? null
        : TemporalTime.fromString((json['awsTime'] as String));
    final requiredAwsTime = json['requiredAwsTime'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredAwsTime',
          ))
        : TemporalTime.fromString((json['requiredAwsTime'] as String));
    final awsTimestamp = json['awsTimestamp'] == null
        ? null
        : TemporalTimestamp.fromSeconds((json['awsTimestamp'] as int));
    final requiredAwsTimestamp = json['requiredAwsTimestamp'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredAwsTimestamp',
          ))
        : TemporalTimestamp.fromSeconds((json['requiredAwsTimestamp'] as int));
    final awsEmail =
        json['awsEmail'] == null ? null : (json['awsEmail'] as String);
    final requiredAwsEmail = json['requiredAwsEmail'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredAwsEmail',
          ))
        : (json['requiredAwsEmail'] as String);
    final awsJson = json['awsJson'];
    final requiredAwsJson = json['requiredAwsJson'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredAwsJson',
          ))
        : (json['requiredAwsJson'] as Object);
    final awsPhone =
        json['awsPhone'] == null ? null : (json['awsPhone'] as String);
    final requiredAwsPhone = json['requiredAwsPhone'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredAwsPhone',
          ))
        : (json['requiredAwsPhone'] as String);
    final awsUrl =
        json['awsUrl'] == null ? null : Uri.parse((json['awsUrl'] as String));
    final requiredAwsUrl = json['requiredAwsUrl'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredAwsUrl',
          ))
        : Uri.parse((json['requiredAwsUrl'] as String));
    final awsIpAddress =
        json['awsIpAddress'] == null ? null : (json['awsIpAddress'] as String);
    final requiredAwsIpAddress = json['requiredAwsIpAddress'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'requiredAwsIpAddress',
          ))
        : (json['requiredAwsIpAddress'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'ScalarModel',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteScalarModel(
      id: id,
      str: str,
      requiredStr: requiredStr,
      integer: integer,
      requiredInteger: requiredInteger,
      float: float,
      requiredFloat: requiredFloat,
      boolean: boolean,
      requiredBoolean: requiredBoolean,
      awsDate: awsDate,
      requiredAwsDate: requiredAwsDate,
      awsDateTime: awsDateTime,
      requiredAwsDateTime: requiredAwsDateTime,
      awsTime: awsTime,
      requiredAwsTime: requiredAwsTime,
      awsTimestamp: awsTimestamp,
      requiredAwsTimestamp: requiredAwsTimestamp,
      awsEmail: awsEmail,
      requiredAwsEmail: requiredAwsEmail,
      awsJson: awsJson,
      requiredAwsJson: requiredAwsJson,
      awsPhone: awsPhone,
      requiredAwsPhone: requiredAwsPhone,
      awsUrl: awsUrl,
      requiredAwsUrl: requiredAwsUrl,
      awsIpAddress: awsIpAddress,
      requiredAwsIpAddress: requiredAwsIpAddress,
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
  final String? str;

  @override
  final String requiredStr;

  @override
  final int? integer;

  @override
  final int requiredInteger;

  @override
  final double? float;

  @override
  final double requiredFloat;

  @override
  final bool? boolean;

  @override
  final bool requiredBoolean;

  @override
  final TemporalDate? awsDate;

  @override
  final TemporalDate requiredAwsDate;

  @override
  final TemporalDateTime? awsDateTime;

  @override
  final TemporalDateTime requiredAwsDateTime;

  @override
  final TemporalTime? awsTime;

  @override
  final TemporalTime requiredAwsTime;

  @override
  final TemporalTimestamp? awsTimestamp;

  @override
  final TemporalTimestamp requiredAwsTimestamp;

  @override
  final String? awsEmail;

  @override
  final String requiredAwsEmail;

  @override
  final Object? awsJson;

  @override
  final Object requiredAwsJson;

  @override
  final String? awsPhone;

  @override
  final String requiredAwsPhone;

  @override
  final Uri? awsUrl;

  @override
  final Uri requiredAwsUrl;

  @override
  final String? awsIpAddress;

  @override
  final String requiredAwsIpAddress;

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
