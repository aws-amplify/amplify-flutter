// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.sse_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/sse_type.dart' as _i2;

part 'sse_specification.g.dart';

/// Represents the settings used to enable server-side encryption.
abstract class SseSpecification
    with _i1.AWSEquatable<SseSpecification>
    implements Built<SseSpecification, SseSpecificationBuilder> {
  /// Represents the settings used to enable server-side encryption.
  factory SseSpecification({
    bool? enabled,
    String? kmsMasterKeyId,
    _i2.SseType? sseType,
  }) {
    return _$SseSpecification._(
      enabled: enabled,
      kmsMasterKeyId: kmsMasterKeyId,
      sseType: sseType,
    );
  }

  /// Represents the settings used to enable server-side encryption.
  factory SseSpecification.build(
      [void Function(SseSpecificationBuilder) updates]) = _$SseSpecification;

  const SseSpecification._();

  static const List<_i3.SmithySerializer> serializers = [
    SseSpecificationAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SseSpecificationBuilder b) {}

  /// Indicates whether server-side encryption is done using an Amazon Web Services managed key or an Amazon Web Services owned key. If enabled (true), server-side encryption type is set to `KMS` and an Amazon Web Services managed key is used (KMS charges apply). If disabled (false) or not specified, server-side encryption is set to Amazon Web Services owned key.
  bool? get enabled;

  /// The KMS key that should be used for the KMS encryption. To specify a key, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. Note that you should only provide this parameter if the key is different from the default DynamoDB key `alias/aws/dynamodb`.
  String? get kmsMasterKeyId;

  /// Server-side encryption type. The only supported value is:
  ///
  /// *   `KMS` \- Server-side encryption that uses Key Management Service. The key is stored in your account and is managed by KMS (KMS charges apply).
  _i2.SseType? get sseType;
  @override
  List<Object?> get props => [
        enabled,
        kmsMasterKeyId,
        sseType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SseSpecification');
    helper.add(
      'enabled',
      enabled,
    );
    helper.add(
      'kmsMasterKeyId',
      kmsMasterKeyId,
    );
    helper.add(
      'sseType',
      sseType,
    );
    return helper.toString();
  }
}

class SseSpecificationAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<SseSpecification> {
  const SseSpecificationAwsJson10Serializer() : super('SseSpecification');

  @override
  Iterable<Type> get types => const [
        SseSpecification,
        _$SseSpecification,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  SseSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SseSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Enabled':
          if (value != null) {
            result.enabled = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'KMSMasterKeyId':
          if (value != null) {
            result.kmsMasterKeyId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'SSEType':
          if (value != null) {
            result.sseType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.SseType),
            ) as _i2.SseType);
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
    final payload = (object as SseSpecification);
    final result = <Object?>[];
    if (payload.enabled != null) {
      result
        ..add('Enabled')
        ..add(serializers.serialize(
          payload.enabled!,
          specifiedType: const FullType(bool),
        ));
    }
    if (payload.kmsMasterKeyId != null) {
      result
        ..add('KMSMasterKeyId')
        ..add(serializers.serialize(
          payload.kmsMasterKeyId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.sseType != null) {
      result
        ..add('SSEType')
        ..add(serializers.serialize(
          payload.sseType!,
          specifiedType: const FullType(_i2.SseType),
        ));
    }
    return result;
  }
}
