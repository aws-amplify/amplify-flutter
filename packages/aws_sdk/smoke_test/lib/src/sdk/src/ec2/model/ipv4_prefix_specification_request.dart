// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipv4_prefix_specification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ipv4_prefix_specification_request.g.dart';

/// Describes the IPv4 prefix option for a network interface.
abstract class Ipv4PrefixSpecificationRequest
    with
        _i1.AWSEquatable<Ipv4PrefixSpecificationRequest>
    implements
        Built<Ipv4PrefixSpecificationRequest,
            Ipv4PrefixSpecificationRequestBuilder> {
  /// Describes the IPv4 prefix option for a network interface.
  factory Ipv4PrefixSpecificationRequest({String? ipv4Prefix}) {
    return _$Ipv4PrefixSpecificationRequest._(ipv4Prefix: ipv4Prefix);
  }

  /// Describes the IPv4 prefix option for a network interface.
  factory Ipv4PrefixSpecificationRequest.build(
          [void Function(Ipv4PrefixSpecificationRequestBuilder) updates]) =
      _$Ipv4PrefixSpecificationRequest;

  const Ipv4PrefixSpecificationRequest._();

  static const List<_i2.SmithySerializer<Ipv4PrefixSpecificationRequest>>
      serializers = [Ipv4PrefixSpecificationRequestEc2QuerySerializer()];

  /// The IPv4 prefix. For information, see [Assigning prefixes to Amazon EC2 network interfaces](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-prefix-eni.html) in the _Amazon Elastic Compute Cloud User Guide_.
  String? get ipv4Prefix;
  @override
  List<Object?> get props => [ipv4Prefix];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Ipv4PrefixSpecificationRequest')
      ..add(
        'ipv4Prefix',
        ipv4Prefix,
      );
    return helper.toString();
  }
}

class Ipv4PrefixSpecificationRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<Ipv4PrefixSpecificationRequest> {
  const Ipv4PrefixSpecificationRequestEc2QuerySerializer()
      : super('Ipv4PrefixSpecificationRequest');

  @override
  Iterable<Type> get types => const [
        Ipv4PrefixSpecificationRequest,
        _$Ipv4PrefixSpecificationRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Ipv4PrefixSpecificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Ipv4PrefixSpecificationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Ipv4Prefix':
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
    Ipv4PrefixSpecificationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'Ipv4PrefixSpecificationRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Ipv4PrefixSpecificationRequest(:ipv4Prefix) = object;
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
