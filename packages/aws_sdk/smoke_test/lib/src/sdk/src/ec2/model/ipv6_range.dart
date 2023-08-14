// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipv6_range; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ipv6_range.g.dart';

/// Describes an IPv6 range.
abstract class Ipv6Range
    with _i1.AWSEquatable<Ipv6Range>
    implements Built<Ipv6Range, Ipv6RangeBuilder> {
  /// Describes an IPv6 range.
  factory Ipv6Range({
    String? cidrIpv6,
    String? description,
  }) {
    return _$Ipv6Range._(
      cidrIpv6: cidrIpv6,
      description: description,
    );
  }

  /// Describes an IPv6 range.
  factory Ipv6Range.build([void Function(Ipv6RangeBuilder) updates]) =
      _$Ipv6Range;

  const Ipv6Range._();

  static const List<_i2.SmithySerializer<Ipv6Range>> serializers = [
    Ipv6RangeEc2QuerySerializer()
  ];

  /// The IPv6 CIDR range. You can either specify a CIDR range or a source security group, not both. To specify a single IPv6 address, use the /128 prefix length.
  String? get cidrIpv6;

  /// A description for the security group rule that references this IPv6 address range.
  ///
  /// Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@\[\]+=&;{}!$*
  String? get description;
  @override
  List<Object?> get props => [
        cidrIpv6,
        description,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Ipv6Range')
      ..add(
        'cidrIpv6',
        cidrIpv6,
      )
      ..add(
        'description',
        description,
      );
    return helper.toString();
  }
}

class Ipv6RangeEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<Ipv6Range> {
  const Ipv6RangeEc2QuerySerializer() : super('Ipv6Range');

  @override
  Iterable<Type> get types => const [
        Ipv6Range,
        _$Ipv6Range,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Ipv6Range deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Ipv6RangeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'cidrIpv6':
          result.cidrIpv6 = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
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
    Ipv6Range object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'Ipv6RangeResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Ipv6Range(:cidrIpv6, :description) = object;
    if (cidrIpv6 != null) {
      result$
        ..add(const _i2.XmlElementName('CidrIpv6'))
        ..add(serializers.serialize(
          cidrIpv6,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i2.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
