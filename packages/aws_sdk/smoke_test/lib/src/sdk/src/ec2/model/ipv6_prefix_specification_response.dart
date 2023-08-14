// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipv6_prefix_specification_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ipv6_prefix_specification_response.g.dart';

/// Information about the IPv6 delegated prefixes assigned to a network interface.
abstract class Ipv6PrefixSpecificationResponse
    with
        _i1.AWSEquatable<Ipv6PrefixSpecificationResponse>
    implements
        Built<Ipv6PrefixSpecificationResponse,
            Ipv6PrefixSpecificationResponseBuilder> {
  /// Information about the IPv6 delegated prefixes assigned to a network interface.
  factory Ipv6PrefixSpecificationResponse({String? ipv6Prefix}) {
    return _$Ipv6PrefixSpecificationResponse._(ipv6Prefix: ipv6Prefix);
  }

  /// Information about the IPv6 delegated prefixes assigned to a network interface.
  factory Ipv6PrefixSpecificationResponse.build(
          [void Function(Ipv6PrefixSpecificationResponseBuilder) updates]) =
      _$Ipv6PrefixSpecificationResponse;

  const Ipv6PrefixSpecificationResponse._();

  static const List<_i2.SmithySerializer<Ipv6PrefixSpecificationResponse>>
      serializers = [Ipv6PrefixSpecificationResponseEc2QuerySerializer()];

  /// The IPv6 delegated prefixes assigned to the network interface.
  String? get ipv6Prefix;
  @override
  List<Object?> get props => [ipv6Prefix];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('Ipv6PrefixSpecificationResponse')
          ..add(
            'ipv6Prefix',
            ipv6Prefix,
          );
    return helper.toString();
  }
}

class Ipv6PrefixSpecificationResponseEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<Ipv6PrefixSpecificationResponse> {
  const Ipv6PrefixSpecificationResponseEc2QuerySerializer()
      : super('Ipv6PrefixSpecificationResponse');

  @override
  Iterable<Type> get types => const [
        Ipv6PrefixSpecificationResponse,
        _$Ipv6PrefixSpecificationResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Ipv6PrefixSpecificationResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Ipv6PrefixSpecificationResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipv6Prefix':
          result.ipv6Prefix = (serializers.deserialize(
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
    Ipv6PrefixSpecificationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'Ipv6PrefixSpecificationResponseResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Ipv6PrefixSpecificationResponse(:ipv6Prefix) = object;
    if (ipv6Prefix != null) {
      result$
        ..add(const _i2.XmlElementName('Ipv6Prefix'))
        ..add(serializers.serialize(
          ipv6Prefix,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
