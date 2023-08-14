// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.verified_access_log_delivery_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_log_delivery_status_code.dart';

part 'verified_access_log_delivery_status.g.dart';

/// Describes a log delivery status.
abstract class VerifiedAccessLogDeliveryStatus
    with
        _i1.AWSEquatable<VerifiedAccessLogDeliveryStatus>
    implements
        Built<VerifiedAccessLogDeliveryStatus,
            VerifiedAccessLogDeliveryStatusBuilder> {
  /// Describes a log delivery status.
  factory VerifiedAccessLogDeliveryStatus({
    VerifiedAccessLogDeliveryStatusCode? code,
    String? message,
  }) {
    return _$VerifiedAccessLogDeliveryStatus._(
      code: code,
      message: message,
    );
  }

  /// Describes a log delivery status.
  factory VerifiedAccessLogDeliveryStatus.build(
          [void Function(VerifiedAccessLogDeliveryStatusBuilder) updates]) =
      _$VerifiedAccessLogDeliveryStatus;

  const VerifiedAccessLogDeliveryStatus._();

  static const List<_i2.SmithySerializer<VerifiedAccessLogDeliveryStatus>>
      serializers = [VerifiedAccessLogDeliveryStatusEc2QuerySerializer()];

  /// The status code.
  VerifiedAccessLogDeliveryStatusCode? get code;

  /// The status message.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('VerifiedAccessLogDeliveryStatus')
          ..add(
            'code',
            code,
          )
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class VerifiedAccessLogDeliveryStatusEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<VerifiedAccessLogDeliveryStatus> {
  const VerifiedAccessLogDeliveryStatusEc2QuerySerializer()
      : super('VerifiedAccessLogDeliveryStatus');

  @override
  Iterable<Type> get types => const [
        VerifiedAccessLogDeliveryStatus,
        _$VerifiedAccessLogDeliveryStatus,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VerifiedAccessLogDeliveryStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifiedAccessLogDeliveryStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'code':
          result.code = (serializers.deserialize(
            value,
            specifiedType: const FullType(VerifiedAccessLogDeliveryStatusCode),
          ) as VerifiedAccessLogDeliveryStatusCode);
        case 'message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VerifiedAccessLogDeliveryStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VerifiedAccessLogDeliveryStatusResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VerifiedAccessLogDeliveryStatus(:code, :message) = object;
    if (code != null) {
      result$
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          code,
          specifiedType:
              const FullType.nullable(VerifiedAccessLogDeliveryStatusCode),
        ));
    }
    if (message != null) {
      result$
        ..add(const _i2.XmlElementName('Message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
