// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_ipv4_prefix; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'instance_ipv4_prefix.g.dart';

/// Information about an IPv4 prefix.
abstract class InstanceIpv4Prefix
    with _i1.AWSEquatable<InstanceIpv4Prefix>
    implements Built<InstanceIpv4Prefix, InstanceIpv4PrefixBuilder> {
  /// Information about an IPv4 prefix.
  factory InstanceIpv4Prefix({String? ipv4Prefix}) {
    return _$InstanceIpv4Prefix._(ipv4Prefix: ipv4Prefix);
  }

  /// Information about an IPv4 prefix.
  factory InstanceIpv4Prefix.build(
          [void Function(InstanceIpv4PrefixBuilder) updates]) =
      _$InstanceIpv4Prefix;

  const InstanceIpv4Prefix._();

  static const List<_i2.SmithySerializer<InstanceIpv4Prefix>> serializers = [
    InstanceIpv4PrefixEc2QuerySerializer()
  ];

  /// One or more IPv4 prefixes assigned to the network interface.
  String? get ipv4Prefix;
  @override
  List<Object?> get props => [ipv4Prefix];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceIpv4Prefix')
      ..add(
        'ipv4Prefix',
        ipv4Prefix,
      );
    return helper.toString();
  }
}

class InstanceIpv4PrefixEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<InstanceIpv4Prefix> {
  const InstanceIpv4PrefixEc2QuerySerializer() : super('InstanceIpv4Prefix');

  @override
  Iterable<Type> get types => const [
        InstanceIpv4Prefix,
        _$InstanceIpv4Prefix,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceIpv4Prefix deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceIpv4PrefixBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipv4Prefix':
          result.ipv4Prefix = (serializers.deserialize(
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
    InstanceIpv4Prefix object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InstanceIpv4PrefixResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceIpv4Prefix(:ipv4Prefix) = object;
    if (ipv4Prefix != null) {
      result$
        ..add(const _i2.XmlElementName('Ipv4Prefix'))
        ..add(serializers.serialize(
          ipv4Prefix,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
