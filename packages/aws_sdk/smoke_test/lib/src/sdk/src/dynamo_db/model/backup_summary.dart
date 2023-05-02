// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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

  static const List<_i5.SmithySerializer> serializers = [
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
    final helper = newBuiltValueToStringHelper('BackupSummary');
    helper.add(
      'tableName',
      tableName,
    );
    helper.add(
      'tableId',
      tableId,
    );
    helper.add(
      'tableArn',
      tableArn,
    );
    helper.add(
      'backupArn',
      backupArn,
    );
    helper.add(
      'backupName',
      backupName,
    );
    helper.add(
      'backupCreationDateTime',
      backupCreationDateTime,
    );
    helper.add(
      'backupExpiryDateTime',
      backupExpiryDateTime,
    );
    helper.add(
      'backupStatus',
      backupStatus,
    );
    helper.add(
      'backupType',
      backupType,
    );
    helper.add(
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
      switch (key) {
        case 'TableName':
          if (value != null) {
            result.tableName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TableId':
          if (value != null) {
            result.tableId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TableArn':
          if (value != null) {
            result.tableArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'BackupArn':
          if (value != null) {
            result.backupArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'BackupName':
          if (value != null) {
            result.backupName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'BackupCreationDateTime':
          if (value != null) {
            result.backupCreationDateTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'BackupExpiryDateTime':
          if (value != null) {
            result.backupExpiryDateTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'BackupStatus':
          if (value != null) {
            result.backupStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.BackupStatus),
            ) as _i2.BackupStatus);
          }
          break;
        case 'BackupType':
          if (value != null) {
            result.backupType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.BackupType),
            ) as _i3.BackupType);
          }
          break;
        case 'BackupSizeBytes':
          if (value != null) {
            result.backupSizeBytes = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.Int64),
            ) as _i4.Int64);
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
    final payload = (object as BackupSummary);
    final result = <Object?>[];
    if (payload.tableName != null) {
      result
        ..add('TableName')
        ..add(serializers.serialize(
          payload.tableName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tableId != null) {
      result
        ..add('TableId')
        ..add(serializers.serialize(
          payload.tableId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tableArn != null) {
      result
        ..add('TableArn')
        ..add(serializers.serialize(
          payload.tableArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.backupArn != null) {
      result
        ..add('BackupArn')
        ..add(serializers.serialize(
          payload.backupArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.backupName != null) {
      result
        ..add('BackupName')
        ..add(serializers.serialize(
          payload.backupName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.backupCreationDateTime != null) {
      result
        ..add('BackupCreationDateTime')
        ..add(serializers.serialize(
          payload.backupCreationDateTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.backupExpiryDateTime != null) {
      result
        ..add('BackupExpiryDateTime')
        ..add(serializers.serialize(
          payload.backupExpiryDateTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.backupStatus != null) {
      result
        ..add('BackupStatus')
        ..add(serializers.serialize(
          payload.backupStatus!,
          specifiedType: const FullType(_i2.BackupStatus),
        ));
    }
    if (payload.backupType != null) {
      result
        ..add('BackupType')
        ..add(serializers.serialize(
          payload.backupType!,
          specifiedType: const FullType(_i3.BackupType),
        ));
    }
    if (payload.backupSizeBytes != null) {
      result
        ..add('BackupSizeBytes')
        ..add(serializers.serialize(
          payload.backupSizeBytes!,
          specifiedType: const FullType(_i4.Int64),
        ));
    }
    return result;
  }
}
