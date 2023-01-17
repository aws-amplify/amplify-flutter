// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.backup_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_status.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_type.dart' as _i4;

part 'backup_details.g.dart';

/// Contains the details of the backup created for the table.
abstract class BackupDetails
    with _i1.AWSEquatable<BackupDetails>
    implements Built<BackupDetails, BackupDetailsBuilder> {
  /// Contains the details of the backup created for the table.
  factory BackupDetails({
    required String backupArn,
    required DateTime backupCreationDateTime,
    DateTime? backupExpiryDateTime,
    required String backupName,
    _i2.Int64? backupSizeBytes,
    required _i3.BackupStatus backupStatus,
    required _i4.BackupType backupType,
  }) {
    return _$BackupDetails._(
      backupArn: backupArn,
      backupCreationDateTime: backupCreationDateTime,
      backupExpiryDateTime: backupExpiryDateTime,
      backupName: backupName,
      backupSizeBytes: backupSizeBytes,
      backupStatus: backupStatus,
      backupType: backupType,
    );
  }

  /// Contains the details of the backup created for the table.
  factory BackupDetails.build([void Function(BackupDetailsBuilder) updates]) =
      _$BackupDetails;

  const BackupDetails._();

  static const List<_i5.SmithySerializer> serializers = [
    BackupDetailsAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BackupDetailsBuilder b) {}

  /// ARN associated with the backup.
  String get backupArn;

  /// Time at which the backup was created. This is the request time of the backup.
  DateTime get backupCreationDateTime;

  /// Time at which the automatic on-demand backup created by DynamoDB will expire. This `SYSTEM` on-demand backup expires automatically 35 days after its creation.
  DateTime? get backupExpiryDateTime;

  /// Name of the requested backup.
  String get backupName;

  /// Size of the backup in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.
  _i2.Int64? get backupSizeBytes;

  /// Backup can be in one of the following states: CREATING, ACTIVE, DELETED.
  _i3.BackupStatus get backupStatus;

  /// BackupType:
  ///
  /// *   `USER` \- You create and manage these using the on-demand backup feature.
  ///
  /// *   `SYSTEM` \- If you delete a table with point-in-time recovery enabled, a `SYSTEM` backup is automatically created and is retained for 35 days (at no additional cost). System backups allow you to restore the deleted table to the state it was in just before the point of deletion.
  ///
  /// *   `AWS_BACKUP` \- On-demand backup created by you from Backup service.
  _i4.BackupType get backupType;
  @override
  List<Object?> get props => [
        backupArn,
        backupCreationDateTime,
        backupExpiryDateTime,
        backupName,
        backupSizeBytes,
        backupStatus,
        backupType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BackupDetails');
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
    return helper.toString();
  }
}

class BackupDetailsAwsJson10Serializer
    extends _i5.StructuredSmithySerializer<BackupDetails> {
  const BackupDetailsAwsJson10Serializer() : super('BackupDetails');

  @override
  Iterable<Type> get types => const [
        BackupDetails,
        _$BackupDetails,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  BackupDetails deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BackupDetailsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'BackupArn':
          result.backupArn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'BackupCreationDateTime':
          result.backupCreationDateTime = (serializers.deserialize(
            value!,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
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
          result.backupName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
          result.backupStatus = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.BackupStatus),
          ) as _i3.BackupStatus);
          break;
        case 'BackupType':
          result.backupType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i4.BackupType),
          ) as _i4.BackupType);
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
    final payload = (object as BackupDetails);
    final result = <Object?>[
      'BackupArn',
      serializers.serialize(
        payload.backupArn,
        specifiedType: const FullType(String),
      ),
      'BackupCreationDateTime',
      serializers.serialize(
        payload.backupCreationDateTime,
        specifiedType: const FullType(DateTime),
      ),
      'BackupName',
      serializers.serialize(
        payload.backupName,
        specifiedType: const FullType(String),
      ),
      'BackupStatus',
      serializers.serialize(
        payload.backupStatus,
        specifiedType: const FullType(_i3.BackupStatus),
      ),
      'BackupType',
      serializers.serialize(
        payload.backupType,
        specifiedType: const FullType(_i4.BackupType),
      ),
    ];
    if (payload.backupExpiryDateTime != null) {
      result
        ..add('BackupExpiryDateTime')
        ..add(serializers.serialize(
          payload.backupExpiryDateTime!,
          specifiedType: const FullType(DateTime),
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
    return result;
  }
}
