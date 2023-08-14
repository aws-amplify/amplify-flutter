// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipv4_prefix_specification_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ipv4_prefix_specification_response.g.dart';

/// Information about the IPv4 delegated prefixes assigned to a network interface.
abstract class Ipv4PrefixSpecificationResponse
    with
        _i1.AWSEquatable<Ipv4PrefixSpecificationResponse>
    implements
        Built<Ipv4PrefixSpecificationResponse,
            Ipv4PrefixSpecificationResponseBuilder> {
  /// Information about the IPv4 delegated prefixes assigned to a network interface.
  factory Ipv4PrefixSpecificationResponse({String? ipv4Prefix}) {
    return _$Ipv4PrefixSpecificationResponse._(ipv4Prefix: ipv4Prefix);
  }

  /// Information about the IPv4 delegated prefixes assigned to a network interface.
  factory Ipv4PrefixSpecificationResponse.build(
          [void Function(Ipv4PrefixSpecificationResponseBuilder) updates]) =
      _$Ipv4PrefixSpecificationResponse;

  const Ipv4PrefixSpecificationResponse._();

  static const List<_i2.SmithySerializer<Ipv4PrefixSpecificationResponse>>
      serializers = [Ipv4PrefixSpecificationResponseEc2QuerySerializer()];

  /// The IPv4 delegated prefixes assigned to the network interface.
  String? get ipv4Prefix;
  @override
  List<Object?> get props => [ipv4Prefix];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('Ipv4PrefixSpecificationResponse')
          ..add(
            'ipv4Prefix',
            ipv4Prefix,
          );
    return helper.toString();
  }
}

class Ipv4PrefixSpecificationResponseEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<Ipv4PrefixSpecificationResponse> {
  const Ipv4PrefixSpecificationResponseEc2QuerySerializer()
      : super('Ipv4PrefixSpecificationResponse');

  @override
  Iterable<Type> get types => const [
        Ipv4PrefixSpecificationResponse,
        _$Ipv4PrefixSpecificationResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Ipv4PrefixSpecificationResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Ipv4PrefixSpecificationResponseBuilder();
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
    Ipv4PrefixSpecificationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'Ipv4PrefixSpecificationResponseResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Ipv4PrefixSpecificationResponse(:ipv4Prefix) = object;
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
