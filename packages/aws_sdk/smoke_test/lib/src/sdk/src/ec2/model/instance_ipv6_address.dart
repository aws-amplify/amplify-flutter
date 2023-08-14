// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_ipv6_address; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'instance_ipv6_address.g.dart';

/// Describes an IPv6 address.
abstract class InstanceIpv6Address
    with _i1.AWSEquatable<InstanceIpv6Address>
    implements Built<InstanceIpv6Address, InstanceIpv6AddressBuilder> {
  /// Describes an IPv6 address.
  factory InstanceIpv6Address({
    String? ipv6Address,
    bool? isPrimaryIpv6,
  }) {
    isPrimaryIpv6 ??= false;
    return _$InstanceIpv6Address._(
      ipv6Address: ipv6Address,
      isPrimaryIpv6: isPrimaryIpv6,
    );
  }

  /// Describes an IPv6 address.
  factory InstanceIpv6Address.build(
          [void Function(InstanceIpv6AddressBuilder) updates]) =
      _$InstanceIpv6Address;

  const InstanceIpv6Address._();

  static const List<_i2.SmithySerializer<InstanceIpv6Address>> serializers = [
    InstanceIpv6AddressEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceIpv6AddressBuilder b) {
    b.isPrimaryIpv6 = false;
  }

  /// The IPv6 address.
  String? get ipv6Address;

  /// Determines if an IPv6 address associated with a network interface is the primary IPv6 address. When you enable an IPv6 GUA address to be a primary IPv6, the first IPv6 GUA will be made the primary IPv6 address until the instance is terminated or the network interface is detached. For more information, see [RunInstances](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html).
  bool get isPrimaryIpv6;
  @override
  List<Object?> get props => [
        ipv6Address,
        isPrimaryIpv6,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceIpv6Address')
      ..add(
        'ipv6Address',
        ipv6Address,
      )
      ..add(
        'isPrimaryIpv6',
        isPrimaryIpv6,
      );
    return helper.toString();
  }
}

class InstanceIpv6AddressEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<InstanceIpv6Address> {
  const InstanceIpv6AddressEc2QuerySerializer() : super('InstanceIpv6Address');

  @override
  Iterable<Type> get types => const [
        InstanceIpv6Address,
        _$InstanceIpv6Address,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceIpv6Address deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceIpv6AddressBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipv6Address':
          result.ipv6Address = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'isPrimaryIpv6':
          result.isPrimaryIpv6 = (serializers.deserialize(
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
    InstanceIpv6Address object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InstanceIpv6AddressResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceIpv6Address(:ipv6Address, :isPrimaryIpv6) = object;
    if (ipv6Address != null) {
      result$
        ..add(const _i2.XmlElementName('Ipv6Address'))
        ..add(serializers.serialize(
          ipv6Address,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('IsPrimaryIpv6'))
      ..add(serializers.serialize(
        isPrimaryIpv6,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
