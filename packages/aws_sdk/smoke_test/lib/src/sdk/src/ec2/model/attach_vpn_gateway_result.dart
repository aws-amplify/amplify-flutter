// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.attach_vpn_gateway_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_attachment.dart';

part 'attach_vpn_gateway_result.g.dart';

/// Contains the output of AttachVpnGateway.
abstract class AttachVpnGatewayResult
    with _i1.AWSEquatable<AttachVpnGatewayResult>
    implements Built<AttachVpnGatewayResult, AttachVpnGatewayResultBuilder> {
  /// Contains the output of AttachVpnGateway.
  factory AttachVpnGatewayResult({VpcAttachment? vpcAttachment}) {
    return _$AttachVpnGatewayResult._(vpcAttachment: vpcAttachment);
  }

  /// Contains the output of AttachVpnGateway.
  factory AttachVpnGatewayResult.build(
          [void Function(AttachVpnGatewayResultBuilder) updates]) =
      _$AttachVpnGatewayResult;

  const AttachVpnGatewayResult._();

  /// Constructs a [AttachVpnGatewayResult] from a [payload] and [response].
  factory AttachVpnGatewayResult.fromResponse(
    AttachVpnGatewayResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<AttachVpnGatewayResult>> serializers =
      [AttachVpnGatewayResultEc2QuerySerializer()];

  /// Information about the attachment.
  VpcAttachment? get vpcAttachment;
  @override
  List<Object?> get props => [vpcAttachment];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AttachVpnGatewayResult')
      ..add(
        'vpcAttachment',
        vpcAttachment,
      );
    return helper.toString();
  }
}

class AttachVpnGatewayResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AttachVpnGatewayResult> {
  const AttachVpnGatewayResultEc2QuerySerializer()
      : super('AttachVpnGatewayResult');

  @override
  Iterable<Type> get types => const [
        AttachVpnGatewayResult,
        _$AttachVpnGatewayResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AttachVpnGatewayResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttachVpnGatewayResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'attachment':
          result.vpcAttachment.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VpcAttachment),
          ) as VpcAttachment));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AttachVpnGatewayResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AttachVpnGatewayResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AttachVpnGatewayResult(:vpcAttachment) = object;
    if (vpcAttachment != null) {
      result$
        ..add(const _i2.XmlElementName('Attachment'))
        ..add(serializers.serialize(
          vpcAttachment,
          specifiedType: const FullType(VpcAttachment),
        ));
    }
    return result$;
  }
}
