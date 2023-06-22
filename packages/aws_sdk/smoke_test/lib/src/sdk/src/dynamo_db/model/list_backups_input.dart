// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    String? tableName,
    int? limit,
    DateTime? timeRangeLowerBound,
    DateTime? timeRangeUpperBound,
    String? exclusiveStartBackupArn,
    _i3.BackupTypeFilter? backupType,
  }) {
    return _$ListBackupsInput._(
      tableName: tableName,
      limit: limit,
      timeRangeLowerBound: timeRangeLowerBound,
      timeRangeUpperBound: timeRangeUpperBound,
      exclusiveStartBackupArn: exclusiveStartBackupArn,
      backupType: backupType,
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

  static const List<_i1.SmithySerializer<ListBackupsInput>> serializers = [
    ListBackupsInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListBackupsInputBuilder b) {}

  /// The backups from the table specified by `TableName` are listed.
  String? get tableName;

  /// Maximum number of backups to return at once.
  int? get limit;

  /// Only backups created after this time are listed. `TimeRangeLowerBound` is inclusive.
  DateTime? get timeRangeLowerBound;

  /// Only backups created before this time are listed. `TimeRangeUpperBound` is exclusive.
  DateTime? get timeRangeUpperBound;

  /// `LastEvaluatedBackupArn` is the Amazon Resource Name (ARN) of the backup last evaluated when the current page of results was returned, inclusive of the current page of results. This value may be specified as the `ExclusiveStartBackupArn` of a new `ListBackups` operation in order to fetch the next page of results.
  String? get exclusiveStartBackupArn;

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
  @override
  ListBackupsInput getPayload() => this;
  @override
  List<Object?> get props => [
        tableName,
        limit,
        timeRangeLowerBound,
        timeRangeUpperBound,
        exclusiveStartBackupArn,
        backupType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListBackupsInput')
      ..add(
        'tableName',
        tableName,
      )
      ..add(
        'limit',
        limit,
      )
      ..add(
        'timeRangeLowerBound',
        timeRangeLowerBound,
      )
      ..add(
        'timeRangeUpperBound',
        timeRangeUpperBound,
      )
      ..add(
        'exclusiveStartBackupArn',
        exclusiveStartBackupArn,
      )
      ..add(
        'backupType',
        backupType,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'TimeRangeLowerBound':
          result.timeRangeLowerBound = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'TimeRangeUpperBound':
          result.timeRangeUpperBound = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'ExclusiveStartBackupArn':
          result.exclusiveStartBackupArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'BackupType':
          result.backupType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.BackupTypeFilter),
          ) as _i3.BackupTypeFilter);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListBackupsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ListBackupsInput(
      :tableName,
      :limit,
      :timeRangeLowerBound,
      :timeRangeUpperBound,
      :exclusiveStartBackupArn,
      :backupType
    ) = object;
    if (tableName != null) {
      result$
        ..add('TableName')
        ..add(serializers.serialize(
          tableName,
          specifiedType: const FullType(String),
        ));
    }
    if (limit != null) {
      result$
        ..add('Limit')
        ..add(serializers.serialize(
          limit,
          specifiedType: const FullType(int),
        ));
    }
    if (timeRangeLowerBound != null) {
      result$
        ..add('TimeRangeLowerBound')
        ..add(serializers.serialize(
          timeRangeLowerBound,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (timeRangeUpperBound != null) {
      result$
        ..add('TimeRangeUpperBound')
        ..add(serializers.serialize(
          timeRangeUpperBound,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (exclusiveStartBackupArn != null) {
      result$
        ..add('ExclusiveStartBackupArn')
        ..add(serializers.serialize(
          exclusiveStartBackupArn,
          specifiedType: const FullType(String),
        ));
    }
    if (backupType != null) {
      result$
        ..add('BackupType')
        ..add(serializers.serialize(
          backupType,
          specifiedType: const FullType(_i3.BackupTypeFilter),
        ));
    }
    return result$;
  }
}
