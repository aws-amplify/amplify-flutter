// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipv6_prefix_specification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ipv6_prefix_specification_request.g.dart';

/// Describes the IPv4 prefix option for a network interface.
abstract class Ipv6PrefixSpecificationRequest
    with
        _i1.AWSEquatable<Ipv6PrefixSpecificationRequest>
    implements
        Built<Ipv6PrefixSpecificationRequest,
            Ipv6PrefixSpecificationRequestBuilder> {
  /// Describes the IPv4 prefix option for a network interface.
  factory Ipv6PrefixSpecificationRequest({String? ipv6Prefix}) {
    return _$Ipv6PrefixSpecificationRequest._(ipv6Prefix: ipv6Prefix);
  }

  /// Describes the IPv4 prefix option for a network interface.
  factory Ipv6PrefixSpecificationRequest.build(
          [void Function(Ipv6PrefixSpecificationRequestBuilder) updates]) =
      _$Ipv6PrefixSpecificationRequest;

  const Ipv6PrefixSpecificationRequest._();

  static const List<_i2.SmithySerializer<Ipv6PrefixSpecificationRequest>>
      serializers = [Ipv6PrefixSpecificationRequestEc2QuerySerializer()];

  /// The IPv6 prefix.
  String? get ipv6Prefix;
  @override
  List<Object?> get props => [ipv6Prefix];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Ipv6PrefixSpecificationRequest')
      ..add(
        'ipv6Prefix',
        ipv6Prefix,
      );
    return helper.toString();
  }
}

class Ipv6PrefixSpecificationRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<Ipv6PrefixSpecificationRequest> {
  const Ipv6PrefixSpecificationRequestEc2QuerySerializer()
      : super('Ipv6PrefixSpecificationRequest');

  @override
  Iterable<Type> get types => const [
        Ipv6PrefixSpecificationRequest,
        _$Ipv6PrefixSpecificationRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Ipv6PrefixSpecificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Ipv6PrefixSpecificationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Ipv6Prefix':
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
    Ipv6PrefixSpecificationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'Ipv6PrefixSpecificationRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Ipv6PrefixSpecificationRequest(:ipv6Prefix) = object;
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
