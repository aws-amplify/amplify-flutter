// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.dns_options_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_record_ip_type.dart';

part 'dns_options_specification.g.dart';

/// Describes the DNS options for an endpoint.
abstract class DnsOptionsSpecification
    with _i1.AWSEquatable<DnsOptionsSpecification>
    implements Built<DnsOptionsSpecification, DnsOptionsSpecificationBuilder> {
  /// Describes the DNS options for an endpoint.
  factory DnsOptionsSpecification({
    DnsRecordIpType? dnsRecordIpType,
    bool? privateDnsOnlyForInboundResolverEndpoint,
  }) {
    privateDnsOnlyForInboundResolverEndpoint ??= false;
    return _$DnsOptionsSpecification._(
      dnsRecordIpType: dnsRecordIpType,
      privateDnsOnlyForInboundResolverEndpoint:
          privateDnsOnlyForInboundResolverEndpoint,
    );
  }

  /// Describes the DNS options for an endpoint.
  factory DnsOptionsSpecification.build(
          [void Function(DnsOptionsSpecificationBuilder) updates]) =
      _$DnsOptionsSpecification;

  const DnsOptionsSpecification._();

  static const List<_i2.SmithySerializer<DnsOptionsSpecification>> serializers =
      [DnsOptionsSpecificationEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DnsOptionsSpecificationBuilder b) {
    b.privateDnsOnlyForInboundResolverEndpoint = false;
  }

  /// The DNS records created for the endpoint.
  DnsRecordIpType? get dnsRecordIpType;

  /// Indicates whether to enable private DNS only for inbound endpoints. This option is available only for services that support both gateway and interface endpoints. It routes traffic that originates from the VPC to the gateway endpoint and traffic that originates from on-premises to the interface endpoint.
  bool get privateDnsOnlyForInboundResolverEndpoint;
  @override
  List<Object?> get props => [
        dnsRecordIpType,
        privateDnsOnlyForInboundResolverEndpoint,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DnsOptionsSpecification')
      ..add(
        'dnsRecordIpType',
        dnsRecordIpType,
      )
      ..add(
        'privateDnsOnlyForInboundResolverEndpoint',
        privateDnsOnlyForInboundResolverEndpoint,
      );
    return helper.toString();
  }
}

class DnsOptionsSpecificationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DnsOptionsSpecification> {
  const DnsOptionsSpecificationEc2QuerySerializer()
      : super('DnsOptionsSpecification');

  @override
  Iterable<Type> get types => const [
        DnsOptionsSpecification,
        _$DnsOptionsSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DnsOptionsSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DnsOptionsSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DnsRecordIpType':
          result.dnsRecordIpType = (serializers.deserialize(
            value,
            specifiedType: const FullType(DnsRecordIpType),
          ) as DnsRecordIpType);
        case 'PrivateDnsOnlyForInboundResolverEndpoint':
          result.privateDnsOnlyForInboundResolverEndpoint =
              (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DnsOptionsSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DnsOptionsSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DnsOptionsSpecification(
      :dnsRecordIpType,
      :privateDnsOnlyForInboundResolverEndpoint
    ) = object;
    if (dnsRecordIpType != null) {
      result$
        ..add(const _i2.XmlElementName('DnsRecordIpType'))
        ..add(serializers.serialize(
          dnsRecordIpType,
          specifiedType: const FullType(DnsRecordIpType),
        ));
    }
    result$
      ..add(
          const _i2.XmlElementName('PrivateDnsOnlyForInboundResolverEndpoint'))
      ..add(serializers.serialize(
        privateDnsOnlyForInboundResolverEndpoint,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
