// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipv6_prefix_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ipv6_prefix_specification.g.dart';

/// Describes the IPv6 prefix.
abstract class Ipv6PrefixSpecification
    with _i1.AWSEquatable<Ipv6PrefixSpecification>
    implements Built<Ipv6PrefixSpecification, Ipv6PrefixSpecificationBuilder> {
  /// Describes the IPv6 prefix.
  factory Ipv6PrefixSpecification({String? ipv6Prefix}) {
    return _$Ipv6PrefixSpecification._(ipv6Prefix: ipv6Prefix);
  }

  /// Describes the IPv6 prefix.
  factory Ipv6PrefixSpecification.build(
          [void Function(Ipv6PrefixSpecificationBuilder) updates]) =
      _$Ipv6PrefixSpecification;

  const Ipv6PrefixSpecification._();

  static const List<_i2.SmithySerializer<Ipv6PrefixSpecification>> serializers =
      [Ipv6PrefixSpecificationEc2QuerySerializer()];

  /// The IPv6 prefix.
  String? get ipv6Prefix;
  @override
  List<Object?> get props => [ipv6Prefix];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Ipv6PrefixSpecification')
      ..add(
        'ipv6Prefix',
        ipv6Prefix,
      );
    return helper.toString();
  }
}

class Ipv6PrefixSpecificationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<Ipv6PrefixSpecification> {
  const Ipv6PrefixSpecificationEc2QuerySerializer()
      : super('Ipv6PrefixSpecification');

  @override
  Iterable<Type> get types => const [
        Ipv6PrefixSpecification,
        _$Ipv6PrefixSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Ipv6PrefixSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Ipv6PrefixSpecificationBuilder();
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
    Ipv6PrefixSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'Ipv6PrefixSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Ipv6PrefixSpecification(:ipv6Prefix) = object;
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
