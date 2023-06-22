// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.backup_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_status.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_type.dart' as _i3;

part 'backup_summary.g.dart';

/// Contains details for the backup.
abstract class BackupSummary
    with _i1.AWSEquatable<BackupSummary>
    implements Built<BackupSummary, BackupSummaryBuilder> {
  /// Contains details for the backup.
  factory BackupSummary({
    String? tableName,
    String? tableId,
    String? tableArn,
    String? backupArn,
    String? backupName,
    DateTime? backupCreationDateTime,
    DateTime? backupExpiryDateTime,
    _i2.BackupStatus? backupStatus,
    _i3.BackupType? backupType,
    _i4.Int64? backupSizeBytes,
  }) {
    return _$BackupSummary._(
      tableName: tableName,
      tableId: tableId,
      tableArn: tableArn,
      backupArn: backupArn,
      backupName: backupName,
      backupCreationDateTime: backupCreationDateTime,
      backupExpiryDateTime: backupExpiryDateTime,
      backupStatus: backupStatus,
      backupType: backupType,
      backupSizeBytes: backupSizeBytes,
    );
  }

  /// Contains details for the backup.
  factory BackupSummary.build([void Function(BackupSummaryBuilder) updates]) =
      _$BackupSummary;

  const BackupSummary._();

  static const List<_i5.SmithySerializer<BackupSummary>> serializers = [
    BackupSummaryAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BackupSummaryBuilder b) {}

  /// Name of the table.
  String? get tableName;

  /// Unique identifier for the table.
  String? get tableId;

  /// ARN associated with the table.
  String? get tableArn;

  /// ARN associated with the backup.
  String? get backupArn;

  /// Name of the specified backup.
  String? get backupName;

  /// Time at which the backup was created.
  DateTime? get backupCreationDateTime;

  /// Time at which the automatic on-demand backup created by DynamoDB will expire. This `SYSTEM` on-demand backup expires automatically 35 days after its creation.
  DateTime? get backupExpiryDateTime;

  /// Backup can be in one of the following states: CREATING, ACTIVE, DELETED.
  _i2.BackupStatus? get backupStatus;

  /// BackupType:
  ///
  /// *   `USER` \- You create and manage these using the on-demand backup feature.
  ///
  /// *   `SYSTEM` \- If you delete a table with point-in-time recovery enabled, a `SYSTEM` backup is automatically created and is retained for 35 days (at no additional cost). System backups allow you to restore the deleted table to the state it was in just before the point of deletion.
  ///
  /// *   `AWS_BACKUP` \- On-demand backup created by you from Backup service.
  _i3.BackupType? get backupType;

  /// Size of the backup in bytes.
  _i4.Int64? get backupSizeBytes;
  @override
  List<Object?> get props => [
        tableName,
        tableId,
        tableArn,
        backupArn,
        backupName,
        backupCreationDateTime,
        backupExpiryDateTime,
        backupStatus,
        backupType,
        backupSizeBytes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BackupSummary')
      ..add(
        'tableName',
        tableName,
      )
      ..add(
        'tableId',
        tableId,
      )
      ..add(
        'tableArn',
        tableArn,
      )
      ..add(
        'backupArn',
        backupArn,
      )
      ..add(
        'backupName',
        backupName,
      )
      ..add(
        'backupCreationDateTime',
        backupCreationDateTime,
      )
      ..add(
        'backupExpiryDateTime',
        backupExpiryDateTime,
      )
      ..add(
        'backupStatus',
        backupStatus,
      )
      ..add(
        'backupType',
        backupType,
      )
      ..add(
        'backupSizeBytes',
        backupSizeBytes,
      );
    return helper.toString();
  }
}

class BackupSummaryAwsJson10Serializer
    extends _i5.StructuredSmithySerializer<BackupSummary> {
  const BackupSummaryAwsJson10Serializer() : super('BackupSummary');

  @override
  Iterable<Type> get types => const [
        BackupSummary,
        _$BackupSummary,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  BackupSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BackupSummaryBuilder();
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
        case 'TableId':
          result.tableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TableArn':
          result.tableArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'BackupArn':
          result.backupArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'BackupName':
          result.backupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'BackupCreationDateTime':
          result.backupCreationDateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'BackupExpiryDateTime':
          result.backupExpiryDateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'BackupStatus':
          result.backupStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.BackupStatus),
          ) as _i2.BackupStatus);
        case 'BackupType':
          result.backupType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.BackupType),
          ) as _i3.BackupType);
        case 'BackupSizeBytes':
          result.backupSizeBytes = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.Int64),
          ) as _i4.Int64);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BackupSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final BackupSummary(
      :tableName,
      :tableId,
      :tableArn,
      :backupArn,
      :backupName,
      :backupCreationDateTime,
      :backupExpiryDateTime,
      :backupStatus,
      :backupType,
      :backupSizeBytes
    ) = object;
    if (tableName != null) {
      result$
        ..add('TableName')
        ..add(serializers.serialize(
          tableName,
          specifiedType: const FullType(String),
        ));
    }
    if (tableId != null) {
      result$
        ..add('TableId')
        ..add(serializers.serialize(
          tableId,
          specifiedType: const FullType(String),
        ));
    }
    if (tableArn != null) {
      result$
        ..add('TableArn')
        ..add(serializers.serialize(
          tableArn,
          specifiedType: const FullType(String),
        ));
    }
    if (backupArn != null) {
      result$
        ..add('BackupArn')
        ..add(serializers.serialize(
          backupArn,
          specifiedType: const FullType(String),
        ));
    }
    if (backupName != null) {
      result$
        ..add('BackupName')
        ..add(serializers.serialize(
          backupName,
          specifiedType: const FullType(String),
        ));
    }
    if (backupCreationDateTime != null) {
      result$
        ..add('BackupCreationDateTime')
        ..add(serializers.serialize(
          backupCreationDateTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (backupExpiryDateTime != null) {
      result$
        ..add('BackupExpiryDateTime')
        ..add(serializers.serialize(
          backupExpiryDateTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (backupStatus != null) {
      result$
        ..add('BackupStatus')
        ..add(serializers.serialize(
          backupStatus,
          specifiedType: const FullType(_i2.BackupStatus),
        ));
    }
    if (backupType != null) {
      result$
        ..add('BackupType')
        ..add(serializers.serialize(
          backupType,
          specifiedType: const FullType(_i3.BackupType),
        ));
    }
    if (backupSizeBytes != null) {
      result$
        ..add('BackupSizeBytes')
        ..add(serializers.serialize(
          backupSizeBytes,
          specifiedType: const FullType(_i4.Int64),
        ));
    }
    return result$;
  }
}
