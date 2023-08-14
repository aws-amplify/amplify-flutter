// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.associate_transit_gateway_multicast_domain_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain_associations.dart';

part 'associate_transit_gateway_multicast_domain_result.g.dart';

abstract class AssociateTransitGatewayMulticastDomainResult
    with
        _i1.AWSEquatable<AssociateTransitGatewayMulticastDomainResult>
    implements
        Built<AssociateTransitGatewayMulticastDomainResult,
            AssociateTransitGatewayMulticastDomainResultBuilder> {
  factory AssociateTransitGatewayMulticastDomainResult(
      {TransitGatewayMulticastDomainAssociations? associations}) {
    return _$AssociateTransitGatewayMulticastDomainResult._(
        associations: associations);
  }

  factory AssociateTransitGatewayMulticastDomainResult.build(
      [void Function(AssociateTransitGatewayMulticastDomainResultBuilder)
          updates]) = _$AssociateTransitGatewayMulticastDomainResult;

  const AssociateTransitGatewayMulticastDomainResult._();

  /// Constructs a [AssociateTransitGatewayMulticastDomainResult] from a [payload] and [response].
  factory AssociateTransitGatewayMulticastDomainResult.fromResponse(
    AssociateTransitGatewayMulticastDomainResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<AssociateTransitGatewayMulticastDomainResult>>
      serializers = [
    AssociateTransitGatewayMulticastDomainResultEc2QuerySerializer()
  ];

  /// Information about the transit gateway multicast domain associations.
  TransitGatewayMulticastDomainAssociations? get associations;
  @override
  List<Object?> get props => [associations];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'AssociateTransitGatewayMulticastDomainResult')
      ..add(
        'associations',
        associations,
      );
    return helper.toString();
  }
}

class AssociateTransitGatewayMulticastDomainResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<AssociateTransitGatewayMulticastDomainResult> {
  const AssociateTransitGatewayMulticastDomainResultEc2QuerySerializer()
      : super('AssociateTransitGatewayMulticastDomainResult');

  @override
  Iterable<Type> get types => const [
        AssociateTransitGatewayMulticastDomainResult,
        _$AssociateTransitGatewayMulticastDomainResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateTransitGatewayMulticastDomainResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateTransitGatewayMulticastDomainResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'associations':
          result.associations.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(TransitGatewayMulticastDomainAssociations),
          ) as TransitGatewayMulticastDomainAssociations));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AssociateTransitGatewayMulticastDomainResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AssociateTransitGatewayMulticastDomainResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociateTransitGatewayMulticastDomainResult(:associations) = object;
    if (associations != null) {
      result$
        ..add(const _i2.XmlElementName('Associations'))
        ..add(serializers.serialize(
          associations,
          specifiedType:
              const FullType(TransitGatewayMulticastDomainAssociations),
        ));
    }
    return result$;
  }
}
