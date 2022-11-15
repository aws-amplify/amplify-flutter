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

library models.scalar_non_model;

import 'package:amplify_core/amplify_core.dart';

class ScalarNonModel
    with
        AWSEquatable<ScalarNonModel>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const ScalarNonModel({
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
  });

  factory ScalarNonModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ScalarNonModel',
            'id',
          ))
        : (json['id'] as String);
    final str = json['str'] == null ? null : (json['str'] as String);
    final requiredStr = json['requiredStr'] == null
        ? (throw ModelFieldError(
            'ScalarNonModel',
            'requiredStr',
          ))
        : (json['requiredStr'] as String);
    final integer = json['integer'] == null ? null : (json['integer'] as int);
    final requiredInteger = json['requiredInteger'] == null
        ? (throw ModelFieldError(
            'ScalarNonModel',
            'requiredInteger',
          ))
        : (json['requiredInteger'] as int);
    final float = json['float'] == null ? null : (json['float'] as double);
    final requiredFloat = json['requiredFloat'] == null
        ? (throw ModelFieldError(
            'ScalarNonModel',
            'requiredFloat',
          ))
        : (json['requiredFloat'] as double);
    final boolean = json['boolean'] == null ? null : (json['boolean'] as bool);
    final requiredBoolean = json['requiredBoolean'] == null
        ? (throw ModelFieldError(
            'ScalarNonModel',
            'requiredBoolean',
          ))
        : (json['requiredBoolean'] as bool);
    final awsDate = json['awsDate'] == null
        ? null
        : TemporalDate.fromString((json['awsDate'] as String));
    final requiredAwsDate = json['requiredAwsDate'] == null
        ? (throw ModelFieldError(
            'ScalarNonModel',
            'requiredAwsDate',
          ))
        : TemporalDate.fromString((json['requiredAwsDate'] as String));
    final awsDateTime = json['awsDateTime'] == null
        ? null
        : TemporalDateTime.fromString((json['awsDateTime'] as String));
    final requiredAwsDateTime = json['requiredAwsDateTime'] == null
        ? (throw ModelFieldError(
            'ScalarNonModel',
            'requiredAwsDateTime',
          ))
        : TemporalDateTime.fromString((json['requiredAwsDateTime'] as String));
    final awsTime = json['awsTime'] == null
        ? null
        : TemporalTime.fromString((json['awsTime'] as String));
    final requiredAwsTime = json['requiredAwsTime'] == null
        ? (throw ModelFieldError(
            'ScalarNonModel',
            'requiredAwsTime',
          ))
        : TemporalTime.fromString((json['requiredAwsTime'] as String));
    final awsTimestamp = json['awsTimestamp'] == null
        ? null
        : TemporalTimestamp.fromSeconds((json['awsTimestamp'] as int));
    final requiredAwsTimestamp = json['requiredAwsTimestamp'] == null
        ? (throw ModelFieldError(
            'ScalarNonModel',
            'requiredAwsTimestamp',
          ))
        : TemporalTimestamp.fromSeconds((json['requiredAwsTimestamp'] as int));
    final awsEmail =
        json['awsEmail'] == null ? null : (json['awsEmail'] as String);
    final requiredAwsEmail = json['requiredAwsEmail'] == null
        ? (throw ModelFieldError(
            'ScalarNonModel',
            'requiredAwsEmail',
          ))
        : (json['requiredAwsEmail'] as String);
    final awsJson = json['awsJson'];
    final requiredAwsJson = json['requiredAwsJson'] == null
        ? (throw ModelFieldError(
            'ScalarNonModel',
            'requiredAwsJson',
          ))
        : (json['requiredAwsJson'] as Object);
    final awsPhone =
        json['awsPhone'] == null ? null : (json['awsPhone'] as String);
    final requiredAwsPhone = json['requiredAwsPhone'] == null
        ? (throw ModelFieldError(
            'ScalarNonModel',
            'requiredAwsPhone',
          ))
        : (json['requiredAwsPhone'] as String);
    final awsUrl =
        json['awsUrl'] == null ? null : Uri.parse((json['awsUrl'] as String));
    final requiredAwsUrl = json['requiredAwsUrl'] == null
        ? (throw ModelFieldError(
            'ScalarNonModel',
            'requiredAwsUrl',
          ))
        : Uri.parse((json['requiredAwsUrl'] as String));
    final awsIpAddress =
        json['awsIpAddress'] == null ? null : (json['awsIpAddress'] as String);
    final requiredAwsIpAddress = json['requiredAwsIpAddress'] == null
        ? (throw ModelFieldError(
            'ScalarNonModel',
            'requiredAwsIpAddress',
          ))
        : (json['requiredAwsIpAddress'] as String);
    return ScalarNonModel(
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
    );
  }

  final String id;

  final String? str;

  final String requiredStr;

  final int? integer;

  final int requiredInteger;

  final double? float;

  final double requiredFloat;

  final bool? boolean;

  final bool requiredBoolean;

  final TemporalDate? awsDate;

  final TemporalDate requiredAwsDate;

  final TemporalDateTime? awsDateTime;

  final TemporalDateTime requiredAwsDateTime;

  final TemporalTime? awsTime;

  final TemporalTime requiredAwsTime;

  final TemporalTimestamp? awsTimestamp;

  final TemporalTimestamp requiredAwsTimestamp;

  final String? awsEmail;

  final String requiredAwsEmail;

  final Object? awsJson;

  final Object requiredAwsJson;

  final String? awsPhone;

  final String requiredAwsPhone;

  final Uri? awsUrl;

  final Uri requiredAwsUrl;

  final String? awsIpAddress;

  final String requiredAwsIpAddress;

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
      ];
  @override
  String get runtimeTypeName => 'ScalarNonModel';
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
        'requiredAwsDate': requiredAwsDate.format(),
        'awsDateTime': awsDateTime?.format(),
        'requiredAwsDateTime': requiredAwsDateTime.format(),
        'awsTime': awsTime?.format(),
        'requiredAwsTime': requiredAwsTime.format(),
        'awsTimestamp': awsTimestamp?.toSeconds(),
        'requiredAwsTimestamp': requiredAwsTimestamp.toSeconds(),
        'awsEmail': awsEmail,
        'requiredAwsEmail': requiredAwsEmail,
        'awsJson': awsJson,
        'requiredAwsJson': requiredAwsJson,
        'awsPhone': awsPhone,
        'requiredAwsPhone': requiredAwsPhone,
        'awsUrl': awsUrl?.toString(),
        'requiredAwsUrl': requiredAwsUrl.toString(),
        'awsIpAddress': awsIpAddress,
        'requiredAwsIpAddress': requiredAwsIpAddress,
      };
}
