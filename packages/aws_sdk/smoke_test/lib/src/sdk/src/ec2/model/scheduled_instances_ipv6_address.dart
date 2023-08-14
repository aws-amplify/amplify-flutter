// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.scheduled_instances_ipv6_address; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'scheduled_instances_ipv6_address.g.dart';

/// Describes an IPv6 address.
abstract class ScheduledInstancesIpv6Address
    with
        _i1.AWSEquatable<ScheduledInstancesIpv6Address>
    implements
        Built<ScheduledInstancesIpv6Address,
            ScheduledInstancesIpv6AddressBuilder> {
  /// Describes an IPv6 address.
  factory ScheduledInstancesIpv6Address({String? ipv6Address}) {
    return _$ScheduledInstancesIpv6Address._(ipv6Address: ipv6Address);
  }

  /// Describes an IPv6 address.
  factory ScheduledInstancesIpv6Address.build(
          [void Function(ScheduledInstancesIpv6AddressBuilder) updates]) =
      _$ScheduledInstancesIpv6Address;

  const ScheduledInstancesIpv6Address._();

  static const List<_i2.SmithySerializer<ScheduledInstancesIpv6Address>>
      serializers = [ScheduledInstancesIpv6AddressEc2QuerySerializer()];

  /// The IPv6 address.
  String? get ipv6Address;
  @override
  List<Object?> get props => [ipv6Address];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ScheduledInstancesIpv6Address')
      ..add(
        'ipv6Address',
        ipv6Address,
      );
    return helper.toString();
  }
}

class ScheduledInstancesIpv6AddressEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ScheduledInstancesIpv6Address> {
  const ScheduledInstancesIpv6AddressEc2QuerySerializer()
      : super('ScheduledInstancesIpv6Address');

  @override
  Iterable<Type> get types => const [
        ScheduledInstancesIpv6Address,
        _$ScheduledInstancesIpv6Address,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ScheduledInstancesIpv6Address deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledInstancesIpv6AddressBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Ipv6Address':
          result.ipv6Address = (serializers.deserialize(
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
    ScheduledInstancesIpv6Address object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ScheduledInstancesIpv6AddressResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ScheduledInstancesIpv6Address(:ipv6Address) = object;
    if (ipv6Address != null) {
      result$
        ..add(const _i2.XmlElementName('Ipv6Address'))
        ..add(serializers.serialize(
          ipv6Address,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
