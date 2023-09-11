// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.subnet_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'subnet_configuration.g.dart';

/// Describes the configuration of a subnet for a VPC endpoint.
abstract class SubnetConfiguration
    with _i1.AWSEquatable<SubnetConfiguration>
    implements Built<SubnetConfiguration, SubnetConfigurationBuilder> {
  /// Describes the configuration of a subnet for a VPC endpoint.
  factory SubnetConfiguration({
    String? subnetId,
    String? ipv4,
    String? ipv6,
  }) {
    return _$SubnetConfiguration._(
      subnetId: subnetId,
      ipv4: ipv4,
      ipv6: ipv6,
    );
  }

  /// Describes the configuration of a subnet for a VPC endpoint.
  factory SubnetConfiguration.build(
          [void Function(SubnetConfigurationBuilder) updates]) =
      _$SubnetConfiguration;

  const SubnetConfiguration._();

  static const List<_i2.SmithySerializer<SubnetConfiguration>> serializers = [
    SubnetConfigurationEc2QuerySerializer()
  ];

  /// The ID of the subnet.
  String? get subnetId;

  /// The IPv4 address to assign to the endpoint network interface in the subnet. You must provide an IPv4 address if the VPC endpoint supports IPv4.
  ///
  /// If you specify an IPv4 address when modifying a VPC endpoint, we replace the existing endpoint network interface with a new endpoint network interface with this IP address. This process temporarily disconnects the subnet and the VPC endpoint.
  String? get ipv4;

  /// The IPv6 address to assign to the endpoint network interface in the subnet. You must provide an IPv6 address if the VPC endpoint supports IPv6.
  ///
  /// If you specify an IPv6 address when modifying a VPC endpoint, we replace the existing endpoint network interface with a new endpoint network interface with this IP address. This process temporarily disconnects the subnet and the VPC endpoint.
  String? get ipv6;
  @override
  List<Object?> get props => [
        subnetId,
        ipv4,
        ipv6,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SubnetConfiguration')
      ..add(
        'subnetId',
        subnetId,
      )
      ..add(
        'ipv4',
        ipv4,
      )
      ..add(
        'ipv6',
        ipv6,
      );
    return helper.toString();
  }
}

class SubnetConfigurationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SubnetConfiguration> {
  const SubnetConfigurationEc2QuerySerializer() : super('SubnetConfiguration');

  @override
  Iterable<Type> get types => const [
        SubnetConfiguration,
        _$SubnetConfiguration,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SubnetConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubnetConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SubnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Ipv4':
          result.ipv4 = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Ipv6':
          result.ipv6 = (serializers.deserialize(
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
    SubnetConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SubnetConfigurationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SubnetConfiguration(:subnetId, :ipv4, :ipv6) = object;
    if (subnetId != null) {
      result$
        ..add(const _i2.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    if (ipv4 != null) {
      result$
        ..add(const _i2.XmlElementName('Ipv4'))
        ..add(serializers.serialize(
          ipv4,
          specifiedType: const FullType(String),
        ));
    }
    if (ipv6 != null) {
      result$
        ..add(const _i2.XmlElementName('Ipv6'))
        ..add(serializers.serialize(
          ipv6,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
