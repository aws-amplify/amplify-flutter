// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.list_backups_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_type_filter.dart'
    as _i3;

part 'list_backups_input.g.dart';

abstract class ListBackupsInput
    with _i1.HttpInput<ListBackupsInput>, _i2.AWSEquatable<ListBackupsInput>
    implements Built<ListBackupsInput, ListBackupsInputBuilder> {
  factory ListBackupsInput({
    _i3.BackupTypeFilter? backupType,
    String? exclusiveStartBackupArn,
    int? limit,
    String? tableName,
    DateTime? timeRangeLowerBound,
    DateTime? timeRangeUpperBound,
  }) {
    return _$ListBackupsInput._(
      backupType: backupType,
      exclusiveStartBackupArn: exclusiveStartBackupArn,
      limit: limit,
      tableName: tableName,
      timeRangeLowerBound: timeRangeLowerBound,
      timeRangeUpperBound: timeRangeUpperBound,
    );
  }

  factory ListBackupsInput.build(
      [void Function(ListBackupsInputBuilder) updates]) = _$ListBackupsInput;

  const ListBackupsInput._();

  factory ListBackupsInput.fromRequest(
    ListBackupsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ListBackupsInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListBackupsInputBuilder b) {}

  /// The backups from the table specified by `BackupType` are listed.
  ///
  /// Where `BackupType` can be:
  ///
  /// *   `USER` \- On-demand backup created by you. (The default setting if no other backup types are specified.)
  ///
  /// *   `SYSTEM` \- On-demand backup automatically created by DynamoDB.
  ///
  /// *   `ALL` \- All types of on-demand backups (USER and SYSTEM).
  _i3.BackupTypeFilter? get backupType;

  /// `LastEvaluatedBackupArn` is the Amazon Resource Name (ARN) of the backup last evaluated when the current page of results was returned, inclusive of the current page of results. This value may be specified as the `ExclusiveStartBackupArn` of a new `ListBackups` operation in order to fetch the next page of results.
  String? get exclusiveStartBackupArn;

  /// Maximum number of backups to return at once.
  int? get limit;

  /// The backups from the table specified by `TableName` are listed.
  String? get tableName;

  /// Only backups created after this time are listed. `TimeRangeLowerBound` is inclusive.
  DateTime? get timeRangeLowerBound;

  /// Only backups created before this time are listed. `TimeRangeUpperBound` is exclusive.
  DateTime? get timeRangeUpperBound;
  @override
  ListBackupsInput getPayload() => this;
  @override
  List<Object?> get props => [
        backupType,
        exclusiveStartBackupArn,
        limit,
        tableName,
        timeRangeLowerBound,
        timeRangeUpperBound,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListBackupsInput');
    helper.add(
      'backupType',
      backupType,
    );
    helper.add(
      'exclusiveStartBackupArn',
      exclusiveStartBackupArn,
    );
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'tableName',
      tableName,
    );
    helper.add(
      'timeRangeLowerBound',
      timeRangeLowerBound,
    );
    helper.add(
      'timeRangeUpperBound',
      timeRangeUpperBound,
    );
    return helper.toString();
  }
}

class ListBackupsInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<ListBackupsInput> {
  const ListBackupsInputAwsJson10Serializer() : super('ListBackupsInput');

  @override
  Iterable<Type> get types => const [
        ListBackupsInput,
        _$ListBackupsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ListBackupsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListBackupsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'BackupType':
          if (value != null) {
            result.backupType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.BackupTypeFilter),
            ) as _i3.BackupTypeFilter);
          }
          break;
        case 'ExclusiveStartBackupArn':
          if (value != null) {
            result.exclusiveStartBackupArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Limit':
          if (value != null) {
            result.limit = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'TableName':
          if (value != null) {
            result.tableName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TimeRangeLowerBound':
          if (value != null) {
            result.timeRangeLowerBound = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'TimeRangeUpperBound':
          if (value != null) {
            result.timeRangeUpperBound = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ListBackupsInput);
    final result = <Object?>[];
    if (payload.backupType != null) {
      result
        ..add('BackupType')
        ..add(serializers.serialize(
          payload.backupType!,
          specifiedType: const FullType(_i3.BackupTypeFilter),
        ));
    }
    if (payload.exclusiveStartBackupArn != null) {
      result
        ..add('ExclusiveStartBackupArn')
        ..add(serializers.serialize(
          payload.exclusiveStartBackupArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.limit != null) {
      result
        ..add('Limit')
        ..add(serializers.serialize(
          payload.limit!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.tableName != null) {
      result
        ..add('TableName')
        ..add(serializers.serialize(
          payload.tableName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.timeRangeLowerBound != null) {
      result
        ..add('TimeRangeLowerBound')
        ..add(serializers.serialize(
          payload.timeRangeLowerBound!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.timeRangeUpperBound != null) {
      result
        ..add('TimeRangeUpperBound')
        ..add(serializers.serialize(
          payload.timeRangeUpperBound!,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result;
  }
}
