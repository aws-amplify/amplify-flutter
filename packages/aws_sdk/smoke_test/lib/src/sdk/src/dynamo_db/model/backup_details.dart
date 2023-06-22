// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required String backupName,
    _i2.Int64? backupSizeBytes,
    required _i3.BackupStatus backupStatus,
    required _i4.BackupType backupType,
    required DateTime backupCreationDateTime,
    DateTime? backupExpiryDateTime,
  }) {
    return _$BackupDetails._(
      backupArn: backupArn,
      backupName: backupName,
      backupSizeBytes: backupSizeBytes,
      backupStatus: backupStatus,
      backupType: backupType,
      backupCreationDateTime: backupCreationDateTime,
      backupExpiryDateTime: backupExpiryDateTime,
    );
  }

  /// Contains the details of the backup created for the table.
  factory BackupDetails.build([void Function(BackupDetailsBuilder) updates]) =
      _$BackupDetails;

  const BackupDetails._();

  static const List<_i5.SmithySerializer<BackupDetails>> serializers = [
    BackupDetailsAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BackupDetailsBuilder b) {}

  /// ARN associated with the backup.
  String get backupArn;

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

  /// Time at which the backup was created. This is the request time of the backup.
  DateTime get backupCreationDateTime;

  /// Time at which the automatic on-demand backup created by DynamoDB will expire. This `SYSTEM` on-demand backup expires automatically 35 days after its creation.
  DateTime? get backupExpiryDateTime;
  @override
  List<Object?> get props => [
        backupArn,
        backupName,
        backupSizeBytes,
        backupStatus,
        backupType,
        backupCreationDateTime,
        backupExpiryDateTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BackupDetails')
      ..add(
        'backupArn',
        backupArn,
      )
      ..add(
        'backupName',
        backupName,
      )
      ..add(
        'backupSizeBytes',
        backupSizeBytes,
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
        'backupCreationDateTime',
        backupCreationDateTime,
      )
      ..add(
        'backupExpiryDateTime',
        backupExpiryDateTime,
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
      if (value == null) {
        continue;
      }
      switch (key) {
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
        case 'BackupSizeBytes':
          result.backupSizeBytes = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'BackupStatus':
          result.backupStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.BackupStatus),
          ) as _i3.BackupStatus);
        case 'BackupType':
          result.backupType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.BackupType),
          ) as _i4.BackupType);
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BackupDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final BackupDetails(
      :backupArn,
      :backupName,
      :backupSizeBytes,
      :backupStatus,
      :backupType,
      :backupCreationDateTime,
      :backupExpiryDateTime
    ) = object;
    result$.addAll([
      'BackupArn',
      serializers.serialize(
        backupArn,
        specifiedType: const FullType(String),
      ),
      'BackupName',
      serializers.serialize(
        backupName,
        specifiedType: const FullType(String),
      ),
      'BackupStatus',
      serializers.serialize(
        backupStatus,
        specifiedType: const FullType(_i3.BackupStatus),
      ),
      'BackupType',
      serializers.serialize(
        backupType,
        specifiedType: const FullType(_i4.BackupType),
      ),
      'BackupCreationDateTime',
      serializers.serialize(
        backupCreationDateTime,
        specifiedType: const FullType(DateTime),
      ),
    ]);
    if (backupSizeBytes != null) {
      result$
        ..add('BackupSizeBytes')
        ..add(serializers.serialize(
          backupSizeBytes,
          specifiedType: const FullType(_i2.Int64),
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
    return result$;
  }
}
