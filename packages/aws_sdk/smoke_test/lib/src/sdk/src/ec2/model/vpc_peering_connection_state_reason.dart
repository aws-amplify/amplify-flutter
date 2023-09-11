// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.vpc_peering_connection_state_reason; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_peering_connection_state_reason_code.dart';

part 'vpc_peering_connection_state_reason.g.dart';

/// Describes the status of a VPC peering connection.
abstract class VpcPeeringConnectionStateReason
    with
        _i1.AWSEquatable<VpcPeeringConnectionStateReason>
    implements
        Built<VpcPeeringConnectionStateReason,
            VpcPeeringConnectionStateReasonBuilder> {
  /// Describes the status of a VPC peering connection.
  factory VpcPeeringConnectionStateReason({
    VpcPeeringConnectionStateReasonCode? code,
    String? message,
  }) {
    return _$VpcPeeringConnectionStateReason._(
      code: code,
      message: message,
    );
  }

  /// Describes the status of a VPC peering connection.
  factory VpcPeeringConnectionStateReason.build(
          [void Function(VpcPeeringConnectionStateReasonBuilder) updates]) =
      _$VpcPeeringConnectionStateReason;

  const VpcPeeringConnectionStateReason._();

  static const List<_i2.SmithySerializer<VpcPeeringConnectionStateReason>>
      serializers = [VpcPeeringConnectionStateReasonEc2QuerySerializer()];

  /// The status of the VPC peering connection.
  VpcPeeringConnectionStateReasonCode? get code;

  /// A message that provides more information about the status, if applicable.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('VpcPeeringConnectionStateReason')
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

class VpcPeeringConnectionStateReasonEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<VpcPeeringConnectionStateReason> {
  const VpcPeeringConnectionStateReasonEc2QuerySerializer()
      : super('VpcPeeringConnectionStateReason');

  @override
  Iterable<Type> get types => const [
        VpcPeeringConnectionStateReason,
        _$VpcPeeringConnectionStateReason,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpcPeeringConnectionStateReason deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpcPeeringConnectionStateReasonBuilder();
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
            specifiedType: const FullType(VpcPeeringConnectionStateReasonCode),
          ) as VpcPeeringConnectionStateReasonCode);
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
    VpcPeeringConnectionStateReason object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VpcPeeringConnectionStateReasonResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VpcPeeringConnectionStateReason(:code, :message) = object;
    if (code != null) {
      result$
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          code,
          specifiedType: const FullType(VpcPeeringConnectionStateReasonCode),
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
