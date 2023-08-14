// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_transit_gateway_vpc_attachment_request_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/appliance_mode_support_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/dns_support_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_support_value.dart';

part 'modify_transit_gateway_vpc_attachment_request_options.g.dart';

/// Describes the options for a VPC attachment.
abstract class ModifyTransitGatewayVpcAttachmentRequestOptions
    with
        _i1.AWSEquatable<ModifyTransitGatewayVpcAttachmentRequestOptions>
    implements
        Built<ModifyTransitGatewayVpcAttachmentRequestOptions,
            ModifyTransitGatewayVpcAttachmentRequestOptionsBuilder> {
  /// Describes the options for a VPC attachment.
  factory ModifyTransitGatewayVpcAttachmentRequestOptions({
    DnsSupportValue? dnsSupport,
    Ipv6SupportValue? ipv6Support,
    ApplianceModeSupportValue? applianceModeSupport,
  }) {
    return _$ModifyTransitGatewayVpcAttachmentRequestOptions._(
      dnsSupport: dnsSupport,
      ipv6Support: ipv6Support,
      applianceModeSupport: applianceModeSupport,
    );
  }

  /// Describes the options for a VPC attachment.
  factory ModifyTransitGatewayVpcAttachmentRequestOptions.build(
      [void Function(ModifyTransitGatewayVpcAttachmentRequestOptionsBuilder)
          updates]) = _$ModifyTransitGatewayVpcAttachmentRequestOptions;

  const ModifyTransitGatewayVpcAttachmentRequestOptions._();

  static const List<
          _i2.SmithySerializer<ModifyTransitGatewayVpcAttachmentRequestOptions>>
      serializers = [
    ModifyTransitGatewayVpcAttachmentRequestOptionsEc2QuerySerializer()
  ];

  /// Enable or disable DNS support. The default is `enable`.
  DnsSupportValue? get dnsSupport;

  /// Enable or disable IPv6 support. The default is `enable`.
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
        'ModifyTransitGatewayVpcAttachmentRequestOptions')
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

class ModifyTransitGatewayVpcAttachmentRequestOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        ModifyTransitGatewayVpcAttachmentRequestOptions> {
  const ModifyTransitGatewayVpcAttachmentRequestOptionsEc2QuerySerializer()
      : super('ModifyTransitGatewayVpcAttachmentRequestOptions');

  @override
  Iterable<Type> get types => const [
        ModifyTransitGatewayVpcAttachmentRequestOptions,
        _$ModifyTransitGatewayVpcAttachmentRequestOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyTransitGatewayVpcAttachmentRequestOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyTransitGatewayVpcAttachmentRequestOptionsBuilder();
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
    ModifyTransitGatewayVpcAttachmentRequestOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyTransitGatewayVpcAttachmentRequestOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyTransitGatewayVpcAttachmentRequestOptions(
      :dnsSupport,
      :ipv6Support,
      :applianceModeSupport
    ) = object;
    if (dnsSupport != null) {
      result$
        ..add(const _i2.XmlElementName('DnsSupport'))
        ..add(serializers.serialize(
          dnsSupport,
          specifiedType: const FullType.nullable(DnsSupportValue),
        ));
    }
    if (ipv6Support != null) {
      result$
        ..add(const _i2.XmlElementName('Ipv6Support'))
        ..add(serializers.serialize(
          ipv6Support,
          specifiedType: const FullType.nullable(Ipv6SupportValue),
        ));
    }
    if (applianceModeSupport != null) {
      result$
        ..add(const _i2.XmlElementName('ApplianceModeSupport'))
        ..add(serializers.serialize(
          applianceModeSupport,
          specifiedType: const FullType.nullable(ApplianceModeSupportValue),
        ));
    }
    return result$;
  }
}
