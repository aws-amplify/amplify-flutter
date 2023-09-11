// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.dns_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_record_ip_type.dart';

part 'dns_options.g.dart';

/// Describes the DNS options for an endpoint.
abstract class DnsOptions
    with _i1.AWSEquatable<DnsOptions>
    implements Built<DnsOptions, DnsOptionsBuilder> {
  /// Describes the DNS options for an endpoint.
  factory DnsOptions({
    DnsRecordIpType? dnsRecordIpType,
    bool? privateDnsOnlyForInboundResolverEndpoint,
  }) {
    privateDnsOnlyForInboundResolverEndpoint ??= false;
    return _$DnsOptions._(
      dnsRecordIpType: dnsRecordIpType,
      privateDnsOnlyForInboundResolverEndpoint:
          privateDnsOnlyForInboundResolverEndpoint,
    );
  }

  /// Describes the DNS options for an endpoint.
  factory DnsOptions.build([void Function(DnsOptionsBuilder) updates]) =
      _$DnsOptions;

  const DnsOptions._();

  static const List<_i2.SmithySerializer<DnsOptions>> serializers = [
    DnsOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DnsOptionsBuilder b) {
    b.privateDnsOnlyForInboundResolverEndpoint = false;
  }

  /// The DNS records created for the endpoint.
  DnsRecordIpType? get dnsRecordIpType;

  /// Indicates whether to enable private DNS only for inbound endpoints.
  bool get privateDnsOnlyForInboundResolverEndpoint;
  @override
  List<Object?> get props => [
        dnsRecordIpType,
        privateDnsOnlyForInboundResolverEndpoint,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DnsOptions')
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

class DnsOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DnsOptions> {
  const DnsOptionsEc2QuerySerializer() : super('DnsOptions');

  @override
  Iterable<Type> get types => const [
        DnsOptions,
        _$DnsOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DnsOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DnsOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dnsRecordIpType':
          result.dnsRecordIpType = (serializers.deserialize(
            value,
            specifiedType: const FullType(DnsRecordIpType),
          ) as DnsRecordIpType);
        case 'privateDnsOnlyForInboundResolverEndpoint':
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
    DnsOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DnsOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DnsOptions(
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
