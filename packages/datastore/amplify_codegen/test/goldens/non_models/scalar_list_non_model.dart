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

library models.scalar_list_non_model;

import 'package:amplify_core/amplify_core.dart';

class ScalarListNonModelType
    extends ModelType<String, ScalarListNonModel, PartialScalarListNonModel> {
  const ScalarListNonModelType();

  @override
  T fromJson<T extends PartialModel<String, ScalarListNonModel>>(
      Map<String, Object?> json) {
    if (T == ScalarListNonModel || T == Model<String, ScalarListNonModel>) {
      return ScalarListNonModel.fromJson(json) as T;
    }
    if (T == RemoteScalarListNonModel ||
        T == RemoteModel<String, ScalarListNonModel>) {
      return _RemoteScalarListNonModel.fromJson(json) as T;
    }
    return _PartialScalarListNonModel.fromJson(json) as T;
  }

  @override
  String get modelName => 'ScalarListNonModel';
}

abstract class PartialScalarListNonModel
    extends PartialModel<String, ScalarListNonModel>
    with AWSEquatable<PartialScalarListNonModel> {
  const PartialScalarListNonModel._();

  String get id;
  List<String?>? get listOfString;
  List<String>? get listOfRequiredString;
  List<String?>? get requiredListOfString;
  List<String>? get requiredListOfRequiredString;
  List<int?>? get listOfInteger;
  List<int>? get listOfRequiredInteger;
  List<int?>? get requiredListOfInteger;
  List<int>? get requiredListOfRequiredInteger;
  List<double?>? get listOfFloat;
  List<double>? get listOfRequiredFloat;
  List<double?>? get requiredListOfFloat;
  List<double>? get requiredListOfRequiredFloat;
  List<bool?>? get listOfBoolean;
  List<bool>? get listOfRequiredBoolean;
  List<bool?>? get requiredListOfBoolean;
  List<bool>? get requiredListOfRequiredBoolean;
  List<TemporalDate?>? get listOfAwsDate;
  List<TemporalDate>? get listOfRequiredAwsDate;
  List<TemporalDate?>? get requiredListOfAwsDate;
  List<TemporalDate>? get requiredListOfRequiredAwsDate;
  List<TemporalDateTime?>? get listOfAwsDateTime;
  List<TemporalDateTime>? get listOfRequiredAwsDateTime;
  List<TemporalDateTime?>? get requiredListOfAwsDateTime;
  List<TemporalDateTime>? get requiredListOfRequiredAwsDateTime;
  List<TemporalTime?>? get listOfAwsTime;
  List<TemporalTime>? get listOfRequiredAwsTime;
  List<TemporalTime?>? get requiredListOfAwsTime;
  List<TemporalTime>? get requiredListOfRequiredAwsTime;
  List<TemporalTimestamp?>? get listOfAwsTimestamp;
  List<TemporalTimestamp>? get listOfRequiredAwsTimestamp;
  List<TemporalTimestamp?>? get requiredListOfAwsTimestamp;
  List<TemporalTimestamp>? get requiredListOfRequiredAwsTimestamp;
  List<String?>? get listOfAwsEmail;
  List<String>? get listOfRequiredAwsEmail;
  List<String?>? get requiredListOfAwsEmail;
  List<String>? get requiredListOfRequiredAwsEmail;
  List<Object?>? get listOfAwsjson;
  List<Object>? get listOfRequiredAwsjson;
  List<Object?>? get requiredListOfAwsjson;
  List<Object>? get requiredListOfRequiredAwsjson;
  List<String?>? get listOfAwsPhone;
  List<String>? get listOfRequiredAwsPhone;
  List<String?>? get requiredListOfAwsPhone;
  List<String>? get requiredListOfRequiredAwsPhone;
  List<Uri?>? get listOfAwsUrl;
  List<Uri>? get listOfRequiredAwsUrl;
  List<Uri?>? get requiredListOfAwsUrl;
  List<Uri>? get requiredListOfRequiredAwsUrl;
  List<String?>? get listOfAwsIpAddress;
  List<String>? get listOfRequiredAwsIpAddress;
  List<String?>? get requiredListOfAwsIpAddress;
  List<String>? get requiredListOfRequiredAwsIpAddress;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  ScalarListNonModelType get modelType => ScalarListNonModel.classType;
  @override
  List<Object?> get props => [
        id,
        listOfString,
        listOfRequiredString,
        requiredListOfString,
        requiredListOfRequiredString,
        listOfInteger,
        listOfRequiredInteger,
        requiredListOfInteger,
        requiredListOfRequiredInteger,
        listOfFloat,
        listOfRequiredFloat,
        requiredListOfFloat,
        requiredListOfRequiredFloat,
        listOfBoolean,
        listOfRequiredBoolean,
        requiredListOfBoolean,
        requiredListOfRequiredBoolean,
        listOfAwsDate,
        listOfRequiredAwsDate,
        requiredListOfAwsDate,
        requiredListOfRequiredAwsDate,
        listOfAwsDateTime,
        listOfRequiredAwsDateTime,
        requiredListOfAwsDateTime,
        requiredListOfRequiredAwsDateTime,
        listOfAwsTime,
        listOfRequiredAwsTime,
        requiredListOfAwsTime,
        requiredListOfRequiredAwsTime,
        listOfAwsTimestamp,
        listOfRequiredAwsTimestamp,
        requiredListOfAwsTimestamp,
        requiredListOfRequiredAwsTimestamp,
        listOfAwsEmail,
        listOfRequiredAwsEmail,
        requiredListOfAwsEmail,
        requiredListOfRequiredAwsEmail,
        listOfAwsjson,
        listOfRequiredAwsjson,
        requiredListOfAwsjson,
        requiredListOfRequiredAwsjson,
        listOfAwsPhone,
        listOfRequiredAwsPhone,
        requiredListOfAwsPhone,
        requiredListOfRequiredAwsPhone,
        listOfAwsUrl,
        listOfRequiredAwsUrl,
        requiredListOfAwsUrl,
        requiredListOfRequiredAwsUrl,
        listOfAwsIpAddress,
        listOfRequiredAwsIpAddress,
        requiredListOfAwsIpAddress,
        requiredListOfRequiredAwsIpAddress,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'listOfString': listOfString,
        'listOfRequiredString': listOfRequiredString,
        'requiredListOfString': requiredListOfString,
        'requiredListOfRequiredString': requiredListOfRequiredString,
        'listOfInteger': listOfInteger,
        'listOfRequiredInteger': listOfRequiredInteger,
        'requiredListOfInteger': requiredListOfInteger,
        'requiredListOfRequiredInteger': requiredListOfRequiredInteger,
        'listOfFloat': listOfFloat,
        'listOfRequiredFloat': listOfRequiredFloat,
        'requiredListOfFloat': requiredListOfFloat,
        'requiredListOfRequiredFloat': requiredListOfRequiredFloat,
        'listOfBoolean': listOfBoolean,
        'listOfRequiredBoolean': listOfRequiredBoolean,
        'requiredListOfBoolean': requiredListOfBoolean,
        'requiredListOfRequiredBoolean': requiredListOfRequiredBoolean,
        'listOfAWSDate': listOfAwsDate?.map((el) => el?.format()).toList(),
        'listOfRequiredAWSDate':
            listOfRequiredAwsDate?.map((el) => el.format()).toList(),
        'requiredListOfAWSDate':
            requiredListOfAwsDate?.map((el) => el?.format()).toList(),
        'requiredListOfRequiredAWSDate':
            requiredListOfRequiredAwsDate?.map((el) => el.format()).toList(),
        'listOfAWSDateTime':
            listOfAwsDateTime?.map((el) => el?.format()).toList(),
        'listOfRequiredAWSDateTime':
            listOfRequiredAwsDateTime?.map((el) => el.format()).toList(),
        'requiredListOfAWSDateTime':
            requiredListOfAwsDateTime?.map((el) => el?.format()).toList(),
        'requiredListOfRequiredAWSDateTime': requiredListOfRequiredAwsDateTime
            ?.map((el) => el.format())
            .toList(),
        'listOfAWSTime': listOfAwsTime?.map((el) => el?.format()).toList(),
        'listOfRequiredAWSTime':
            listOfRequiredAwsTime?.map((el) => el.format()).toList(),
        'requiredListOfAWSTime':
            requiredListOfAwsTime?.map((el) => el?.format()).toList(),
        'requiredListOfRequiredAWSTime':
            requiredListOfRequiredAwsTime?.map((el) => el.format()).toList(),
        'listOfAWSTimestamp':
            listOfAwsTimestamp?.map((el) => el?.toSeconds()).toList(),
        'listOfRequiredAWSTimestamp':
            listOfRequiredAwsTimestamp?.map((el) => el.toSeconds()).toList(),
        'requiredListOfAWSTimestamp':
            requiredListOfAwsTimestamp?.map((el) => el?.toSeconds()).toList(),
        'requiredListOfRequiredAWSTimestamp': requiredListOfRequiredAwsTimestamp
            ?.map((el) => el.toSeconds())
            .toList(),
        'listOfAWSEmail': listOfAwsEmail,
        'listOfRequiredAWSEmail': listOfRequiredAwsEmail,
        'requiredListOfAWSEmail': requiredListOfAwsEmail,
        'requiredListOfRequiredAWSEmail': requiredListOfRequiredAwsEmail,
        'listOfAWSJSON': listOfAwsjson,
        'listOfRequiredAWSJSON': listOfRequiredAwsjson,
        'requiredListOfAWSJSON': requiredListOfAwsjson,
        'requiredListOfRequiredAWSJSON': requiredListOfRequiredAwsjson,
        'listOfAWSPhone': listOfAwsPhone,
        'listOfRequiredAWSPhone': listOfRequiredAwsPhone,
        'requiredListOfAWSPhone': requiredListOfAwsPhone,
        'requiredListOfRequiredAWSPhone': requiredListOfRequiredAwsPhone,
        'listOfAWSUrl': listOfAwsUrl?.map((el) => el?.toString()).toList(),
        'listOfRequiredAWSUrl':
            listOfRequiredAwsUrl?.map((el) => el.toString()).toList(),
        'requiredListOfAWSUrl':
            requiredListOfAwsUrl?.map((el) => el?.toString()).toList(),
        'requiredListOfRequiredAWSUrl':
            requiredListOfRequiredAwsUrl?.map((el) => el.toString()).toList(),
        'listOfAWSIpAddress': listOfAwsIpAddress,
        'listOfRequiredAWSIpAddress': listOfRequiredAwsIpAddress,
        'requiredListOfAWSIpAddress': requiredListOfAwsIpAddress,
        'requiredListOfRequiredAWSIpAddress':
            requiredListOfRequiredAwsIpAddress,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'ScalarListNonModel';
  @override
  T valueFor<T extends Object?>(
      QueryField<String, ScalarListNonModel, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'listOfString':
        value = listOfString;
        break;
      case r'listOfRequiredString':
        value = listOfRequiredString;
        break;
      case r'requiredListOfString':
        value = requiredListOfString;
        break;
      case r'requiredListOfRequiredString':
        value = requiredListOfRequiredString;
        break;
      case r'listOfInteger':
        value = listOfInteger;
        break;
      case r'listOfRequiredInteger':
        value = listOfRequiredInteger;
        break;
      case r'requiredListOfInteger':
        value = requiredListOfInteger;
        break;
      case r'requiredListOfRequiredInteger':
        value = requiredListOfRequiredInteger;
        break;
      case r'listOfFloat':
        value = listOfFloat;
        break;
      case r'listOfRequiredFloat':
        value = listOfRequiredFloat;
        break;
      case r'requiredListOfFloat':
        value = requiredListOfFloat;
        break;
      case r'requiredListOfRequiredFloat':
        value = requiredListOfRequiredFloat;
        break;
      case r'listOfBoolean':
        value = listOfBoolean;
        break;
      case r'listOfRequiredBoolean':
        value = listOfRequiredBoolean;
        break;
      case r'requiredListOfBoolean':
        value = requiredListOfBoolean;
        break;
      case r'requiredListOfRequiredBoolean':
        value = requiredListOfRequiredBoolean;
        break;
      case r'listOfAWSDate':
        value = listOfAwsDate;
        break;
      case r'listOfRequiredAWSDate':
        value = listOfRequiredAwsDate;
        break;
      case r'requiredListOfAWSDate':
        value = requiredListOfAwsDate;
        break;
      case r'requiredListOfRequiredAWSDate':
        value = requiredListOfRequiredAwsDate;
        break;
      case r'listOfAWSDateTime':
        value = listOfAwsDateTime;
        break;
      case r'listOfRequiredAWSDateTime':
        value = listOfRequiredAwsDateTime;
        break;
      case r'requiredListOfAWSDateTime':
        value = requiredListOfAwsDateTime;
        break;
      case r'requiredListOfRequiredAWSDateTime':
        value = requiredListOfRequiredAwsDateTime;
        break;
      case r'listOfAWSTime':
        value = listOfAwsTime;
        break;
      case r'listOfRequiredAWSTime':
        value = listOfRequiredAwsTime;
        break;
      case r'requiredListOfAWSTime':
        value = requiredListOfAwsTime;
        break;
      case r'requiredListOfRequiredAWSTime':
        value = requiredListOfRequiredAwsTime;
        break;
      case r'listOfAWSTimestamp':
        value = listOfAwsTimestamp;
        break;
      case r'listOfRequiredAWSTimestamp':
        value = listOfRequiredAwsTimestamp;
        break;
      case r'requiredListOfAWSTimestamp':
        value = requiredListOfAwsTimestamp;
        break;
      case r'requiredListOfRequiredAWSTimestamp':
        value = requiredListOfRequiredAwsTimestamp;
        break;
      case r'listOfAWSEmail':
        value = listOfAwsEmail;
        break;
      case r'listOfRequiredAWSEmail':
        value = listOfRequiredAwsEmail;
        break;
      case r'requiredListOfAWSEmail':
        value = requiredListOfAwsEmail;
        break;
      case r'requiredListOfRequiredAWSEmail':
        value = requiredListOfRequiredAwsEmail;
        break;
      case r'listOfAWSJSON':
        value = listOfAwsjson;
        break;
      case r'listOfRequiredAWSJSON':
        value = listOfRequiredAwsjson;
        break;
      case r'requiredListOfAWSJSON':
        value = requiredListOfAwsjson;
        break;
      case r'requiredListOfRequiredAWSJSON':
        value = requiredListOfRequiredAwsjson;
        break;
      case r'listOfAWSPhone':
        value = listOfAwsPhone;
        break;
      case r'listOfRequiredAWSPhone':
        value = listOfRequiredAwsPhone;
        break;
      case r'requiredListOfAWSPhone':
        value = requiredListOfAwsPhone;
        break;
      case r'requiredListOfRequiredAWSPhone':
        value = requiredListOfRequiredAwsPhone;
        break;
      case r'listOfAWSUrl':
        value = listOfAwsUrl;
        break;
      case r'listOfRequiredAWSUrl':
        value = listOfRequiredAwsUrl;
        break;
      case r'requiredListOfAWSUrl':
        value = requiredListOfAwsUrl;
        break;
      case r'requiredListOfRequiredAWSUrl':
        value = requiredListOfRequiredAwsUrl;
        break;
      case r'listOfAWSIpAddress':
        value = listOfAwsIpAddress;
        break;
      case r'listOfRequiredAWSIpAddress':
        value = listOfRequiredAwsIpAddress;
        break;
      case r'requiredListOfAWSIpAddress':
        value = requiredListOfAwsIpAddress;
        break;
      case r'requiredListOfRequiredAWSIpAddress':
        value = requiredListOfRequiredAwsIpAddress;
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

class _PartialScalarListNonModel extends PartialScalarListNonModel {
  const _PartialScalarListNonModel({
    required this.id,
    this.listOfString,
    this.listOfRequiredString,
    this.requiredListOfString,
    this.requiredListOfRequiredString,
    this.listOfInteger,
    this.listOfRequiredInteger,
    this.requiredListOfInteger,
    this.requiredListOfRequiredInteger,
    this.listOfFloat,
    this.listOfRequiredFloat,
    this.requiredListOfFloat,
    this.requiredListOfRequiredFloat,
    this.listOfBoolean,
    this.listOfRequiredBoolean,
    this.requiredListOfBoolean,
    this.requiredListOfRequiredBoolean,
    this.listOfAwsDate,
    this.listOfRequiredAwsDate,
    this.requiredListOfAwsDate,
    this.requiredListOfRequiredAwsDate,
    this.listOfAwsDateTime,
    this.listOfRequiredAwsDateTime,
    this.requiredListOfAwsDateTime,
    this.requiredListOfRequiredAwsDateTime,
    this.listOfAwsTime,
    this.listOfRequiredAwsTime,
    this.requiredListOfAwsTime,
    this.requiredListOfRequiredAwsTime,
    this.listOfAwsTimestamp,
    this.listOfRequiredAwsTimestamp,
    this.requiredListOfAwsTimestamp,
    this.requiredListOfRequiredAwsTimestamp,
    this.listOfAwsEmail,
    this.listOfRequiredAwsEmail,
    this.requiredListOfAwsEmail,
    this.requiredListOfRequiredAwsEmail,
    this.listOfAwsjson,
    this.listOfRequiredAwsjson,
    this.requiredListOfAwsjson,
    this.requiredListOfRequiredAwsjson,
    this.listOfAwsPhone,
    this.listOfRequiredAwsPhone,
    this.requiredListOfAwsPhone,
    this.requiredListOfRequiredAwsPhone,
    this.listOfAwsUrl,
    this.listOfRequiredAwsUrl,
    this.requiredListOfAwsUrl,
    this.requiredListOfRequiredAwsUrl,
    this.listOfAwsIpAddress,
    this.listOfRequiredAwsIpAddress,
    this.requiredListOfAwsIpAddress,
    this.requiredListOfRequiredAwsIpAddress,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialScalarListNonModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'id',
          ))
        : (json['id'] as String);
    final listOfString = json['listOfString'] == null
        ? null
        : (json['listOfString'] as List<Object?>).cast<String?>().toList();
    final listOfRequiredString = json['listOfRequiredString'] == null
        ? null
        : (json['listOfRequiredString'] as List<Object?>)
            .cast<String?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListNonModel',
                  'listOfRequiredString',
                )))
            .toList();
    final requiredListOfString = json['requiredListOfString'] == null
        ? null
        : (json['requiredListOfString'] as List<Object?>)
            .cast<String?>()
            .toList();
    final requiredListOfRequiredString =
        json['requiredListOfRequiredString'] == null
            ? null
            : (json['requiredListOfRequiredString'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredString',
                    )))
                .toList();
    final listOfInteger = json['listOfInteger'] == null
        ? null
        : (json['listOfInteger'] as List<Object?>).cast<int?>().toList();
    final listOfRequiredInteger = json['listOfRequiredInteger'] == null
        ? null
        : (json['listOfRequiredInteger'] as List<Object?>)
            .cast<int?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListNonModel',
                  'listOfRequiredInteger',
                )))
            .toList();
    final requiredListOfInteger = json['requiredListOfInteger'] == null
        ? null
        : (json['requiredListOfInteger'] as List<Object?>)
            .cast<int?>()
            .toList();
    final requiredListOfRequiredInteger =
        json['requiredListOfRequiredInteger'] == null
            ? null
            : (json['requiredListOfRequiredInteger'] as List<Object?>)
                .cast<int?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredInteger',
                    )))
                .toList();
    final listOfFloat = json['listOfFloat'] == null
        ? null
        : (json['listOfFloat'] as List<Object?>).cast<double?>().toList();
    final listOfRequiredFloat = json['listOfRequiredFloat'] == null
        ? null
        : (json['listOfRequiredFloat'] as List<Object?>)
            .cast<double?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListNonModel',
                  'listOfRequiredFloat',
                )))
            .toList();
    final requiredListOfFloat = json['requiredListOfFloat'] == null
        ? null
        : (json['requiredListOfFloat'] as List<Object?>)
            .cast<double?>()
            .toList();
    final requiredListOfRequiredFloat =
        json['requiredListOfRequiredFloat'] == null
            ? null
            : (json['requiredListOfRequiredFloat'] as List<Object?>)
                .cast<double?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredFloat',
                    )))
                .toList();
    final listOfBoolean = json['listOfBoolean'] == null
        ? null
        : (json['listOfBoolean'] as List<Object?>).cast<bool?>().toList();
    final listOfRequiredBoolean = json['listOfRequiredBoolean'] == null
        ? null
        : (json['listOfRequiredBoolean'] as List<Object?>)
            .cast<bool?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListNonModel',
                  'listOfRequiredBoolean',
                )))
            .toList();
    final requiredListOfBoolean = json['requiredListOfBoolean'] == null
        ? null
        : (json['requiredListOfBoolean'] as List<Object?>)
            .cast<bool?>()
            .toList();
    final requiredListOfRequiredBoolean =
        json['requiredListOfRequiredBoolean'] == null
            ? null
            : (json['requiredListOfRequiredBoolean'] as List<Object?>)
                .cast<bool?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredBoolean',
                    )))
                .toList();
    final listOfAwsDate = json['listOfAWSDate'] == null
        ? null
        : (json['listOfAWSDate'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDate.fromString(el))
            .toList();
    final listOfRequiredAwsDate = json['listOfRequiredAWSDate'] == null
        ? null
        : (json['listOfRequiredAWSDate'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListNonModel',
                    'listOfRequiredAwsDate',
                  ))
                : TemporalDate.fromString(el))
            .toList();
    final requiredListOfAwsDate = json['requiredListOfAWSDate'] == null
        ? null
        : (json['requiredListOfAWSDate'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDate.fromString(el))
            .toList();
    final requiredListOfRequiredAwsDate =
        json['requiredListOfRequiredAWSDate'] == null
            ? null
            : (json['requiredListOfRequiredAWSDate'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListNonModel',
                        'requiredListOfRequiredAwsDate',
                      ))
                    : TemporalDate.fromString(el))
                .toList();
    final listOfAwsDateTime = json['listOfAWSDateTime'] == null
        ? null
        : (json['listOfAWSDateTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDateTime.fromString(el))
            .toList();
    final listOfRequiredAwsDateTime = json['listOfRequiredAWSDateTime'] == null
        ? null
        : (json['listOfRequiredAWSDateTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListNonModel',
                    'listOfRequiredAwsDateTime',
                  ))
                : TemporalDateTime.fromString(el))
            .toList();
    final requiredListOfAwsDateTime = json['requiredListOfAWSDateTime'] == null
        ? null
        : (json['requiredListOfAWSDateTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDateTime.fromString(el))
            .toList();
    final requiredListOfRequiredAwsDateTime =
        json['requiredListOfRequiredAWSDateTime'] == null
            ? null
            : (json['requiredListOfRequiredAWSDateTime'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListNonModel',
                        'requiredListOfRequiredAwsDateTime',
                      ))
                    : TemporalDateTime.fromString(el))
                .toList();
    final listOfAwsTime = json['listOfAWSTime'] == null
        ? null
        : (json['listOfAWSTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalTime.fromString(el))
            .toList();
    final listOfRequiredAwsTime = json['listOfRequiredAWSTime'] == null
        ? null
        : (json['listOfRequiredAWSTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListNonModel',
                    'listOfRequiredAwsTime',
                  ))
                : TemporalTime.fromString(el))
            .toList();
    final requiredListOfAwsTime = json['requiredListOfAWSTime'] == null
        ? null
        : (json['requiredListOfAWSTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalTime.fromString(el))
            .toList();
    final requiredListOfRequiredAwsTime =
        json['requiredListOfRequiredAWSTime'] == null
            ? null
            : (json['requiredListOfRequiredAWSTime'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListNonModel',
                        'requiredListOfRequiredAwsTime',
                      ))
                    : TemporalTime.fromString(el))
                .toList();
    final listOfAwsTimestamp = json['listOfAWSTimestamp'] == null
        ? null
        : (json['listOfAWSTimestamp'] as List<Object?>)
            .cast<int?>()
            .map((el) => el == null ? null : TemporalTimestamp.fromSeconds(el))
            .toList();
    final listOfRequiredAwsTimestamp =
        json['listOfRequiredAWSTimestamp'] == null
            ? null
            : (json['listOfRequiredAWSTimestamp'] as List<Object?>)
                .cast<int?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListNonModel',
                        'listOfRequiredAwsTimestamp',
                      ))
                    : TemporalTimestamp.fromSeconds(el))
                .toList();
    final requiredListOfAwsTimestamp = json['requiredListOfAWSTimestamp'] ==
            null
        ? null
        : (json['requiredListOfAWSTimestamp'] as List<Object?>)
            .cast<int?>()
            .map((el) => el == null ? null : TemporalTimestamp.fromSeconds(el))
            .toList();
    final requiredListOfRequiredAwsTimestamp =
        json['requiredListOfRequiredAWSTimestamp'] == null
            ? null
            : (json['requiredListOfRequiredAWSTimestamp'] as List<Object?>)
                .cast<int?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListNonModel',
                        'requiredListOfRequiredAwsTimestamp',
                      ))
                    : TemporalTimestamp.fromSeconds(el))
                .toList();
    final listOfAwsEmail = json['listOfAWSEmail'] == null
        ? null
        : (json['listOfAWSEmail'] as List<Object?>).cast<String?>().toList();
    final listOfRequiredAwsEmail = json['listOfRequiredAWSEmail'] == null
        ? null
        : (json['listOfRequiredAWSEmail'] as List<Object?>)
            .cast<String?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListNonModel',
                  'listOfRequiredAwsEmail',
                )))
            .toList();
    final requiredListOfAwsEmail = json['requiredListOfAWSEmail'] == null
        ? null
        : (json['requiredListOfAWSEmail'] as List<Object?>)
            .cast<String?>()
            .toList();
    final requiredListOfRequiredAwsEmail =
        json['requiredListOfRequiredAWSEmail'] == null
            ? null
            : (json['requiredListOfRequiredAWSEmail'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredAwsEmail',
                    )))
                .toList();
    final listOfAwsjson = json['listOfAWSJSON'] == null
        ? null
        : (json['listOfAWSJSON'] as List<Object?>).cast<Object?>().toList();
    final listOfRequiredAwsjson = json['listOfRequiredAWSJSON'] == null
        ? null
        : (json['listOfRequiredAWSJSON'] as List<Object?>)
            .cast<Object?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListNonModel',
                  'listOfRequiredAwsjson',
                )))
            .toList();
    final requiredListOfAwsjson = json['requiredListOfAWSJSON'] == null
        ? null
        : (json['requiredListOfAWSJSON'] as List<Object?>)
            .cast<Object?>()
            .toList();
    final requiredListOfRequiredAwsjson =
        json['requiredListOfRequiredAWSJSON'] == null
            ? null
            : (json['requiredListOfRequiredAWSJSON'] as List<Object?>)
                .cast<Object?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredAwsjson',
                    )))
                .toList();
    final listOfAwsPhone = json['listOfAWSPhone'] == null
        ? null
        : (json['listOfAWSPhone'] as List<Object?>).cast<String?>().toList();
    final listOfRequiredAwsPhone = json['listOfRequiredAWSPhone'] == null
        ? null
        : (json['listOfRequiredAWSPhone'] as List<Object?>)
            .cast<String?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListNonModel',
                  'listOfRequiredAwsPhone',
                )))
            .toList();
    final requiredListOfAwsPhone = json['requiredListOfAWSPhone'] == null
        ? null
        : (json['requiredListOfAWSPhone'] as List<Object?>)
            .cast<String?>()
            .toList();
    final requiredListOfRequiredAwsPhone =
        json['requiredListOfRequiredAWSPhone'] == null
            ? null
            : (json['requiredListOfRequiredAWSPhone'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredAwsPhone',
                    )))
                .toList();
    final listOfAwsUrl = json['listOfAWSUrl'] == null
        ? null
        : (json['listOfAWSUrl'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : Uri.parse(el))
            .toList();
    final listOfRequiredAwsUrl = json['listOfRequiredAWSUrl'] == null
        ? null
        : (json['listOfRequiredAWSUrl'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListNonModel',
                    'listOfRequiredAwsUrl',
                  ))
                : Uri.parse(el))
            .toList();
    final requiredListOfAwsUrl = json['requiredListOfAWSUrl'] == null
        ? null
        : (json['requiredListOfAWSUrl'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : Uri.parse(el))
            .toList();
    final requiredListOfRequiredAwsUrl =
        json['requiredListOfRequiredAWSUrl'] == null
            ? null
            : (json['requiredListOfRequiredAWSUrl'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListNonModel',
                        'requiredListOfRequiredAwsUrl',
                      ))
                    : Uri.parse(el))
                .toList();
    final listOfAwsIpAddress = json['listOfAWSIpAddress'] == null
        ? null
        : (json['listOfAWSIpAddress'] as List<Object?>)
            .cast<String?>()
            .toList();
    final listOfRequiredAwsIpAddress =
        json['listOfRequiredAWSIpAddress'] == null
            ? null
            : (json['listOfRequiredAWSIpAddress'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'listOfRequiredAwsIpAddress',
                    )))
                .toList();
    final requiredListOfAwsIpAddress =
        json['requiredListOfAWSIpAddress'] == null
            ? null
            : (json['requiredListOfAWSIpAddress'] as List<Object?>)
                .cast<String?>()
                .toList();
    final requiredListOfRequiredAwsIpAddress =
        json['requiredListOfRequiredAWSIpAddress'] == null
            ? null
            : (json['requiredListOfRequiredAWSIpAddress'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredAwsIpAddress',
                    )))
                .toList();
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialScalarListNonModel(
      id: id,
      listOfString: listOfString,
      listOfRequiredString: listOfRequiredString,
      requiredListOfString: requiredListOfString,
      requiredListOfRequiredString: requiredListOfRequiredString,
      listOfInteger: listOfInteger,
      listOfRequiredInteger: listOfRequiredInteger,
      requiredListOfInteger: requiredListOfInteger,
      requiredListOfRequiredInteger: requiredListOfRequiredInteger,
      listOfFloat: listOfFloat,
      listOfRequiredFloat: listOfRequiredFloat,
      requiredListOfFloat: requiredListOfFloat,
      requiredListOfRequiredFloat: requiredListOfRequiredFloat,
      listOfBoolean: listOfBoolean,
      listOfRequiredBoolean: listOfRequiredBoolean,
      requiredListOfBoolean: requiredListOfBoolean,
      requiredListOfRequiredBoolean: requiredListOfRequiredBoolean,
      listOfAwsDate: listOfAwsDate,
      listOfRequiredAwsDate: listOfRequiredAwsDate,
      requiredListOfAwsDate: requiredListOfAwsDate,
      requiredListOfRequiredAwsDate: requiredListOfRequiredAwsDate,
      listOfAwsDateTime: listOfAwsDateTime,
      listOfRequiredAwsDateTime: listOfRequiredAwsDateTime,
      requiredListOfAwsDateTime: requiredListOfAwsDateTime,
      requiredListOfRequiredAwsDateTime: requiredListOfRequiredAwsDateTime,
      listOfAwsTime: listOfAwsTime,
      listOfRequiredAwsTime: listOfRequiredAwsTime,
      requiredListOfAwsTime: requiredListOfAwsTime,
      requiredListOfRequiredAwsTime: requiredListOfRequiredAwsTime,
      listOfAwsTimestamp: listOfAwsTimestamp,
      listOfRequiredAwsTimestamp: listOfRequiredAwsTimestamp,
      requiredListOfAwsTimestamp: requiredListOfAwsTimestamp,
      requiredListOfRequiredAwsTimestamp: requiredListOfRequiredAwsTimestamp,
      listOfAwsEmail: listOfAwsEmail,
      listOfRequiredAwsEmail: listOfRequiredAwsEmail,
      requiredListOfAwsEmail: requiredListOfAwsEmail,
      requiredListOfRequiredAwsEmail: requiredListOfRequiredAwsEmail,
      listOfAwsjson: listOfAwsjson,
      listOfRequiredAwsjson: listOfRequiredAwsjson,
      requiredListOfAwsjson: requiredListOfAwsjson,
      requiredListOfRequiredAwsjson: requiredListOfRequiredAwsjson,
      listOfAwsPhone: listOfAwsPhone,
      listOfRequiredAwsPhone: listOfRequiredAwsPhone,
      requiredListOfAwsPhone: requiredListOfAwsPhone,
      requiredListOfRequiredAwsPhone: requiredListOfRequiredAwsPhone,
      listOfAwsUrl: listOfAwsUrl,
      listOfRequiredAwsUrl: listOfRequiredAwsUrl,
      requiredListOfAwsUrl: requiredListOfAwsUrl,
      requiredListOfRequiredAwsUrl: requiredListOfRequiredAwsUrl,
      listOfAwsIpAddress: listOfAwsIpAddress,
      listOfRequiredAwsIpAddress: listOfRequiredAwsIpAddress,
      requiredListOfAwsIpAddress: requiredListOfAwsIpAddress,
      requiredListOfRequiredAwsIpAddress: requiredListOfRequiredAwsIpAddress,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String id;

  @override
  final List<String?>? listOfString;

  @override
  final List<String>? listOfRequiredString;

  @override
  final List<String?>? requiredListOfString;

  @override
  final List<String>? requiredListOfRequiredString;

  @override
  final List<int?>? listOfInteger;

  @override
  final List<int>? listOfRequiredInteger;

  @override
  final List<int?>? requiredListOfInteger;

  @override
  final List<int>? requiredListOfRequiredInteger;

  @override
  final List<double?>? listOfFloat;

  @override
  final List<double>? listOfRequiredFloat;

  @override
  final List<double?>? requiredListOfFloat;

  @override
  final List<double>? requiredListOfRequiredFloat;

  @override
  final List<bool?>? listOfBoolean;

  @override
  final List<bool>? listOfRequiredBoolean;

  @override
  final List<bool?>? requiredListOfBoolean;

  @override
  final List<bool>? requiredListOfRequiredBoolean;

  @override
  final List<TemporalDate?>? listOfAwsDate;

  @override
  final List<TemporalDate>? listOfRequiredAwsDate;

  @override
  final List<TemporalDate?>? requiredListOfAwsDate;

  @override
  final List<TemporalDate>? requiredListOfRequiredAwsDate;

  @override
  final List<TemporalDateTime?>? listOfAwsDateTime;

  @override
  final List<TemporalDateTime>? listOfRequiredAwsDateTime;

  @override
  final List<TemporalDateTime?>? requiredListOfAwsDateTime;

  @override
  final List<TemporalDateTime>? requiredListOfRequiredAwsDateTime;

  @override
  final List<TemporalTime?>? listOfAwsTime;

  @override
  final List<TemporalTime>? listOfRequiredAwsTime;

  @override
  final List<TemporalTime?>? requiredListOfAwsTime;

  @override
  final List<TemporalTime>? requiredListOfRequiredAwsTime;

  @override
  final List<TemporalTimestamp?>? listOfAwsTimestamp;

  @override
  final List<TemporalTimestamp>? listOfRequiredAwsTimestamp;

  @override
  final List<TemporalTimestamp?>? requiredListOfAwsTimestamp;

  @override
  final List<TemporalTimestamp>? requiredListOfRequiredAwsTimestamp;

  @override
  final List<String?>? listOfAwsEmail;

  @override
  final List<String>? listOfRequiredAwsEmail;

  @override
  final List<String?>? requiredListOfAwsEmail;

  @override
  final List<String>? requiredListOfRequiredAwsEmail;

  @override
  final List<Object?>? listOfAwsjson;

  @override
  final List<Object>? listOfRequiredAwsjson;

  @override
  final List<Object?>? requiredListOfAwsjson;

  @override
  final List<Object>? requiredListOfRequiredAwsjson;

  @override
  final List<String?>? listOfAwsPhone;

  @override
  final List<String>? listOfRequiredAwsPhone;

  @override
  final List<String?>? requiredListOfAwsPhone;

  @override
  final List<String>? requiredListOfRequiredAwsPhone;

  @override
  final List<Uri?>? listOfAwsUrl;

  @override
  final List<Uri>? listOfRequiredAwsUrl;

  @override
  final List<Uri?>? requiredListOfAwsUrl;

  @override
  final List<Uri>? requiredListOfRequiredAwsUrl;

  @override
  final List<String?>? listOfAwsIpAddress;

  @override
  final List<String>? listOfRequiredAwsIpAddress;

  @override
  final List<String?>? requiredListOfAwsIpAddress;

  @override
  final List<String>? requiredListOfRequiredAwsIpAddress;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class ScalarListNonModel extends PartialScalarListNonModel
    implements Model<String, ScalarListNonModel> {
  factory ScalarListNonModel({
    String? id,
    List<String?>? listOfString,
    List<String>? listOfRequiredString,
    required List<String?> requiredListOfString,
    required List<String> requiredListOfRequiredString,
    List<int?>? listOfInteger,
    List<int>? listOfRequiredInteger,
    required List<int?> requiredListOfInteger,
    required List<int> requiredListOfRequiredInteger,
    List<double?>? listOfFloat,
    List<double>? listOfRequiredFloat,
    required List<double?> requiredListOfFloat,
    required List<double> requiredListOfRequiredFloat,
    List<bool?>? listOfBoolean,
    List<bool>? listOfRequiredBoolean,
    required List<bool?> requiredListOfBoolean,
    required List<bool> requiredListOfRequiredBoolean,
    List<TemporalDate?>? listOfAwsDate,
    List<TemporalDate>? listOfRequiredAwsDate,
    required List<TemporalDate?> requiredListOfAwsDate,
    required List<TemporalDate> requiredListOfRequiredAwsDate,
    List<TemporalDateTime?>? listOfAwsDateTime,
    List<TemporalDateTime>? listOfRequiredAwsDateTime,
    required List<TemporalDateTime?> requiredListOfAwsDateTime,
    required List<TemporalDateTime> requiredListOfRequiredAwsDateTime,
    List<TemporalTime?>? listOfAwsTime,
    List<TemporalTime>? listOfRequiredAwsTime,
    required List<TemporalTime?> requiredListOfAwsTime,
    required List<TemporalTime> requiredListOfRequiredAwsTime,
    List<TemporalTimestamp?>? listOfAwsTimestamp,
    List<TemporalTimestamp>? listOfRequiredAwsTimestamp,
    required List<TemporalTimestamp?> requiredListOfAwsTimestamp,
    required List<TemporalTimestamp> requiredListOfRequiredAwsTimestamp,
    List<String?>? listOfAwsEmail,
    List<String>? listOfRequiredAwsEmail,
    required List<String?> requiredListOfAwsEmail,
    required List<String> requiredListOfRequiredAwsEmail,
    List<Object?>? listOfAwsjson,
    List<Object>? listOfRequiredAwsjson,
    required List<Object?> requiredListOfAwsjson,
    required List<Object> requiredListOfRequiredAwsjson,
    List<String?>? listOfAwsPhone,
    List<String>? listOfRequiredAwsPhone,
    required List<String?> requiredListOfAwsPhone,
    required List<String> requiredListOfRequiredAwsPhone,
    List<Uri?>? listOfAwsUrl,
    List<Uri>? listOfRequiredAwsUrl,
    required List<Uri?> requiredListOfAwsUrl,
    required List<Uri> requiredListOfRequiredAwsUrl,
    List<String?>? listOfAwsIpAddress,
    List<String>? listOfRequiredAwsIpAddress,
    required List<String?> requiredListOfAwsIpAddress,
    required List<String> requiredListOfRequiredAwsIpAddress,
    TemporalDateTime? createdAt,
    TemporalDateTime? updatedAt,
  }) = _ScalarListNonModel;

  const ScalarListNonModel._() : super._();

  factory ScalarListNonModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'id',
          ))
        : (json['id'] as String);
    final listOfString = json['listOfString'] == null
        ? null
        : (json['listOfString'] as List<Object?>).cast<String?>().toList();
    final listOfRequiredString = json['listOfRequiredString'] == null
        ? null
        : (json['listOfRequiredString'] as List<Object?>)
            .cast<String?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListNonModel',
                  'listOfRequiredString',
                )))
            .toList();
    final requiredListOfString = json['requiredListOfString'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfString',
          ))
        : (json['requiredListOfString'] as List<Object?>)
            .cast<String?>()
            .toList();
    final requiredListOfRequiredString =
        json['requiredListOfRequiredString'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredString',
              ))
            : (json['requiredListOfRequiredString'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredString',
                    )))
                .toList();
    final listOfInteger = json['listOfInteger'] == null
        ? null
        : (json['listOfInteger'] as List<Object?>).cast<int?>().toList();
    final listOfRequiredInteger = json['listOfRequiredInteger'] == null
        ? null
        : (json['listOfRequiredInteger'] as List<Object?>)
            .cast<int?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListNonModel',
                  'listOfRequiredInteger',
                )))
            .toList();
    final requiredListOfInteger = json['requiredListOfInteger'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfInteger',
          ))
        : (json['requiredListOfInteger'] as List<Object?>)
            .cast<int?>()
            .toList();
    final requiredListOfRequiredInteger =
        json['requiredListOfRequiredInteger'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredInteger',
              ))
            : (json['requiredListOfRequiredInteger'] as List<Object?>)
                .cast<int?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredInteger',
                    )))
                .toList();
    final listOfFloat = json['listOfFloat'] == null
        ? null
        : (json['listOfFloat'] as List<Object?>).cast<double?>().toList();
    final listOfRequiredFloat = json['listOfRequiredFloat'] == null
        ? null
        : (json['listOfRequiredFloat'] as List<Object?>)
            .cast<double?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListNonModel',
                  'listOfRequiredFloat',
                )))
            .toList();
    final requiredListOfFloat = json['requiredListOfFloat'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfFloat',
          ))
        : (json['requiredListOfFloat'] as List<Object?>)
            .cast<double?>()
            .toList();
    final requiredListOfRequiredFloat =
        json['requiredListOfRequiredFloat'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredFloat',
              ))
            : (json['requiredListOfRequiredFloat'] as List<Object?>)
                .cast<double?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredFloat',
                    )))
                .toList();
    final listOfBoolean = json['listOfBoolean'] == null
        ? null
        : (json['listOfBoolean'] as List<Object?>).cast<bool?>().toList();
    final listOfRequiredBoolean = json['listOfRequiredBoolean'] == null
        ? null
        : (json['listOfRequiredBoolean'] as List<Object?>)
            .cast<bool?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListNonModel',
                  'listOfRequiredBoolean',
                )))
            .toList();
    final requiredListOfBoolean = json['requiredListOfBoolean'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfBoolean',
          ))
        : (json['requiredListOfBoolean'] as List<Object?>)
            .cast<bool?>()
            .toList();
    final requiredListOfRequiredBoolean =
        json['requiredListOfRequiredBoolean'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredBoolean',
              ))
            : (json['requiredListOfRequiredBoolean'] as List<Object?>)
                .cast<bool?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredBoolean',
                    )))
                .toList();
    final listOfAwsDate = json['listOfAWSDate'] == null
        ? null
        : (json['listOfAWSDate'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDate.fromString(el))
            .toList();
    final listOfRequiredAwsDate = json['listOfRequiredAWSDate'] == null
        ? null
        : (json['listOfRequiredAWSDate'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListNonModel',
                    'listOfRequiredAwsDate',
                  ))
                : TemporalDate.fromString(el))
            .toList();
    final requiredListOfAwsDate = json['requiredListOfAWSDate'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfAwsDate',
          ))
        : (json['requiredListOfAWSDate'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDate.fromString(el))
            .toList();
    final requiredListOfRequiredAwsDate =
        json['requiredListOfRequiredAWSDate'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredAwsDate',
              ))
            : (json['requiredListOfRequiredAWSDate'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListNonModel',
                        'requiredListOfRequiredAwsDate',
                      ))
                    : TemporalDate.fromString(el))
                .toList();
    final listOfAwsDateTime = json['listOfAWSDateTime'] == null
        ? null
        : (json['listOfAWSDateTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDateTime.fromString(el))
            .toList();
    final listOfRequiredAwsDateTime = json['listOfRequiredAWSDateTime'] == null
        ? null
        : (json['listOfRequiredAWSDateTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListNonModel',
                    'listOfRequiredAwsDateTime',
                  ))
                : TemporalDateTime.fromString(el))
            .toList();
    final requiredListOfAwsDateTime = json['requiredListOfAWSDateTime'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfAwsDateTime',
          ))
        : (json['requiredListOfAWSDateTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDateTime.fromString(el))
            .toList();
    final requiredListOfRequiredAwsDateTime =
        json['requiredListOfRequiredAWSDateTime'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredAwsDateTime',
              ))
            : (json['requiredListOfRequiredAWSDateTime'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListNonModel',
                        'requiredListOfRequiredAwsDateTime',
                      ))
                    : TemporalDateTime.fromString(el))
                .toList();
    final listOfAwsTime = json['listOfAWSTime'] == null
        ? null
        : (json['listOfAWSTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalTime.fromString(el))
            .toList();
    final listOfRequiredAwsTime = json['listOfRequiredAWSTime'] == null
        ? null
        : (json['listOfRequiredAWSTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListNonModel',
                    'listOfRequiredAwsTime',
                  ))
                : TemporalTime.fromString(el))
            .toList();
    final requiredListOfAwsTime = json['requiredListOfAWSTime'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfAwsTime',
          ))
        : (json['requiredListOfAWSTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalTime.fromString(el))
            .toList();
    final requiredListOfRequiredAwsTime =
        json['requiredListOfRequiredAWSTime'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredAwsTime',
              ))
            : (json['requiredListOfRequiredAWSTime'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListNonModel',
                        'requiredListOfRequiredAwsTime',
                      ))
                    : TemporalTime.fromString(el))
                .toList();
    final listOfAwsTimestamp = json['listOfAWSTimestamp'] == null
        ? null
        : (json['listOfAWSTimestamp'] as List<Object?>)
            .cast<int?>()
            .map((el) => el == null ? null : TemporalTimestamp.fromSeconds(el))
            .toList();
    final listOfRequiredAwsTimestamp =
        json['listOfRequiredAWSTimestamp'] == null
            ? null
            : (json['listOfRequiredAWSTimestamp'] as List<Object?>)
                .cast<int?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListNonModel',
                        'listOfRequiredAwsTimestamp',
                      ))
                    : TemporalTimestamp.fromSeconds(el))
                .toList();
    final requiredListOfAwsTimestamp = json['requiredListOfAWSTimestamp'] ==
            null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfAwsTimestamp',
          ))
        : (json['requiredListOfAWSTimestamp'] as List<Object?>)
            .cast<int?>()
            .map((el) => el == null ? null : TemporalTimestamp.fromSeconds(el))
            .toList();
    final requiredListOfRequiredAwsTimestamp =
        json['requiredListOfRequiredAWSTimestamp'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredAwsTimestamp',
              ))
            : (json['requiredListOfRequiredAWSTimestamp'] as List<Object?>)
                .cast<int?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListNonModel',
                        'requiredListOfRequiredAwsTimestamp',
                      ))
                    : TemporalTimestamp.fromSeconds(el))
                .toList();
    final listOfAwsEmail = json['listOfAWSEmail'] == null
        ? null
        : (json['listOfAWSEmail'] as List<Object?>).cast<String?>().toList();
    final listOfRequiredAwsEmail = json['listOfRequiredAWSEmail'] == null
        ? null
        : (json['listOfRequiredAWSEmail'] as List<Object?>)
            .cast<String?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListNonModel',
                  'listOfRequiredAwsEmail',
                )))
            .toList();
    final requiredListOfAwsEmail = json['requiredListOfAWSEmail'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfAwsEmail',
          ))
        : (json['requiredListOfAWSEmail'] as List<Object?>)
            .cast<String?>()
            .toList();
    final requiredListOfRequiredAwsEmail =
        json['requiredListOfRequiredAWSEmail'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredAwsEmail',
              ))
            : (json['requiredListOfRequiredAWSEmail'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredAwsEmail',
                    )))
                .toList();
    final listOfAwsjson = json['listOfAWSJSON'] == null
        ? null
        : (json['listOfAWSJSON'] as List<Object?>).cast<Object?>().toList();
    final listOfRequiredAwsjson = json['listOfRequiredAWSJSON'] == null
        ? null
        : (json['listOfRequiredAWSJSON'] as List<Object?>)
            .cast<Object?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListNonModel',
                  'listOfRequiredAwsjson',
                )))
            .toList();
    final requiredListOfAwsjson = json['requiredListOfAWSJSON'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfAwsjson',
          ))
        : (json['requiredListOfAWSJSON'] as List<Object?>)
            .cast<Object?>()
            .toList();
    final requiredListOfRequiredAwsjson =
        json['requiredListOfRequiredAWSJSON'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredAwsjson',
              ))
            : (json['requiredListOfRequiredAWSJSON'] as List<Object?>)
                .cast<Object?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredAwsjson',
                    )))
                .toList();
    final listOfAwsPhone = json['listOfAWSPhone'] == null
        ? null
        : (json['listOfAWSPhone'] as List<Object?>).cast<String?>().toList();
    final listOfRequiredAwsPhone = json['listOfRequiredAWSPhone'] == null
        ? null
        : (json['listOfRequiredAWSPhone'] as List<Object?>)
            .cast<String?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListNonModel',
                  'listOfRequiredAwsPhone',
                )))
            .toList();
    final requiredListOfAwsPhone = json['requiredListOfAWSPhone'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfAwsPhone',
          ))
        : (json['requiredListOfAWSPhone'] as List<Object?>)
            .cast<String?>()
            .toList();
    final requiredListOfRequiredAwsPhone =
        json['requiredListOfRequiredAWSPhone'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredAwsPhone',
              ))
            : (json['requiredListOfRequiredAWSPhone'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredAwsPhone',
                    )))
                .toList();
    final listOfAwsUrl = json['listOfAWSUrl'] == null
        ? null
        : (json['listOfAWSUrl'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : Uri.parse(el))
            .toList();
    final listOfRequiredAwsUrl = json['listOfRequiredAWSUrl'] == null
        ? null
        : (json['listOfRequiredAWSUrl'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListNonModel',
                    'listOfRequiredAwsUrl',
                  ))
                : Uri.parse(el))
            .toList();
    final requiredListOfAwsUrl = json['requiredListOfAWSUrl'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfAwsUrl',
          ))
        : (json['requiredListOfAWSUrl'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : Uri.parse(el))
            .toList();
    final requiredListOfRequiredAwsUrl =
        json['requiredListOfRequiredAWSUrl'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredAwsUrl',
              ))
            : (json['requiredListOfRequiredAWSUrl'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListNonModel',
                        'requiredListOfRequiredAwsUrl',
                      ))
                    : Uri.parse(el))
                .toList();
    final listOfAwsIpAddress = json['listOfAWSIpAddress'] == null
        ? null
        : (json['listOfAWSIpAddress'] as List<Object?>)
            .cast<String?>()
            .toList();
    final listOfRequiredAwsIpAddress =
        json['listOfRequiredAWSIpAddress'] == null
            ? null
            : (json['listOfRequiredAWSIpAddress'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'listOfRequiredAwsIpAddress',
                    )))
                .toList();
    final requiredListOfAwsIpAddress =
        json['requiredListOfAWSIpAddress'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfAwsIpAddress',
              ))
            : (json['requiredListOfAWSIpAddress'] as List<Object?>)
                .cast<String?>()
                .toList();
    final requiredListOfRequiredAwsIpAddress =
        json['requiredListOfRequiredAWSIpAddress'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredAwsIpAddress',
              ))
            : (json['requiredListOfRequiredAWSIpAddress'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredAwsIpAddress',
                    )))
                .toList();
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return ScalarListNonModel(
      id: id,
      listOfString: listOfString,
      listOfRequiredString: listOfRequiredString,
      requiredListOfString: requiredListOfString,
      requiredListOfRequiredString: requiredListOfRequiredString,
      listOfInteger: listOfInteger,
      listOfRequiredInteger: listOfRequiredInteger,
      requiredListOfInteger: requiredListOfInteger,
      requiredListOfRequiredInteger: requiredListOfRequiredInteger,
      listOfFloat: listOfFloat,
      listOfRequiredFloat: listOfRequiredFloat,
      requiredListOfFloat: requiredListOfFloat,
      requiredListOfRequiredFloat: requiredListOfRequiredFloat,
      listOfBoolean: listOfBoolean,
      listOfRequiredBoolean: listOfRequiredBoolean,
      requiredListOfBoolean: requiredListOfBoolean,
      requiredListOfRequiredBoolean: requiredListOfRequiredBoolean,
      listOfAwsDate: listOfAwsDate,
      listOfRequiredAwsDate: listOfRequiredAwsDate,
      requiredListOfAwsDate: requiredListOfAwsDate,
      requiredListOfRequiredAwsDate: requiredListOfRequiredAwsDate,
      listOfAwsDateTime: listOfAwsDateTime,
      listOfRequiredAwsDateTime: listOfRequiredAwsDateTime,
      requiredListOfAwsDateTime: requiredListOfAwsDateTime,
      requiredListOfRequiredAwsDateTime: requiredListOfRequiredAwsDateTime,
      listOfAwsTime: listOfAwsTime,
      listOfRequiredAwsTime: listOfRequiredAwsTime,
      requiredListOfAwsTime: requiredListOfAwsTime,
      requiredListOfRequiredAwsTime: requiredListOfRequiredAwsTime,
      listOfAwsTimestamp: listOfAwsTimestamp,
      listOfRequiredAwsTimestamp: listOfRequiredAwsTimestamp,
      requiredListOfAwsTimestamp: requiredListOfAwsTimestamp,
      requiredListOfRequiredAwsTimestamp: requiredListOfRequiredAwsTimestamp,
      listOfAwsEmail: listOfAwsEmail,
      listOfRequiredAwsEmail: listOfRequiredAwsEmail,
      requiredListOfAwsEmail: requiredListOfAwsEmail,
      requiredListOfRequiredAwsEmail: requiredListOfRequiredAwsEmail,
      listOfAwsjson: listOfAwsjson,
      listOfRequiredAwsjson: listOfRequiredAwsjson,
      requiredListOfAwsjson: requiredListOfAwsjson,
      requiredListOfRequiredAwsjson: requiredListOfRequiredAwsjson,
      listOfAwsPhone: listOfAwsPhone,
      listOfRequiredAwsPhone: listOfRequiredAwsPhone,
      requiredListOfAwsPhone: requiredListOfAwsPhone,
      requiredListOfRequiredAwsPhone: requiredListOfRequiredAwsPhone,
      listOfAwsUrl: listOfAwsUrl,
      listOfRequiredAwsUrl: listOfRequiredAwsUrl,
      requiredListOfAwsUrl: requiredListOfAwsUrl,
      requiredListOfRequiredAwsUrl: requiredListOfRequiredAwsUrl,
      listOfAwsIpAddress: listOfAwsIpAddress,
      listOfRequiredAwsIpAddress: listOfRequiredAwsIpAddress,
      requiredListOfAwsIpAddress: requiredListOfAwsIpAddress,
      requiredListOfRequiredAwsIpAddress: requiredListOfRequiredAwsIpAddress,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const ScalarListNonModelType classType = ScalarListNonModelType();

  @override
  String get id;
  @override
  List<String?>? get listOfString;
  @override
  List<String>? get listOfRequiredString;
  @override
  List<String?> get requiredListOfString;
  @override
  List<String> get requiredListOfRequiredString;
  @override
  List<int?>? get listOfInteger;
  @override
  List<int>? get listOfRequiredInteger;
  @override
  List<int?> get requiredListOfInteger;
  @override
  List<int> get requiredListOfRequiredInteger;
  @override
  List<double?>? get listOfFloat;
  @override
  List<double>? get listOfRequiredFloat;
  @override
  List<double?> get requiredListOfFloat;
  @override
  List<double> get requiredListOfRequiredFloat;
  @override
  List<bool?>? get listOfBoolean;
  @override
  List<bool>? get listOfRequiredBoolean;
  @override
  List<bool?> get requiredListOfBoolean;
  @override
  List<bool> get requiredListOfRequiredBoolean;
  @override
  List<TemporalDate?>? get listOfAwsDate;
  @override
  List<TemporalDate>? get listOfRequiredAwsDate;
  @override
  List<TemporalDate?> get requiredListOfAwsDate;
  @override
  List<TemporalDate> get requiredListOfRequiredAwsDate;
  @override
  List<TemporalDateTime?>? get listOfAwsDateTime;
  @override
  List<TemporalDateTime>? get listOfRequiredAwsDateTime;
  @override
  List<TemporalDateTime?> get requiredListOfAwsDateTime;
  @override
  List<TemporalDateTime> get requiredListOfRequiredAwsDateTime;
  @override
  List<TemporalTime?>? get listOfAwsTime;
  @override
  List<TemporalTime>? get listOfRequiredAwsTime;
  @override
  List<TemporalTime?> get requiredListOfAwsTime;
  @override
  List<TemporalTime> get requiredListOfRequiredAwsTime;
  @override
  List<TemporalTimestamp?>? get listOfAwsTimestamp;
  @override
  List<TemporalTimestamp>? get listOfRequiredAwsTimestamp;
  @override
  List<TemporalTimestamp?> get requiredListOfAwsTimestamp;
  @override
  List<TemporalTimestamp> get requiredListOfRequiredAwsTimestamp;
  @override
  List<String?>? get listOfAwsEmail;
  @override
  List<String>? get listOfRequiredAwsEmail;
  @override
  List<String?> get requiredListOfAwsEmail;
  @override
  List<String> get requiredListOfRequiredAwsEmail;
  @override
  List<Object?>? get listOfAwsjson;
  @override
  List<Object>? get listOfRequiredAwsjson;
  @override
  List<Object?> get requiredListOfAwsjson;
  @override
  List<Object> get requiredListOfRequiredAwsjson;
  @override
  List<String?>? get listOfAwsPhone;
  @override
  List<String>? get listOfRequiredAwsPhone;
  @override
  List<String?> get requiredListOfAwsPhone;
  @override
  List<String> get requiredListOfRequiredAwsPhone;
  @override
  List<Uri?>? get listOfAwsUrl;
  @override
  List<Uri>? get listOfRequiredAwsUrl;
  @override
  List<Uri?> get requiredListOfAwsUrl;
  @override
  List<Uri> get requiredListOfRequiredAwsUrl;
  @override
  List<String?>? get listOfAwsIpAddress;
  @override
  List<String>? get listOfRequiredAwsIpAddress;
  @override
  List<String?> get requiredListOfAwsIpAddress;
  @override
  List<String> get requiredListOfRequiredAwsIpAddress;
  @override
  TemporalDateTime? get createdAt;
  @override
  TemporalDateTime? get updatedAt;
}

class _ScalarListNonModel extends ScalarListNonModel {
  _ScalarListNonModel({
    String? id,
    this.listOfString,
    this.listOfRequiredString,
    required this.requiredListOfString,
    required this.requiredListOfRequiredString,
    this.listOfInteger,
    this.listOfRequiredInteger,
    required this.requiredListOfInteger,
    required this.requiredListOfRequiredInteger,
    this.listOfFloat,
    this.listOfRequiredFloat,
    required this.requiredListOfFloat,
    required this.requiredListOfRequiredFloat,
    this.listOfBoolean,
    this.listOfRequiredBoolean,
    required this.requiredListOfBoolean,
    required this.requiredListOfRequiredBoolean,
    this.listOfAwsDate,
    this.listOfRequiredAwsDate,
    required this.requiredListOfAwsDate,
    required this.requiredListOfRequiredAwsDate,
    this.listOfAwsDateTime,
    this.listOfRequiredAwsDateTime,
    required this.requiredListOfAwsDateTime,
    required this.requiredListOfRequiredAwsDateTime,
    this.listOfAwsTime,
    this.listOfRequiredAwsTime,
    required this.requiredListOfAwsTime,
    required this.requiredListOfRequiredAwsTime,
    this.listOfAwsTimestamp,
    this.listOfRequiredAwsTimestamp,
    required this.requiredListOfAwsTimestamp,
    required this.requiredListOfRequiredAwsTimestamp,
    this.listOfAwsEmail,
    this.listOfRequiredAwsEmail,
    required this.requiredListOfAwsEmail,
    required this.requiredListOfRequiredAwsEmail,
    this.listOfAwsjson,
    this.listOfRequiredAwsjson,
    required this.requiredListOfAwsjson,
    required this.requiredListOfRequiredAwsjson,
    this.listOfAwsPhone,
    this.listOfRequiredAwsPhone,
    required this.requiredListOfAwsPhone,
    required this.requiredListOfRequiredAwsPhone,
    this.listOfAwsUrl,
    this.listOfRequiredAwsUrl,
    required this.requiredListOfAwsUrl,
    required this.requiredListOfRequiredAwsUrl,
    this.listOfAwsIpAddress,
    this.listOfRequiredAwsIpAddress,
    required this.requiredListOfAwsIpAddress,
    required this.requiredListOfRequiredAwsIpAddress,
    this.createdAt,
    this.updatedAt,
  })  : id = id ?? uuid(),
        super._();

  @override
  final String id;

  @override
  final List<String?>? listOfString;

  @override
  final List<String>? listOfRequiredString;

  @override
  final List<String?> requiredListOfString;

  @override
  final List<String> requiredListOfRequiredString;

  @override
  final List<int?>? listOfInteger;

  @override
  final List<int>? listOfRequiredInteger;

  @override
  final List<int?> requiredListOfInteger;

  @override
  final List<int> requiredListOfRequiredInteger;

  @override
  final List<double?>? listOfFloat;

  @override
  final List<double>? listOfRequiredFloat;

  @override
  final List<double?> requiredListOfFloat;

  @override
  final List<double> requiredListOfRequiredFloat;

  @override
  final List<bool?>? listOfBoolean;

  @override
  final List<bool>? listOfRequiredBoolean;

  @override
  final List<bool?> requiredListOfBoolean;

  @override
  final List<bool> requiredListOfRequiredBoolean;

  @override
  final List<TemporalDate?>? listOfAwsDate;

  @override
  final List<TemporalDate>? listOfRequiredAwsDate;

  @override
  final List<TemporalDate?> requiredListOfAwsDate;

  @override
  final List<TemporalDate> requiredListOfRequiredAwsDate;

  @override
  final List<TemporalDateTime?>? listOfAwsDateTime;

  @override
  final List<TemporalDateTime>? listOfRequiredAwsDateTime;

  @override
  final List<TemporalDateTime?> requiredListOfAwsDateTime;

  @override
  final List<TemporalDateTime> requiredListOfRequiredAwsDateTime;

  @override
  final List<TemporalTime?>? listOfAwsTime;

  @override
  final List<TemporalTime>? listOfRequiredAwsTime;

  @override
  final List<TemporalTime?> requiredListOfAwsTime;

  @override
  final List<TemporalTime> requiredListOfRequiredAwsTime;

  @override
  final List<TemporalTimestamp?>? listOfAwsTimestamp;

  @override
  final List<TemporalTimestamp>? listOfRequiredAwsTimestamp;

  @override
  final List<TemporalTimestamp?> requiredListOfAwsTimestamp;

  @override
  final List<TemporalTimestamp> requiredListOfRequiredAwsTimestamp;

  @override
  final List<String?>? listOfAwsEmail;

  @override
  final List<String>? listOfRequiredAwsEmail;

  @override
  final List<String?> requiredListOfAwsEmail;

  @override
  final List<String> requiredListOfRequiredAwsEmail;

  @override
  final List<Object?>? listOfAwsjson;

  @override
  final List<Object>? listOfRequiredAwsjson;

  @override
  final List<Object?> requiredListOfAwsjson;

  @override
  final List<Object> requiredListOfRequiredAwsjson;

  @override
  final List<String?>? listOfAwsPhone;

  @override
  final List<String>? listOfRequiredAwsPhone;

  @override
  final List<String?> requiredListOfAwsPhone;

  @override
  final List<String> requiredListOfRequiredAwsPhone;

  @override
  final List<Uri?>? listOfAwsUrl;

  @override
  final List<Uri>? listOfRequiredAwsUrl;

  @override
  final List<Uri?> requiredListOfAwsUrl;

  @override
  final List<Uri> requiredListOfRequiredAwsUrl;

  @override
  final List<String?>? listOfAwsIpAddress;

  @override
  final List<String>? listOfRequiredAwsIpAddress;

  @override
  final List<String?> requiredListOfAwsIpAddress;

  @override
  final List<String> requiredListOfRequiredAwsIpAddress;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class RemoteScalarListNonModel extends ScalarListNonModel
    implements RemoteModel<String, ScalarListNonModel> {
  const RemoteScalarListNonModel._() : super._();
}

class _RemoteScalarListNonModel extends RemoteScalarListNonModel {
  const _RemoteScalarListNonModel({
    required this.id,
    this.listOfString,
    this.listOfRequiredString,
    required this.requiredListOfString,
    required this.requiredListOfRequiredString,
    this.listOfInteger,
    this.listOfRequiredInteger,
    required this.requiredListOfInteger,
    required this.requiredListOfRequiredInteger,
    this.listOfFloat,
    this.listOfRequiredFloat,
    required this.requiredListOfFloat,
    required this.requiredListOfRequiredFloat,
    this.listOfBoolean,
    this.listOfRequiredBoolean,
    required this.requiredListOfBoolean,
    required this.requiredListOfRequiredBoolean,
    this.listOfAwsDate,
    this.listOfRequiredAwsDate,
    required this.requiredListOfAwsDate,
    required this.requiredListOfRequiredAwsDate,
    this.listOfAwsDateTime,
    this.listOfRequiredAwsDateTime,
    required this.requiredListOfAwsDateTime,
    required this.requiredListOfRequiredAwsDateTime,
    this.listOfAwsTime,
    this.listOfRequiredAwsTime,
    required this.requiredListOfAwsTime,
    required this.requiredListOfRequiredAwsTime,
    this.listOfAwsTimestamp,
    this.listOfRequiredAwsTimestamp,
    required this.requiredListOfAwsTimestamp,
    required this.requiredListOfRequiredAwsTimestamp,
    this.listOfAwsEmail,
    this.listOfRequiredAwsEmail,
    required this.requiredListOfAwsEmail,
    required this.requiredListOfRequiredAwsEmail,
    this.listOfAwsjson,
    this.listOfRequiredAwsjson,
    required this.requiredListOfAwsjson,
    required this.requiredListOfRequiredAwsjson,
    this.listOfAwsPhone,
    this.listOfRequiredAwsPhone,
    required this.requiredListOfAwsPhone,
    required this.requiredListOfRequiredAwsPhone,
    this.listOfAwsUrl,
    this.listOfRequiredAwsUrl,
    required this.requiredListOfAwsUrl,
    required this.requiredListOfRequiredAwsUrl,
    this.listOfAwsIpAddress,
    this.listOfRequiredAwsIpAddress,
    required this.requiredListOfAwsIpAddress,
    required this.requiredListOfRequiredAwsIpAddress,
    this.createdAt,
    this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteScalarListNonModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'id',
          ))
        : (json['id'] as String);
    final listOfString = json['listOfString'] == null
        ? null
        : (json['listOfString'] as List<Object?>).cast<String?>().toList();
    final listOfRequiredString = json['listOfRequiredString'] == null
        ? null
        : (json['listOfRequiredString'] as List<Object?>)
            .cast<String?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListNonModel',
                  'listOfRequiredString',
                )))
            .toList();
    final requiredListOfString = json['requiredListOfString'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfString',
          ))
        : (json['requiredListOfString'] as List<Object?>)
            .cast<String?>()
            .toList();
    final requiredListOfRequiredString =
        json['requiredListOfRequiredString'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredString',
              ))
            : (json['requiredListOfRequiredString'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredString',
                    )))
                .toList();
    final listOfInteger = json['listOfInteger'] == null
        ? null
        : (json['listOfInteger'] as List<Object?>).cast<int?>().toList();
    final listOfRequiredInteger = json['listOfRequiredInteger'] == null
        ? null
        : (json['listOfRequiredInteger'] as List<Object?>)
            .cast<int?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListNonModel',
                  'listOfRequiredInteger',
                )))
            .toList();
    final requiredListOfInteger = json['requiredListOfInteger'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfInteger',
          ))
        : (json['requiredListOfInteger'] as List<Object?>)
            .cast<int?>()
            .toList();
    final requiredListOfRequiredInteger =
        json['requiredListOfRequiredInteger'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredInteger',
              ))
            : (json['requiredListOfRequiredInteger'] as List<Object?>)
                .cast<int?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredInteger',
                    )))
                .toList();
    final listOfFloat = json['listOfFloat'] == null
        ? null
        : (json['listOfFloat'] as List<Object?>).cast<double?>().toList();
    final listOfRequiredFloat = json['listOfRequiredFloat'] == null
        ? null
        : (json['listOfRequiredFloat'] as List<Object?>)
            .cast<double?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListNonModel',
                  'listOfRequiredFloat',
                )))
            .toList();
    final requiredListOfFloat = json['requiredListOfFloat'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfFloat',
          ))
        : (json['requiredListOfFloat'] as List<Object?>)
            .cast<double?>()
            .toList();
    final requiredListOfRequiredFloat =
        json['requiredListOfRequiredFloat'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredFloat',
              ))
            : (json['requiredListOfRequiredFloat'] as List<Object?>)
                .cast<double?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredFloat',
                    )))
                .toList();
    final listOfBoolean = json['listOfBoolean'] == null
        ? null
        : (json['listOfBoolean'] as List<Object?>).cast<bool?>().toList();
    final listOfRequiredBoolean = json['listOfRequiredBoolean'] == null
        ? null
        : (json['listOfRequiredBoolean'] as List<Object?>)
            .cast<bool?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListNonModel',
                  'listOfRequiredBoolean',
                )))
            .toList();
    final requiredListOfBoolean = json['requiredListOfBoolean'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfBoolean',
          ))
        : (json['requiredListOfBoolean'] as List<Object?>)
            .cast<bool?>()
            .toList();
    final requiredListOfRequiredBoolean =
        json['requiredListOfRequiredBoolean'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredBoolean',
              ))
            : (json['requiredListOfRequiredBoolean'] as List<Object?>)
                .cast<bool?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredBoolean',
                    )))
                .toList();
    final listOfAwsDate = json['listOfAWSDate'] == null
        ? null
        : (json['listOfAWSDate'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDate.fromString(el))
            .toList();
    final listOfRequiredAwsDate = json['listOfRequiredAWSDate'] == null
        ? null
        : (json['listOfRequiredAWSDate'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListNonModel',
                    'listOfRequiredAwsDate',
                  ))
                : TemporalDate.fromString(el))
            .toList();
    final requiredListOfAwsDate = json['requiredListOfAWSDate'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfAwsDate',
          ))
        : (json['requiredListOfAWSDate'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDate.fromString(el))
            .toList();
    final requiredListOfRequiredAwsDate =
        json['requiredListOfRequiredAWSDate'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredAwsDate',
              ))
            : (json['requiredListOfRequiredAWSDate'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListNonModel',
                        'requiredListOfRequiredAwsDate',
                      ))
                    : TemporalDate.fromString(el))
                .toList();
    final listOfAwsDateTime = json['listOfAWSDateTime'] == null
        ? null
        : (json['listOfAWSDateTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDateTime.fromString(el))
            .toList();
    final listOfRequiredAwsDateTime = json['listOfRequiredAWSDateTime'] == null
        ? null
        : (json['listOfRequiredAWSDateTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListNonModel',
                    'listOfRequiredAwsDateTime',
                  ))
                : TemporalDateTime.fromString(el))
            .toList();
    final requiredListOfAwsDateTime = json['requiredListOfAWSDateTime'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfAwsDateTime',
          ))
        : (json['requiredListOfAWSDateTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDateTime.fromString(el))
            .toList();
    final requiredListOfRequiredAwsDateTime =
        json['requiredListOfRequiredAWSDateTime'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredAwsDateTime',
              ))
            : (json['requiredListOfRequiredAWSDateTime'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListNonModel',
                        'requiredListOfRequiredAwsDateTime',
                      ))
                    : TemporalDateTime.fromString(el))
                .toList();
    final listOfAwsTime = json['listOfAWSTime'] == null
        ? null
        : (json['listOfAWSTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalTime.fromString(el))
            .toList();
    final listOfRequiredAwsTime = json['listOfRequiredAWSTime'] == null
        ? null
        : (json['listOfRequiredAWSTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListNonModel',
                    'listOfRequiredAwsTime',
                  ))
                : TemporalTime.fromString(el))
            .toList();
    final requiredListOfAwsTime = json['requiredListOfAWSTime'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfAwsTime',
          ))
        : (json['requiredListOfAWSTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalTime.fromString(el))
            .toList();
    final requiredListOfRequiredAwsTime =
        json['requiredListOfRequiredAWSTime'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredAwsTime',
              ))
            : (json['requiredListOfRequiredAWSTime'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListNonModel',
                        'requiredListOfRequiredAwsTime',
                      ))
                    : TemporalTime.fromString(el))
                .toList();
    final listOfAwsTimestamp = json['listOfAWSTimestamp'] == null
        ? null
        : (json['listOfAWSTimestamp'] as List<Object?>)
            .cast<int?>()
            .map((el) => el == null ? null : TemporalTimestamp.fromSeconds(el))
            .toList();
    final listOfRequiredAwsTimestamp =
        json['listOfRequiredAWSTimestamp'] == null
            ? null
            : (json['listOfRequiredAWSTimestamp'] as List<Object?>)
                .cast<int?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListNonModel',
                        'listOfRequiredAwsTimestamp',
                      ))
                    : TemporalTimestamp.fromSeconds(el))
                .toList();
    final requiredListOfAwsTimestamp = json['requiredListOfAWSTimestamp'] ==
            null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfAwsTimestamp',
          ))
        : (json['requiredListOfAWSTimestamp'] as List<Object?>)
            .cast<int?>()
            .map((el) => el == null ? null : TemporalTimestamp.fromSeconds(el))
            .toList();
    final requiredListOfRequiredAwsTimestamp =
        json['requiredListOfRequiredAWSTimestamp'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredAwsTimestamp',
              ))
            : (json['requiredListOfRequiredAWSTimestamp'] as List<Object?>)
                .cast<int?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListNonModel',
                        'requiredListOfRequiredAwsTimestamp',
                      ))
                    : TemporalTimestamp.fromSeconds(el))
                .toList();
    final listOfAwsEmail = json['listOfAWSEmail'] == null
        ? null
        : (json['listOfAWSEmail'] as List<Object?>).cast<String?>().toList();
    final listOfRequiredAwsEmail = json['listOfRequiredAWSEmail'] == null
        ? null
        : (json['listOfRequiredAWSEmail'] as List<Object?>)
            .cast<String?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListNonModel',
                  'listOfRequiredAwsEmail',
                )))
            .toList();
    final requiredListOfAwsEmail = json['requiredListOfAWSEmail'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfAwsEmail',
          ))
        : (json['requiredListOfAWSEmail'] as List<Object?>)
            .cast<String?>()
            .toList();
    final requiredListOfRequiredAwsEmail =
        json['requiredListOfRequiredAWSEmail'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredAwsEmail',
              ))
            : (json['requiredListOfRequiredAWSEmail'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredAwsEmail',
                    )))
                .toList();
    final listOfAwsjson = json['listOfAWSJSON'] == null
        ? null
        : (json['listOfAWSJSON'] as List<Object?>).cast<Object?>().toList();
    final listOfRequiredAwsjson = json['listOfRequiredAWSJSON'] == null
        ? null
        : (json['listOfRequiredAWSJSON'] as List<Object?>)
            .cast<Object?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListNonModel',
                  'listOfRequiredAwsjson',
                )))
            .toList();
    final requiredListOfAwsjson = json['requiredListOfAWSJSON'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfAwsjson',
          ))
        : (json['requiredListOfAWSJSON'] as List<Object?>)
            .cast<Object?>()
            .toList();
    final requiredListOfRequiredAwsjson =
        json['requiredListOfRequiredAWSJSON'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredAwsjson',
              ))
            : (json['requiredListOfRequiredAWSJSON'] as List<Object?>)
                .cast<Object?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredAwsjson',
                    )))
                .toList();
    final listOfAwsPhone = json['listOfAWSPhone'] == null
        ? null
        : (json['listOfAWSPhone'] as List<Object?>).cast<String?>().toList();
    final listOfRequiredAwsPhone = json['listOfRequiredAWSPhone'] == null
        ? null
        : (json['listOfRequiredAWSPhone'] as List<Object?>)
            .cast<String?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListNonModel',
                  'listOfRequiredAwsPhone',
                )))
            .toList();
    final requiredListOfAwsPhone = json['requiredListOfAWSPhone'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfAwsPhone',
          ))
        : (json['requiredListOfAWSPhone'] as List<Object?>)
            .cast<String?>()
            .toList();
    final requiredListOfRequiredAwsPhone =
        json['requiredListOfRequiredAWSPhone'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredAwsPhone',
              ))
            : (json['requiredListOfRequiredAWSPhone'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredAwsPhone',
                    )))
                .toList();
    final listOfAwsUrl = json['listOfAWSUrl'] == null
        ? null
        : (json['listOfAWSUrl'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : Uri.parse(el))
            .toList();
    final listOfRequiredAwsUrl = json['listOfRequiredAWSUrl'] == null
        ? null
        : (json['listOfRequiredAWSUrl'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListNonModel',
                    'listOfRequiredAwsUrl',
                  ))
                : Uri.parse(el))
            .toList();
    final requiredListOfAwsUrl = json['requiredListOfAWSUrl'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'requiredListOfAwsUrl',
          ))
        : (json['requiredListOfAWSUrl'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : Uri.parse(el))
            .toList();
    final requiredListOfRequiredAwsUrl =
        json['requiredListOfRequiredAWSUrl'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredAwsUrl',
              ))
            : (json['requiredListOfRequiredAWSUrl'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListNonModel',
                        'requiredListOfRequiredAwsUrl',
                      ))
                    : Uri.parse(el))
                .toList();
    final listOfAwsIpAddress = json['listOfAWSIpAddress'] == null
        ? null
        : (json['listOfAWSIpAddress'] as List<Object?>)
            .cast<String?>()
            .toList();
    final listOfRequiredAwsIpAddress =
        json['listOfRequiredAWSIpAddress'] == null
            ? null
            : (json['listOfRequiredAWSIpAddress'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'listOfRequiredAwsIpAddress',
                    )))
                .toList();
    final requiredListOfAwsIpAddress =
        json['requiredListOfAWSIpAddress'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfAwsIpAddress',
              ))
            : (json['requiredListOfAWSIpAddress'] as List<Object?>)
                .cast<String?>()
                .toList();
    final requiredListOfRequiredAwsIpAddress =
        json['requiredListOfRequiredAWSIpAddress'] == null
            ? (throw ModelFieldError(
                'ScalarListNonModel',
                'requiredListOfRequiredAwsIpAddress',
              ))
            : (json['requiredListOfRequiredAWSIpAddress'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListNonModel',
                      'requiredListOfRequiredAwsIpAddress',
                    )))
                .toList();
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'ScalarListNonModel',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteScalarListNonModel(
      id: id,
      listOfString: listOfString,
      listOfRequiredString: listOfRequiredString,
      requiredListOfString: requiredListOfString,
      requiredListOfRequiredString: requiredListOfRequiredString,
      listOfInteger: listOfInteger,
      listOfRequiredInteger: listOfRequiredInteger,
      requiredListOfInteger: requiredListOfInteger,
      requiredListOfRequiredInteger: requiredListOfRequiredInteger,
      listOfFloat: listOfFloat,
      listOfRequiredFloat: listOfRequiredFloat,
      requiredListOfFloat: requiredListOfFloat,
      requiredListOfRequiredFloat: requiredListOfRequiredFloat,
      listOfBoolean: listOfBoolean,
      listOfRequiredBoolean: listOfRequiredBoolean,
      requiredListOfBoolean: requiredListOfBoolean,
      requiredListOfRequiredBoolean: requiredListOfRequiredBoolean,
      listOfAwsDate: listOfAwsDate,
      listOfRequiredAwsDate: listOfRequiredAwsDate,
      requiredListOfAwsDate: requiredListOfAwsDate,
      requiredListOfRequiredAwsDate: requiredListOfRequiredAwsDate,
      listOfAwsDateTime: listOfAwsDateTime,
      listOfRequiredAwsDateTime: listOfRequiredAwsDateTime,
      requiredListOfAwsDateTime: requiredListOfAwsDateTime,
      requiredListOfRequiredAwsDateTime: requiredListOfRequiredAwsDateTime,
      listOfAwsTime: listOfAwsTime,
      listOfRequiredAwsTime: listOfRequiredAwsTime,
      requiredListOfAwsTime: requiredListOfAwsTime,
      requiredListOfRequiredAwsTime: requiredListOfRequiredAwsTime,
      listOfAwsTimestamp: listOfAwsTimestamp,
      listOfRequiredAwsTimestamp: listOfRequiredAwsTimestamp,
      requiredListOfAwsTimestamp: requiredListOfAwsTimestamp,
      requiredListOfRequiredAwsTimestamp: requiredListOfRequiredAwsTimestamp,
      listOfAwsEmail: listOfAwsEmail,
      listOfRequiredAwsEmail: listOfRequiredAwsEmail,
      requiredListOfAwsEmail: requiredListOfAwsEmail,
      requiredListOfRequiredAwsEmail: requiredListOfRequiredAwsEmail,
      listOfAwsjson: listOfAwsjson,
      listOfRequiredAwsjson: listOfRequiredAwsjson,
      requiredListOfAwsjson: requiredListOfAwsjson,
      requiredListOfRequiredAwsjson: requiredListOfRequiredAwsjson,
      listOfAwsPhone: listOfAwsPhone,
      listOfRequiredAwsPhone: listOfRequiredAwsPhone,
      requiredListOfAwsPhone: requiredListOfAwsPhone,
      requiredListOfRequiredAwsPhone: requiredListOfRequiredAwsPhone,
      listOfAwsUrl: listOfAwsUrl,
      listOfRequiredAwsUrl: listOfRequiredAwsUrl,
      requiredListOfAwsUrl: requiredListOfAwsUrl,
      requiredListOfRequiredAwsUrl: requiredListOfRequiredAwsUrl,
      listOfAwsIpAddress: listOfAwsIpAddress,
      listOfRequiredAwsIpAddress: listOfRequiredAwsIpAddress,
      requiredListOfAwsIpAddress: requiredListOfAwsIpAddress,
      requiredListOfRequiredAwsIpAddress: requiredListOfRequiredAwsIpAddress,
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
  final List<String?>? listOfString;

  @override
  final List<String>? listOfRequiredString;

  @override
  final List<String?> requiredListOfString;

  @override
  final List<String> requiredListOfRequiredString;

  @override
  final List<int?>? listOfInteger;

  @override
  final List<int>? listOfRequiredInteger;

  @override
  final List<int?> requiredListOfInteger;

  @override
  final List<int> requiredListOfRequiredInteger;

  @override
  final List<double?>? listOfFloat;

  @override
  final List<double>? listOfRequiredFloat;

  @override
  final List<double?> requiredListOfFloat;

  @override
  final List<double> requiredListOfRequiredFloat;

  @override
  final List<bool?>? listOfBoolean;

  @override
  final List<bool>? listOfRequiredBoolean;

  @override
  final List<bool?> requiredListOfBoolean;

  @override
  final List<bool> requiredListOfRequiredBoolean;

  @override
  final List<TemporalDate?>? listOfAwsDate;

  @override
  final List<TemporalDate>? listOfRequiredAwsDate;

  @override
  final List<TemporalDate?> requiredListOfAwsDate;

  @override
  final List<TemporalDate> requiredListOfRequiredAwsDate;

  @override
  final List<TemporalDateTime?>? listOfAwsDateTime;

  @override
  final List<TemporalDateTime>? listOfRequiredAwsDateTime;

  @override
  final List<TemporalDateTime?> requiredListOfAwsDateTime;

  @override
  final List<TemporalDateTime> requiredListOfRequiredAwsDateTime;

  @override
  final List<TemporalTime?>? listOfAwsTime;

  @override
  final List<TemporalTime>? listOfRequiredAwsTime;

  @override
  final List<TemporalTime?> requiredListOfAwsTime;

  @override
  final List<TemporalTime> requiredListOfRequiredAwsTime;

  @override
  final List<TemporalTimestamp?>? listOfAwsTimestamp;

  @override
  final List<TemporalTimestamp>? listOfRequiredAwsTimestamp;

  @override
  final List<TemporalTimestamp?> requiredListOfAwsTimestamp;

  @override
  final List<TemporalTimestamp> requiredListOfRequiredAwsTimestamp;

  @override
  final List<String?>? listOfAwsEmail;

  @override
  final List<String>? listOfRequiredAwsEmail;

  @override
  final List<String?> requiredListOfAwsEmail;

  @override
  final List<String> requiredListOfRequiredAwsEmail;

  @override
  final List<Object?>? listOfAwsjson;

  @override
  final List<Object>? listOfRequiredAwsjson;

  @override
  final List<Object?> requiredListOfAwsjson;

  @override
  final List<Object> requiredListOfRequiredAwsjson;

  @override
  final List<String?>? listOfAwsPhone;

  @override
  final List<String>? listOfRequiredAwsPhone;

  @override
  final List<String?> requiredListOfAwsPhone;

  @override
  final List<String> requiredListOfRequiredAwsPhone;

  @override
  final List<Uri?>? listOfAwsUrl;

  @override
  final List<Uri>? listOfRequiredAwsUrl;

  @override
  final List<Uri?> requiredListOfAwsUrl;

  @override
  final List<Uri> requiredListOfRequiredAwsUrl;

  @override
  final List<String?>? listOfAwsIpAddress;

  @override
  final List<String>? listOfRequiredAwsIpAddress;

  @override
  final List<String?> requiredListOfAwsIpAddress;

  @override
  final List<String> requiredListOfRequiredAwsIpAddress;

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
