// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.sse_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/sse_status.dart' as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/sse_type.dart' as _i3;

part 'sse_description.g.dart';

/// The description of the server-side encryption status on the specified table.
abstract class SseDescription
    with _i1.AWSEquatable<SseDescription>
    implements Built<SseDescription, SseDescriptionBuilder> {
  /// The description of the server-side encryption status on the specified table.
  factory SseDescription({
    _i2.SseStatus? status,
    _i3.SseType? sseType,
    String? kmsMasterKeyArn,
    DateTime? inaccessibleEncryptionDateTime,
  }) {
    return _$SseDescription._(
      status: status,
      sseType: sseType,
      kmsMasterKeyArn: kmsMasterKeyArn,
      inaccessibleEncryptionDateTime: inaccessibleEncryptionDateTime,
    );
  }

  /// The description of the server-side encryption status on the specified table.
  factory SseDescription.build([void Function(SseDescriptionBuilder) updates]) =
      _$SseDescription;

  const SseDescription._();

  static const List<_i4.SmithySerializer> serializers = [
    SseDescriptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SseDescriptionBuilder b) {}

  /// Represents the current state of server-side encryption. The only supported values are:
  ///
  /// *   `ENABLED` \- Server-side encryption is enabled.
  ///
  /// *   `UPDATING` \- Server-side encryption is being updated.
  _i2.SseStatus? get status;

  /// Server-side encryption type. The only supported value is:
  ///
  /// *   `KMS` \- Server-side encryption that uses Key Management Service. The key is stored in your account and is managed by KMS (KMS charges apply).
  _i3.SseType? get sseType;

  /// The KMS key ARN used for the KMS encryption.
  String? get kmsMasterKeyArn;

  /// Indicates the time, in UNIX epoch date format, when DynamoDB detected that the table's KMS key was inaccessible. This attribute will automatically be cleared when DynamoDB detects that the table's KMS key is accessible again. DynamoDB will initiate the table archival process when table's KMS key remains inaccessible for more than seven days from this date.
  DateTime? get inaccessibleEncryptionDateTime;
  @override
  List<Object?> get props => [
        status,
        sseType,
        kmsMasterKeyArn,
        inaccessibleEncryptionDateTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SseDescription');
    helper.add(
      'status',
      status,
    );
    helper.add(
      'sseType',
      sseType,
    );
    helper.add(
      'kmsMasterKeyArn',
      kmsMasterKeyArn,
    );
    helper.add(
      'inaccessibleEncryptionDateTime',
      inaccessibleEncryptionDateTime,
    );
    return helper.toString();
  }
}

class SseDescriptionAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<SseDescription> {
  const SseDescriptionAwsJson10Serializer() : super('SseDescription');

  @override
  Iterable<Type> get types => const [
        SseDescription,
        _$SseDescription,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  SseDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SseDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.SseStatus),
            ) as _i2.SseStatus);
          }
          break;
        case 'SSEType':
          if (value != null) {
            result.sseType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.SseType),
            ) as _i3.SseType);
          }
          break;
        case 'KMSMasterKeyArn':
          if (value != null) {
            result.kmsMasterKeyArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'InaccessibleEncryptionDateTime':
          if (value != null) {
            result.inaccessibleEncryptionDateTime = (serializers.deserialize(
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
    final payload = (object as SseDescription);
    final result = <Object?>[];
    if (payload.status != null) {
      result
        ..add('Status')
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType(_i2.SseStatus),
        ));
    }
    if (payload.sseType != null) {
      result
        ..add('SSEType')
        ..add(serializers.serialize(
          payload.sseType!,
          specifiedType: const FullType(_i3.SseType),
        ));
    }
    if (payload.kmsMasterKeyArn != null) {
      result
        ..add('KMSMasterKeyArn')
        ..add(serializers.serialize(
          payload.kmsMasterKeyArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.inaccessibleEncryptionDateTime != null) {
      result
        ..add('InaccessibleEncryptionDateTime')
        ..add(serializers.serialize(
          payload.inaccessibleEncryptionDateTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result;
  }
}
