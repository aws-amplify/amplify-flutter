// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_transit_gateway_vpc_attachment_request_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/appliance_mode_support_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/dns_support_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_support_value.dart';

part 'create_transit_gateway_vpc_attachment_request_options.g.dart';

/// Describes the options for a VPC attachment.
abstract class CreateTransitGatewayVpcAttachmentRequestOptions
    with
        _i1.AWSEquatable<CreateTransitGatewayVpcAttachmentRequestOptions>
    implements
        Built<CreateTransitGatewayVpcAttachmentRequestOptions,
            CreateTransitGatewayVpcAttachmentRequestOptionsBuilder> {
  /// Describes the options for a VPC attachment.
  factory CreateTransitGatewayVpcAttachmentRequestOptions({
    DnsSupportValue? dnsSupport,
    Ipv6SupportValue? ipv6Support,
    ApplianceModeSupportValue? applianceModeSupport,
  }) {
    return _$CreateTransitGatewayVpcAttachmentRequestOptions._(
      dnsSupport: dnsSupport,
      ipv6Support: ipv6Support,
      applianceModeSupport: applianceModeSupport,
    );
  }

  /// Describes the options for a VPC attachment.
  factory CreateTransitGatewayVpcAttachmentRequestOptions.build(
      [void Function(CreateTransitGatewayVpcAttachmentRequestOptionsBuilder)
          updates]) = _$CreateTransitGatewayVpcAttachmentRequestOptions;

  const CreateTransitGatewayVpcAttachmentRequestOptions._();

  static const List<
          _i2.SmithySerializer<CreateTransitGatewayVpcAttachmentRequestOptions>>
      serializers = [
    CreateTransitGatewayVpcAttachmentRequestOptionsEc2QuerySerializer()
  ];

  /// Enable or disable DNS support. The default is `enable`.
  DnsSupportValue? get dnsSupport;

  /// Enable or disable IPv6 support. The default is `disable`.
  Ipv6SupportValue? get ipv6Support;

  /// Enable or disable support for appliance mode. If enabled, a traffic flow between a source and destination uses the same Availability Zone for the VPC attachment for the lifetime of that flow. The default is `disable`.
  ApplianceModeSupportValue? get applianceModeSupport;
  @override
  List<Object?> get props => [
        dnsSupport,
        ipv6Support,
        applianceModeSupport,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateTransitGatewayVpcAttachmentRequestOptions')
      ..add(
        'dnsSupport',
        dnsSupport,
      )
      ..add(
        'ipv6Support',
        ipv6Support,
      )
      ..add(
        'applianceModeSupport',
        applianceModeSupport,
      );
    return helper.toString();
  }
}

class CreateTransitGatewayVpcAttachmentRequestOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        CreateTransitGatewayVpcAttachmentRequestOptions> {
  const CreateTransitGatewayVpcAttachmentRequestOptionsEc2QuerySerializer()
      : super('CreateTransitGatewayVpcAttachmentRequestOptions');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayVpcAttachmentRequestOptions,
        _$CreateTransitGatewayVpcAttachmentRequestOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayVpcAttachmentRequestOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayVpcAttachmentRequestOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DnsSupport':
          result.dnsSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(DnsSupportValue),
          ) as DnsSupportValue);
        case 'Ipv6Support':
          result.ipv6Support = (serializers.deserialize(
            value,
            specifiedType: const FullType(Ipv6SupportValue),
          ) as Ipv6SupportValue);
        case 'ApplianceModeSupport':
          result.applianceModeSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(ApplianceModeSupportValue),
          ) as ApplianceModeSupportValue);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateTransitGatewayVpcAttachmentRequestOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateTransitGatewayVpcAttachmentRequestOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTransitGatewayVpcAttachmentRequestOptions(
      :dnsSupport,
      :ipv6Support,
      :applianceModeSupport
    ) = object;
    if (dnsSupport != null) {
      result$
        ..add(const _i2.XmlElementName('DnsSupport'))
        ..add(serializers.serialize(
          dnsSupport,
          specifiedType: const FullType(DnsSupportValue),
        ));
    }
    if (ipv6Support != null) {
      result$
        ..add(const _i2.XmlElementName('Ipv6Support'))
        ..add(serializers.serialize(
          ipv6Support,
          specifiedType: const FullType(Ipv6SupportValue),
        ));
    }
    if (applianceModeSupport != null) {
      result$
        ..add(const _i2.XmlElementName('ApplianceModeSupport'))
        ..add(serializers.serialize(
          applianceModeSupport,
          specifiedType: const FullType(ApplianceModeSupportValue),
        ));
    }
    return result$;
  }
}
