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

library models.temporal_time_model;

import 'package:amplify_core/amplify_core.dart';

class TemporalTimeModelType
    extends ModelType<String, TemporalTimeModel, PartialTemporalTimeModel> {
  const TemporalTimeModelType();

  @override
  T fromJson<T extends PartialModel<String, TemporalTimeModel>>(
    Map<String, Object?> json,
  ) {
    if (T == TemporalTimeModel || T == Model<String, TemporalTimeModel>) {
      return TemporalTimeModel.fromJson(json) as T;
    }
    if (T == RemoteTemporalTimeModel ||
        T == RemoteModel<String, TemporalTimeModel>) {
      return _RemoteTemporalTimeModel.fromJson(json) as T;
    }
    return _PartialTemporalTimeModel.fromJson(json) as T;
  }

  @override
  String get modelName => 'TemporalTimeModel';
}

class TemporalTimeModelQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const TemporalTimeModelQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, TemporalTimeModel>? _root;

  /// Query field for the [TemporalTimeModel.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, TemporalTimeModel, String>(
        const QueryField<String, TemporalTimeModel, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [TemporalTimeModel.date] field.
  QueryField<ModelIdentifier, M, TemporalDate?> get $date => NestedQueryField<
          ModelIdentifier, M, String, TemporalTimeModel, TemporalDate?>(
        const QueryField<String, TemporalTimeModel, TemporalDate?>(
          fieldName: 'date',
        ),
        root: _root,
      );

  /// Query field for the [TemporalTimeModel.time] field.
  QueryField<ModelIdentifier, M, TemporalTime?> get $time => NestedQueryField<
          ModelIdentifier, M, String, TemporalTimeModel, TemporalTime?>(
        const QueryField<String, TemporalTimeModel, TemporalTime?>(
          fieldName: 'time',
        ),
        root: _root,
      );

  /// Query field for the [TemporalTimeModel.dateTime] field.
  QueryField<ModelIdentifier, M, TemporalDateTime?> get $dateTime =>
      NestedQueryField<ModelIdentifier, M, String, TemporalTimeModel,
          TemporalDateTime?>(
        const QueryField<String, TemporalTimeModel, TemporalDateTime?>(
          fieldName: 'dateTime',
        ),
        root: _root,
      );

  /// Query field for the [TemporalTimeModel.timestamp] field.
  QueryField<ModelIdentifier, M, TemporalTimestamp?> get $timestamp =>
      NestedQueryField<ModelIdentifier, M, String, TemporalTimeModel,
          TemporalTimestamp?>(
        const QueryField<String, TemporalTimeModel, TemporalTimestamp?>(
          fieldName: 'timestamp',
        ),
        root: _root,
      );

  /// Query field for the [TemporalTimeModel.intNum] field.
  QueryField<ModelIdentifier, M, int?> get $intNum =>
      NestedQueryField<ModelIdentifier, M, String, TemporalTimeModel, int?>(
        const QueryField<String, TemporalTimeModel, int?>(fieldName: 'intNum'),
        root: _root,
      );

  /// Query field for the [TemporalTimeModel.dateList] field.
  QueryField<ModelIdentifier, M, TemporalDate?> get $dateList =>
      NestedQueryField<ModelIdentifier, M, String, TemporalTimeModel,
          TemporalDate?>(
        const QueryField<String, TemporalTimeModel, TemporalDate?>(
          fieldName: 'dateList',
        ),
        root: _root,
      );

  /// Query field for the [TemporalTimeModel.timeList] field.
  QueryField<ModelIdentifier, M, TemporalTime?> get $timeList =>
      NestedQueryField<ModelIdentifier, M, String, TemporalTimeModel,
          TemporalTime?>(
        const QueryField<String, TemporalTimeModel, TemporalTime?>(
          fieldName: 'timeList',
        ),
        root: _root,
      );

  /// Query field for the [TemporalTimeModel.dateTimeList] field.
  QueryField<ModelIdentifier, M, TemporalDateTime?> get $dateTimeList =>
      NestedQueryField<ModelIdentifier, M, String, TemporalTimeModel,
          TemporalDateTime?>(
        const QueryField<String, TemporalTimeModel, TemporalDateTime?>(
          fieldName: 'dateTimeList',
        ),
        root: _root,
      );

  /// Query field for the [TemporalTimeModel.timestampList] field.
  QueryField<ModelIdentifier, M, TemporalTimestamp?> get $timestampList =>
      NestedQueryField<ModelIdentifier, M, String, TemporalTimeModel,
          TemporalTimestamp?>(
        const QueryField<String, TemporalTimeModel, TemporalTimestamp?>(
          fieldName: 'timestampList',
        ),
        root: _root,
      );

  /// Query field for the [TemporalTimeModel.intList] field.
  QueryField<ModelIdentifier, M, int?> get $intList =>
      NestedQueryField<ModelIdentifier, M, String, TemporalTimeModel, int?>(
        const QueryField<String, TemporalTimeModel, int?>(fieldName: 'intList'),
        root: _root,
      );

  /// Query field for the [TemporalTimeModel.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, TemporalTimeModel,
          TemporalDateTime>(
        const QueryField<String, TemporalTimeModel, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [TemporalTimeModel.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, TemporalTimeModel,
          TemporalDateTime>(
        const QueryField<String, TemporalTimeModel, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [TemporalTimeModel] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, TemporalTimeModel, String>(
        const QueryField<String, TemporalTimeModel, String>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialTemporalTimeModel
    extends PartialModel<String, TemporalTimeModel>
    with AWSEquatable<PartialTemporalTimeModel> {
  const PartialTemporalTimeModel._();

  String get id;
  TemporalDate? get date;
  TemporalTime? get time;
  TemporalDateTime? get dateTime;
  TemporalTimestamp? get timestamp;
  int? get intNum;
  List<TemporalDate?>? get dateList;
  List<TemporalTime?>? get timeList;
  List<TemporalDateTime?>? get dateTimeList;
  List<TemporalTimestamp?>? get timestampList;
  List<int?>? get intList;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  TemporalTimeModelType get modelType => TemporalTimeModel.classType;
  @override
  List<Object?> get props => [
        id,
        date,
        time,
        dateTime,
        timestamp,
        intNum,
        dateList,
        timeList,
        dateTimeList,
        timestampList,
        intList,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'date': date?.format(),
        'time': time?.format(),
        'dateTime': dateTime?.format(),
        'timestamp': timestamp?.toSeconds(),
        'intNum': intNum,
        'dateList': dateList?.map((el) => el?.format()).toList(),
        'timeList': timeList?.map((el) => el?.format()).toList(),
        'dateTimeList': dateTimeList?.map((el) => el?.format()).toList(),
        'timestampList': timestampList?.map((el) => el?.toSeconds()).toList(),
        'intList': intList,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'TemporalTimeModel';
}

class _PartialTemporalTimeModel extends PartialTemporalTimeModel {
  const _PartialTemporalTimeModel({
    required this.id,
    this.date,
    this.time,
    this.dateTime,
    this.timestamp,
    this.intNum,
    this.dateList,
    this.timeList,
    this.dateTimeList,
    this.timestampList,
    this.intList,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialTemporalTimeModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'TemporalTimeModel',
            'id',
          ))
        : (json['id'] as String);
    final date = json['date'] == null
        ? null
        : TemporalDate.fromString((json['date'] as String));
    final time = json['time'] == null
        ? null
        : TemporalTime.fromString((json['time'] as String));
    final dateTime = json['dateTime'] == null
        ? null
        : TemporalDateTime.fromString((json['dateTime'] as String));
    final timestamp = json['timestamp'] == null
        ? null
        : TemporalTimestamp.fromSeconds((json['timestamp'] as int));
    final intNum = json['intNum'] == null ? null : (json['intNum'] as int);
    final dateList = json['dateList'] == null
        ? null
        : (json['dateList'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDate.fromString(el))
            .toList();
    final timeList = json['timeList'] == null
        ? null
        : (json['timeList'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalTime.fromString(el))
            .toList();
    final dateTimeList = json['dateTimeList'] == null
        ? null
        : (json['dateTimeList'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDateTime.fromString(el))
            .toList();
    final timestampList = json['timestampList'] == null
        ? null
        : (json['timestampList'] as List<Object?>)
            .cast<int?>()
            .map((el) => el == null ? null : TemporalTimestamp.fromSeconds(el))
            .toList();
    final intList = json['intList'] == null
        ? null
        : (json['intList'] as List<Object?>).cast<int?>().toList();
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialTemporalTimeModel(
      id: id,
      date: date,
      time: time,
      dateTime: dateTime,
      timestamp: timestamp,
      intNum: intNum,
      dateList: dateList,
      timeList: timeList,
      dateTimeList: dateTimeList,
      timestampList: timestampList,
      intList: intList,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String id;

  @override
  final TemporalDate? date;

  @override
  final TemporalTime? time;

  @override
  final TemporalDateTime? dateTime;

  @override
  final TemporalTimestamp? timestamp;

  @override
  final int? intNum;

  @override
  final List<TemporalDate?>? dateList;

  @override
  final List<TemporalTime?>? timeList;

  @override
  final List<TemporalDateTime?>? dateTimeList;

  @override
  final List<TemporalTimestamp?>? timestampList;

  @override
  final List<int?>? intList;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class TemporalTimeModel extends PartialTemporalTimeModel
    implements Model<String, TemporalTimeModel> {
  factory TemporalTimeModel({
    String? id,
    DateTime? date,
    DateTime? time,
    DateTime? dateTime,
    DateTime? timestamp,
    int? intNum,
    List<TemporalDate?>? dateList,
    List<TemporalTime?>? timeList,
    List<TemporalDateTime?>? dateTimeList,
    List<TemporalTimestamp?>? timestampList,
    List<int?>? intList,
  }) = _TemporalTimeModel;

  const TemporalTimeModel._() : super._();

  factory TemporalTimeModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'TemporalTimeModel',
            'id',
          ))
        : (json['id'] as String);
    final date = json['date'] == null
        ? null
        : TemporalDate.fromString((json['date'] as String));
    final time = json['time'] == null
        ? null
        : TemporalTime.fromString((json['time'] as String));
    final dateTime = json['dateTime'] == null
        ? null
        : TemporalDateTime.fromString((json['dateTime'] as String));
    final timestamp = json['timestamp'] == null
        ? null
        : TemporalTimestamp.fromSeconds((json['timestamp'] as int));
    final intNum = json['intNum'] == null ? null : (json['intNum'] as int);
    final dateList = json['dateList'] == null
        ? null
        : (json['dateList'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDate.fromString(el))
            .toList();
    final timeList = json['timeList'] == null
        ? null
        : (json['timeList'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalTime.fromString(el))
            .toList();
    final dateTimeList = json['dateTimeList'] == null
        ? null
        : (json['dateTimeList'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDateTime.fromString(el))
            .toList();
    final timestampList = json['timestampList'] == null
        ? null
        : (json['timestampList'] as List<Object?>)
            .cast<int?>()
            .map((el) => el == null ? null : TemporalTimestamp.fromSeconds(el))
            .toList();
    final intList = json['intList'] == null
        ? null
        : (json['intList'] as List<Object?>).cast<int?>().toList();
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'TemporalTimeModel',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'TemporalTimeModel',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _TemporalTimeModel._(
      id: id,
      date: date,
      time: time,
      dateTime: dateTime,
      timestamp: timestamp,
      intNum: intNum,
      dateList: dateList,
      timeList: timeList,
      dateTimeList: dateTimeList,
      timestampList: timestampList,
      intList: intList,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const TemporalTimeModelType classType = TemporalTimeModelType();

  static const TemporalTimeModelQueryFields<String, TemporalTimeModel>
      _queryFields = TemporalTimeModelQueryFields();

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, TemporalTimeModel, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, TemporalTimeModel, String> get ID => $id;
  @override
  TemporalDate? get date;

  /// Query field for the [date] field.
  QueryField<String, TemporalTimeModel, TemporalDate?> get $date =>
      _queryFields.$date;

  /// Query field for the [date] field.
  @Deprecated(r'Use $date instead')
  QueryField<String, TemporalTimeModel, TemporalDate?> get DATE => $date;
  @override
  TemporalTime? get time;

  /// Query field for the [time] field.
  QueryField<String, TemporalTimeModel, TemporalTime?> get $time =>
      _queryFields.$time;

  /// Query field for the [time] field.
  @Deprecated(r'Use $time instead')
  QueryField<String, TemporalTimeModel, TemporalTime?> get TIME => $time;
  @override
  TemporalDateTime? get dateTime;

  /// Query field for the [dateTime] field.
  QueryField<String, TemporalTimeModel, TemporalDateTime?> get $dateTime =>
      _queryFields.$dateTime;

  /// Query field for the [dateTime] field.
  @Deprecated(r'Use $dateTime instead')
  QueryField<String, TemporalTimeModel, TemporalDateTime?> get DATE_TIME =>
      $dateTime;
  @override
  TemporalTimestamp? get timestamp;

  /// Query field for the [timestamp] field.
  QueryField<String, TemporalTimeModel, TemporalTimestamp?> get $timestamp =>
      _queryFields.$timestamp;

  /// Query field for the [timestamp] field.
  @Deprecated(r'Use $timestamp instead')
  QueryField<String, TemporalTimeModel, TemporalTimestamp?> get TIMESTAMP =>
      $timestamp;
  @override
  int? get intNum;

  /// Query field for the [intNum] field.
  QueryField<String, TemporalTimeModel, int?> get $intNum =>
      _queryFields.$intNum;

  /// Query field for the [intNum] field.
  @Deprecated(r'Use $intNum instead')
  QueryField<String, TemporalTimeModel, int?> get INT_NUM => $intNum;
  @override
  List<TemporalDate?>? get dateList;

  /// Query field for the [dateList] field.
  QueryField<String, TemporalTimeModel, TemporalDate?> get $dateList =>
      _queryFields.$dateList;

  /// Query field for the [dateList] field.
  @Deprecated(r'Use $dateList instead')
  QueryField<String, TemporalTimeModel, TemporalDate?> get DATE_LIST =>
      $dateList;
  @override
  List<TemporalTime?>? get timeList;

  /// Query field for the [timeList] field.
  QueryField<String, TemporalTimeModel, TemporalTime?> get $timeList =>
      _queryFields.$timeList;

  /// Query field for the [timeList] field.
  @Deprecated(r'Use $timeList instead')
  QueryField<String, TemporalTimeModel, TemporalTime?> get TIME_LIST =>
      $timeList;
  @override
  List<TemporalDateTime?>? get dateTimeList;

  /// Query field for the [dateTimeList] field.
  QueryField<String, TemporalTimeModel, TemporalDateTime?> get $dateTimeList =>
      _queryFields.$dateTimeList;

  /// Query field for the [dateTimeList] field.
  @Deprecated(r'Use $dateTimeList instead')
  QueryField<String, TemporalTimeModel, TemporalDateTime?> get DATE_TIME_LIST =>
      $dateTimeList;
  @override
  List<TemporalTimestamp?>? get timestampList;

  /// Query field for the [timestampList] field.
  QueryField<String, TemporalTimeModel, TemporalTimestamp?>
      get $timestampList => _queryFields.$timestampList;

  /// Query field for the [timestampList] field.
  @Deprecated(r'Use $timestampList instead')
  QueryField<String, TemporalTimeModel, TemporalTimestamp?>
      get TIMESTAMP_LIST => $timestampList;
  @override
  List<int?>? get intList;

  /// Query field for the [intList] field.
  QueryField<String, TemporalTimeModel, int?> get $intList =>
      _queryFields.$intList;

  /// Query field for the [intList] field.
  @Deprecated(r'Use $intList instead')
  QueryField<String, TemporalTimeModel, int?> get INT_LIST => $intList;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, TemporalTimeModel, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, TemporalTimeModel, String> get MODEL_IDENTIFIER =>
      $modelIdentifier;
  TemporalTimeModel copyWith({
    String? id,
    DateTime? date,
    DateTime? time,
    DateTime? dateTime,
    DateTime? timestamp,
    int? intNum,
    List<TemporalDate?>? dateList,
    List<TemporalTime?>? timeList,
    List<TemporalDateTime?>? dateTimeList,
    List<TemporalTimestamp?>? timestampList,
    List<int?>? intList,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return _TemporalTimeModel._(
      id: id ?? this.id,
      date: date == null ? this.date : TemporalDate(date),
      time: time == null ? this.time : TemporalTime(time),
      dateTime: dateTime == null ? this.dateTime : TemporalDateTime(dateTime),
      timestamp:
          timestamp == null ? this.timestamp : TemporalTimestamp(timestamp),
      intNum: intNum ?? this.intNum,
      dateList: dateList ?? this.dateList,
      timeList: timeList ?? this.timeList,
      dateTimeList: dateTimeList ?? this.dateTimeList,
      timestampList: timestampList ?? this.timestampList,
      intList: intList ?? this.intList,
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
    );
  }

  @override
  T valueFor<T extends Object?>(
    QueryField<String, TemporalTimeModel, T> field,
  ) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'date':
        value = date;
        break;
      case r'time':
        value = time;
        break;
      case r'dateTime':
        value = dateTime;
        break;
      case r'timestamp':
        value = timestamp;
        break;
      case r'intNum':
        value = intNum;
        break;
      case r'dateList':
        value = dateList;
        break;
      case r'timeList':
        value = timeList;
        break;
      case r'dateTimeList':
        value = dateTimeList;
        break;
      case r'timestampList':
        value = timestampList;
        break;
      case r'intList':
        value = intList;
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

class _TemporalTimeModel extends TemporalTimeModel {
  _TemporalTimeModel({
    String? id,
    DateTime? date,
    DateTime? time,
    DateTime? dateTime,
    DateTime? timestamp,
    this.intNum,
    this.dateList,
    this.timeList,
    this.dateTimeList,
    this.timestampList,
    this.intList,
  })  : id = id ?? uuid(),
        date = date == null ? null : TemporalDate(date),
        time = time == null ? null : TemporalTime(time),
        dateTime = dateTime == null ? null : TemporalDateTime(dateTime),
        timestamp = timestamp == null ? null : TemporalTimestamp(timestamp),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _TemporalTimeModel._({
    required this.id,
    this.date,
    this.time,
    this.dateTime,
    this.timestamp,
    this.intNum,
    this.dateList,
    this.timeList,
    this.dateTimeList,
    this.timestampList,
    this.intList,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String id;

  @override
  final TemporalDate? date;

  @override
  final TemporalTime? time;

  @override
  final TemporalDateTime? dateTime;

  @override
  final TemporalTimestamp? timestamp;

  @override
  final int? intNum;

  @override
  final List<TemporalDate?>? dateList;

  @override
  final List<TemporalTime?>? timeList;

  @override
  final List<TemporalDateTime?>? dateTimeList;

  @override
  final List<TemporalTimestamp?>? timestampList;

  @override
  final List<int?>? intList;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemoteTemporalTimeModel extends TemporalTimeModel
    implements RemoteModel<String, TemporalTimeModel> {
  const RemoteTemporalTimeModel._() : super._();
}

class _RemoteTemporalTimeModel extends RemoteTemporalTimeModel {
  const _RemoteTemporalTimeModel({
    required this.id,
    this.date,
    this.time,
    this.dateTime,
    this.timestamp,
    this.intNum,
    this.dateList,
    this.timeList,
    this.dateTimeList,
    this.timestampList,
    this.intList,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteTemporalTimeModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'TemporalTimeModel',
            'id',
          ))
        : (json['id'] as String);
    final date = json['date'] == null
        ? null
        : TemporalDate.fromString((json['date'] as String));
    final time = json['time'] == null
        ? null
        : TemporalTime.fromString((json['time'] as String));
    final dateTime = json['dateTime'] == null
        ? null
        : TemporalDateTime.fromString((json['dateTime'] as String));
    final timestamp = json['timestamp'] == null
        ? null
        : TemporalTimestamp.fromSeconds((json['timestamp'] as int));
    final intNum = json['intNum'] == null ? null : (json['intNum'] as int);
    final dateList = json['dateList'] == null
        ? null
        : (json['dateList'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDate.fromString(el))
            .toList();
    final timeList = json['timeList'] == null
        ? null
        : (json['timeList'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalTime.fromString(el))
            .toList();
    final dateTimeList = json['dateTimeList'] == null
        ? null
        : (json['dateTimeList'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDateTime.fromString(el))
            .toList();
    final timestampList = json['timestampList'] == null
        ? null
        : (json['timestampList'] as List<Object?>)
            .cast<int?>()
            .map((el) => el == null ? null : TemporalTimestamp.fromSeconds(el))
            .toList();
    final intList = json['intList'] == null
        ? null
        : (json['intList'] as List<Object?>).cast<int?>().toList();
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'TemporalTimeModel',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'TemporalTimeModel',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'TemporalTimeModel',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'TemporalTimeModel',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'TemporalTimeModel',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteTemporalTimeModel(
      id: id,
      date: date,
      time: time,
      dateTime: dateTime,
      timestamp: timestamp,
      intNum: intNum,
      dateList: dateList,
      timeList: timeList,
      dateTimeList: dateTimeList,
      timestampList: timestampList,
      intList: intList,
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
  final TemporalDate? date;

  @override
  final TemporalTime? time;

  @override
  final TemporalDateTime? dateTime;

  @override
  final TemporalTimestamp? timestamp;

  @override
  final int? intNum;

  @override
  final List<TemporalDate?>? dateList;

  @override
  final List<TemporalTime?>? timeList;

  @override
  final List<TemporalDateTime?>? dateTimeList;

  @override
  final List<TemporalTimestamp?>? timestampList;

  @override
  final List<int?>? intList;

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
