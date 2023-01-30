// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.backup_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_status.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_type.dart' as _i4;

part 'backup_summary.g.dart';

/// Contains details for the backup.
abstract class BackupSummary
    with _i1.AWSEquatable<BackupSummary>
    implements Built<BackupSummary, BackupSummaryBuilder> {
  /// Contains details for the backup.
  factory BackupSummary({
    String? backupArn,
    DateTime? backupCreationDateTime,
    DateTime? backupExpiryDateTime,
    String? backupName,
    _i2.Int64? backupSizeBytes,
    _i3.BackupStatus? backupStatus,
    _i4.BackupType? backupType,
    String? tableArn,
    String? tableId,
    String? tableName,
  }) {
    return _$BackupSummary._(
      backupArn: backupArn,
      backupCreationDateTime: backupCreationDateTime,
      backupExpiryDateTime: backupExpiryDateTime,
      backupName: backupName,
      backupSizeBytes: backupSizeBytes,
      backupStatus: backupStatus,
      backupType: backupType,
      tableArn: tableArn,
      tableId: tableId,
      tableName: tableName,
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

  /// ARN associated with the backup.
  String? get backupArn;

  /// Time at which the backup was created.
  DateTime? get backupCreationDateTime;

  /// Time at which the automatic on-demand backup created by DynamoDB will expire. This `SYSTEM` on-demand backup expires automatically 35 days after its creation.
  DateTime? get backupExpiryDateTime;

  /// Name of the specified backup.
  String? get backupName;

  /// Size of the backup in bytes.
  _i2.Int64? get backupSizeBytes;

  /// Backup can be in one of the following states: CREATING, ACTIVE, DELETED.
  _i3.BackupStatus? get backupStatus;

  /// BackupType:
  ///
  /// *   `USER` \- You create and manage these using the on-demand backup feature.
  ///
  /// *   `SYSTEM` \- If you delete a table with point-in-time recovery enabled, a `SYSTEM` backup is automatically created and is retained for 35 days (at no additional cost). System backups allow you to restore the deleted table to the state it was in just before the point of deletion.
  ///
  /// *   `AWS_BACKUP` \- On-demand backup created by you from Backup service.
  _i4.BackupType? get backupType;

  /// ARN associated with the table.
  String? get tableArn;

  /// Unique identifier for the table.
  String? get tableId;

  /// Name of the table.
  String? get tableName;
  @override
  List<Object?> get props => [
        backupArn,
        backupCreationDateTime,
        backupExpiryDateTime,
        backupName,
        backupSizeBytes,
        backupStatus,
        backupType,
        tableArn,
        tableId,
        tableName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BackupSummary');
    helper.add(
      'backupArn',
      backupArn,
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
      'backupName',
      backupName,
    );
    helper.add(
      'backupSizeBytes',
      backupSizeBytes,
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
      'tableArn',
      tableArn,
    );
    helper.add(
      'tableId',
      tableId,
    );
    helper.add(
      'tableName',
      tableName,
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
        case 'BackupArn':
          if (value != null) {
            result.backupArn = (serializers.deserialize(
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
        case 'BackupName':
          if (value != null) {
            result.backupName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'BackupSizeBytes':
          if (value != null) {
            result.backupSizeBytes = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
          }
          break;
        case 'BackupStatus':
          if (value != null) {
            result.backupStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.BackupStatus),
            ) as _i3.BackupStatus);
          }
          break;
        case 'BackupType':
          if (value != null) {
            result.backupType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.BackupType),
            ) as _i4.BackupType);
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
        case 'TableId':
          if (value != null) {
            result.tableId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    if (payload.backupArn != null) {
      result
        ..add('BackupArn')
        ..add(serializers.serialize(
          payload.backupArn!,
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
    if (payload.backupName != null) {
      result
        ..add('BackupName')
        ..add(serializers.serialize(
          payload.backupName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.backupSizeBytes != null) {
      result
        ..add('BackupSizeBytes')
        ..add(serializers.serialize(
          payload.backupSizeBytes!,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (payload.backupStatus != null) {
      result
        ..add('BackupStatus')
        ..add(serializers.serialize(
          payload.backupStatus!,
          specifiedType: const FullType(_i3.BackupStatus),
        ));
    }
    if (payload.backupType != null) {
      result
        ..add('BackupType')
        ..add(serializers.serialize(
          payload.backupType!,
          specifiedType: const FullType(_i4.BackupType),
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
    if (payload.tableId != null) {
      result
        ..add('TableId')
        ..add(serializers.serialize(
          payload.tableId!,
          specifiedType: const FullType(String),
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
    return result;
  }
}
