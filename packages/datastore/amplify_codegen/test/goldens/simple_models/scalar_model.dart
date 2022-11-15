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

library models.scalar_model;

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_common/aws_common.dart';

class ScalarModelType
    extends ModelType<String, ScalarModel, PartialScalarModel> {
  const ScalarModelType();

  @override
  T fromJson<T extends PartialModel<String, ScalarModel>>(
      Map<String, Object?> json) {
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

class _PartialScalarModel extends PartialScalarModel {
  _PartialScalarModel({
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
        ? throw ModelFieldError(
            'ScalarModel',
            'id',
          )
        : (json['id'] as String);
    final str = json['str'] == null ? null : (json['str'] as String?);
    final requiredStr =
        json['requiredStr'] == null ? null : (json['requiredStr'] as String?);
    final integer = json['integer'] == null ? null : (json['integer'] as int?);
    final requiredInteger = json['requiredInteger'] == null
        ? null
        : (json['requiredInteger'] as int?);
    final float = json['float'] == null ? null : (json['float'] as double?);
    final requiredFloat = json['requiredFloat'] == null
        ? null
        : (json['requiredFloat'] as double?);
    final boolean = json['boolean'] == null ? null : (json['boolean'] as bool?);
    final requiredBoolean = json['requiredBoolean'] == null
        ? null
        : (json['requiredBoolean'] as bool?);
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
        json['awsEmail'] == null ? null : (json['awsEmail'] as String?);
    final requiredAwsEmail = json['requiredAwsEmail'] == null
        ? null
        : (json['requiredAwsEmail'] as String?);
    final awsJson = json['awsJson'];
    final requiredAwsJson = json['requiredAwsJson'];
    final awsPhone =
        json['awsPhone'] == null ? null : (json['awsPhone'] as String?);
    final requiredAwsPhone = json['requiredAwsPhone'] == null
        ? null
        : (json['requiredAwsPhone'] as String?);
    final awsUrl =
        json['awsUrl'] == null ? null : Uri.parse((json['awsUrl'] as String));
    final requiredAwsUrl = json['requiredAwsUrl'] == null
        ? null
        : Uri.parse((json['requiredAwsUrl'] as String));
    final awsIpAddress =
        json['awsIpAddress'] == null ? null : (json['awsIpAddress'] as String?);
    final requiredAwsIpAddress = json['requiredAwsIpAddress'] == null
        ? null
        : (json['requiredAwsIpAddress'] as String?);
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
    TemporalDate? awsDate,
    required TemporalDate requiredAwsDate,
    TemporalDateTime? awsDateTime,
    required TemporalDateTime requiredAwsDateTime,
    TemporalTime? awsTime,
    required TemporalTime requiredAwsTime,
    TemporalTimestamp? awsTimestamp,
    required TemporalTimestamp requiredAwsTimestamp,
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
    TemporalDateTime? createdAt,
    TemporalDateTime? updatedAt,
  }) = _ScalarModel;

  const ScalarModel._() : super._();

  factory ScalarModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'id',
          )
        : (json['id'] as String);
    final str = json['str'] == null ? null : (json['str'] as String?);
    final requiredStr = json['requiredStr'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredStr',
          )
        : (json['requiredStr'] as String);
    final integer = json['integer'] == null ? null : (json['integer'] as int?);
    final requiredInteger = json['requiredInteger'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredInteger',
          )
        : (json['requiredInteger'] as int);
    final float = json['float'] == null ? null : (json['float'] as double?);
    final requiredFloat = json['requiredFloat'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredFloat',
          )
        : (json['requiredFloat'] as double);
    final boolean = json['boolean'] == null ? null : (json['boolean'] as bool?);
    final requiredBoolean = json['requiredBoolean'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredBoolean',
          )
        : (json['requiredBoolean'] as bool);
    final awsDate = json['awsDate'] == null
        ? null
        : TemporalDate.fromString((json['awsDate'] as String));
    final requiredAwsDate = json['requiredAwsDate'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredAwsDate',
          )
        : TemporalDate.fromString((json['requiredAwsDate'] as String));
    final awsDateTime = json['awsDateTime'] == null
        ? null
        : TemporalDateTime.fromString((json['awsDateTime'] as String));
    final requiredAwsDateTime = json['requiredAwsDateTime'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredAwsDateTime',
          )
        : TemporalDateTime.fromString((json['requiredAwsDateTime'] as String));
    final awsTime = json['awsTime'] == null
        ? null
        : TemporalTime.fromString((json['awsTime'] as String));
    final requiredAwsTime = json['requiredAwsTime'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredAwsTime',
          )
        : TemporalTime.fromString((json['requiredAwsTime'] as String));
    final awsTimestamp = json['awsTimestamp'] == null
        ? null
        : TemporalTimestamp.fromSeconds((json['awsTimestamp'] as int));
    final requiredAwsTimestamp = json['requiredAwsTimestamp'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredAwsTimestamp',
          )
        : TemporalTimestamp.fromSeconds((json['requiredAwsTimestamp'] as int));
    final awsEmail =
        json['awsEmail'] == null ? null : (json['awsEmail'] as String?);
    final requiredAwsEmail = json['requiredAwsEmail'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredAwsEmail',
          )
        : (json['requiredAwsEmail'] as String);
    final awsJson = json['awsJson'];
    final requiredAwsJson = json['requiredAwsJson'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredAwsJson',
          )
        : (json['requiredAwsJson'] as Object);
    final awsPhone =
        json['awsPhone'] == null ? null : (json['awsPhone'] as String?);
    final requiredAwsPhone = json['requiredAwsPhone'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredAwsPhone',
          )
        : (json['requiredAwsPhone'] as String);
    final awsUrl =
        json['awsUrl'] == null ? null : Uri.parse((json['awsUrl'] as String));
    final requiredAwsUrl = json['requiredAwsUrl'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredAwsUrl',
          )
        : Uri.parse((json['requiredAwsUrl'] as String));
    final awsIpAddress =
        json['awsIpAddress'] == null ? null : (json['awsIpAddress'] as String?);
    final requiredAwsIpAddress = json['requiredAwsIpAddress'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredAwsIpAddress',
          )
        : (json['requiredAwsIpAddress'] as String);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return ScalarModel(
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

  @override
  String get id;
  @override
  String? get str;
  @override
  String get requiredStr;
  @override
  int? get integer;
  @override
  int get requiredInteger;
  @override
  double? get float;
  @override
  double get requiredFloat;
  @override
  bool? get boolean;
  @override
  bool get requiredBoolean;
  @override
  TemporalDate? get awsDate;
  @override
  TemporalDate get requiredAwsDate;
  @override
  TemporalDateTime? get awsDateTime;
  @override
  TemporalDateTime get requiredAwsDateTime;
  @override
  TemporalTime? get awsTime;
  @override
  TemporalTime get requiredAwsTime;
  @override
  TemporalTimestamp? get awsTimestamp;
  @override
  TemporalTimestamp get requiredAwsTimestamp;
  @override
  String? get awsEmail;
  @override
  String get requiredAwsEmail;
  @override
  Object? get awsJson;
  @override
  Object get requiredAwsJson;
  @override
  String? get awsPhone;
  @override
  String get requiredAwsPhone;
  @override
  Uri? get awsUrl;
  @override
  Uri get requiredAwsUrl;
  @override
  String? get awsIpAddress;
  @override
  String get requiredAwsIpAddress;
  @override
  TemporalDateTime? get createdAt;
  @override
  TemporalDateTime? get updatedAt;
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
    this.createdAt,
    this.updatedAt,
  })  : id = id ?? uuid(),
        super._();

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
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class RemoteScalarModel extends ScalarModel
    implements RemoteModel<String, ScalarModel> {
  const RemoteScalarModel._() : super._();
}

class _RemoteScalarModel extends RemoteScalarModel {
  _RemoteScalarModel({
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
    this.createdAt,
    this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteScalarModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'id',
          )
        : (json['id'] as String);
    final str = json['str'] == null ? null : (json['str'] as String?);
    final requiredStr = json['requiredStr'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredStr',
          )
        : (json['requiredStr'] as String);
    final integer = json['integer'] == null ? null : (json['integer'] as int?);
    final requiredInteger = json['requiredInteger'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredInteger',
          )
        : (json['requiredInteger'] as int);
    final float = json['float'] == null ? null : (json['float'] as double?);
    final requiredFloat = json['requiredFloat'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredFloat',
          )
        : (json['requiredFloat'] as double);
    final boolean = json['boolean'] == null ? null : (json['boolean'] as bool?);
    final requiredBoolean = json['requiredBoolean'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredBoolean',
          )
        : (json['requiredBoolean'] as bool);
    final awsDate = json['awsDate'] == null
        ? null
        : TemporalDate.fromString((json['awsDate'] as String));
    final requiredAwsDate = json['requiredAwsDate'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredAwsDate',
          )
        : TemporalDate.fromString((json['requiredAwsDate'] as String));
    final awsDateTime = json['awsDateTime'] == null
        ? null
        : TemporalDateTime.fromString((json['awsDateTime'] as String));
    final requiredAwsDateTime = json['requiredAwsDateTime'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredAwsDateTime',
          )
        : TemporalDateTime.fromString((json['requiredAwsDateTime'] as String));
    final awsTime = json['awsTime'] == null
        ? null
        : TemporalTime.fromString((json['awsTime'] as String));
    final requiredAwsTime = json['requiredAwsTime'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredAwsTime',
          )
        : TemporalTime.fromString((json['requiredAwsTime'] as String));
    final awsTimestamp = json['awsTimestamp'] == null
        ? null
        : TemporalTimestamp.fromSeconds((json['awsTimestamp'] as int));
    final requiredAwsTimestamp = json['requiredAwsTimestamp'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredAwsTimestamp',
          )
        : TemporalTimestamp.fromSeconds((json['requiredAwsTimestamp'] as int));
    final awsEmail =
        json['awsEmail'] == null ? null : (json['awsEmail'] as String?);
    final requiredAwsEmail = json['requiredAwsEmail'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredAwsEmail',
          )
        : (json['requiredAwsEmail'] as String);
    final awsJson = json['awsJson'];
    final requiredAwsJson = json['requiredAwsJson'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredAwsJson',
          )
        : (json['requiredAwsJson'] as Object);
    final awsPhone =
        json['awsPhone'] == null ? null : (json['awsPhone'] as String?);
    final requiredAwsPhone = json['requiredAwsPhone'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredAwsPhone',
          )
        : (json['requiredAwsPhone'] as String);
    final awsUrl =
        json['awsUrl'] == null ? null : Uri.parse((json['awsUrl'] as String));
    final requiredAwsUrl = json['requiredAwsUrl'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredAwsUrl',
          )
        : Uri.parse((json['requiredAwsUrl'] as String));
    final awsIpAddress =
        json['awsIpAddress'] == null ? null : (json['awsIpAddress'] as String?);
    final requiredAwsIpAddress = json['requiredAwsIpAddress'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'requiredAwsIpAddress',
          )
        : (json['requiredAwsIpAddress'] as String);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'version',
          )
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'deleted',
          )
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? throw ModelFieldError(
            'ScalarModel',
            'lastChangedAt',
          )
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
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
