// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.enable_vpc_classic_link_dns_support_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'enable_vpc_classic_link_dns_support_request.g.dart';

abstract class EnableVpcClassicLinkDnsSupportRequest
    with
        _i1.HttpInput<EnableVpcClassicLinkDnsSupportRequest>,
        _i2.AWSEquatable<EnableVpcClassicLinkDnsSupportRequest>
    implements
        Built<EnableVpcClassicLinkDnsSupportRequest,
            EnableVpcClassicLinkDnsSupportRequestBuilder> {
  factory EnableVpcClassicLinkDnsSupportRequest({String? vpcId}) {
    return _$EnableVpcClassicLinkDnsSupportRequest._(vpcId: vpcId);
  }

  factory EnableVpcClassicLinkDnsSupportRequest.build(
      [void Function(EnableVpcClassicLinkDnsSupportRequestBuilder)
          updates]) = _$EnableVpcClassicLinkDnsSupportRequest;

  const EnableVpcClassicLinkDnsSupportRequest._();

  factory EnableVpcClassicLinkDnsSupportRequest.fromRequest(
    EnableVpcClassicLinkDnsSupportRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<EnableVpcClassicLinkDnsSupportRequest>>
      serializers = [EnableVpcClassicLinkDnsSupportRequestEc2QuerySerializer()];

  /// The ID of the VPC.
  String? get vpcId;
  @override
  EnableVpcClassicLinkDnsSupportRequest getPayload() => this;
  @override
  List<Object?> get props => [vpcId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('EnableVpcClassicLinkDnsSupportRequest')
          ..add(
            'vpcId',
            vpcId,
          );
    return helper.toString();
  }
}

class EnableVpcClassicLinkDnsSupportRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<EnableVpcClassicLinkDnsSupportRequest> {
  const EnableVpcClassicLinkDnsSupportRequestEc2QuerySerializer()
      : super('EnableVpcClassicLinkDnsSupportRequest');

  @override
  Iterable<Type> get types => const [
        EnableVpcClassicLinkDnsSupportRequest,
        _$EnableVpcClassicLinkDnsSupportRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableVpcClassicLinkDnsSupportRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableVpcClassicLinkDnsSupportRequestBuilder();
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
    EnableVpcClassicLinkDnsSupportRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'EnableVpcClassicLinkDnsSupportRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnableVpcClassicLinkDnsSupportRequest(:vpcId) = object;
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
