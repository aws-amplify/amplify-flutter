// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disable_vpc_classic_link_dns_support_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'disable_vpc_classic_link_dns_support_request.g.dart';

abstract class DisableVpcClassicLinkDnsSupportRequest
    with
        _i1.HttpInput<DisableVpcClassicLinkDnsSupportRequest>,
        _i2.AWSEquatable<DisableVpcClassicLinkDnsSupportRequest>
    implements
        Built<DisableVpcClassicLinkDnsSupportRequest,
            DisableVpcClassicLinkDnsSupportRequestBuilder> {
  factory DisableVpcClassicLinkDnsSupportRequest({String? vpcId}) {
    return _$DisableVpcClassicLinkDnsSupportRequest._(vpcId: vpcId);
  }

  factory DisableVpcClassicLinkDnsSupportRequest.build(
      [void Function(DisableVpcClassicLinkDnsSupportRequestBuilder)
          updates]) = _$DisableVpcClassicLinkDnsSupportRequest;

  const DisableVpcClassicLinkDnsSupportRequest._();

  factory DisableVpcClassicLinkDnsSupportRequest.fromRequest(
    DisableVpcClassicLinkDnsSupportRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DisableVpcClassicLinkDnsSupportRequest>>
      serializers = [
    DisableVpcClassicLinkDnsSupportRequestEc2QuerySerializer()
  ];

  /// The ID of the VPC.
  String? get vpcId;
  @override
  DisableVpcClassicLinkDnsSupportRequest getPayload() => this;
  @override
  List<Object?> get props => [vpcId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisableVpcClassicLinkDnsSupportRequest')
          ..add(
            'vpcId',
            vpcId,
          );
    return helper.toString();
  }
}

class DisableVpcClassicLinkDnsSupportRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DisableVpcClassicLinkDnsSupportRequest> {
  const DisableVpcClassicLinkDnsSupportRequestEc2QuerySerializer()
      : super('DisableVpcClassicLinkDnsSupportRequest');

  @override
  Iterable<Type> get types => const [
        DisableVpcClassicLinkDnsSupportRequest,
        _$DisableVpcClassicLinkDnsSupportRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisableVpcClassicLinkDnsSupportRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisableVpcClassicLinkDnsSupportRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'VpcId':
          result.vpcId = (serializers.deserialize(
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
    DisableVpcClassicLinkDnsSupportRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DisableVpcClassicLinkDnsSupportRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisableVpcClassicLinkDnsSupportRequest(:vpcId) = object;
    if (vpcId != null) {
      result$
        ..add(const _i1.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
