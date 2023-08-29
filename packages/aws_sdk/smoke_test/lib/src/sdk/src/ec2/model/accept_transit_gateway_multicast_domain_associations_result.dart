// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.accept_transit_gateway_multicast_domain_associations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain_associations.dart';

part 'accept_transit_gateway_multicast_domain_associations_result.g.dart';

abstract class AcceptTransitGatewayMulticastDomainAssociationsResult
    with
        _i1.AWSEquatable<AcceptTransitGatewayMulticastDomainAssociationsResult>
    implements
        Built<AcceptTransitGatewayMulticastDomainAssociationsResult,
            AcceptTransitGatewayMulticastDomainAssociationsResultBuilder> {
  factory AcceptTransitGatewayMulticastDomainAssociationsResult(
      {TransitGatewayMulticastDomainAssociations? associations}) {
    return _$AcceptTransitGatewayMulticastDomainAssociationsResult._(
        associations: associations);
  }

  factory AcceptTransitGatewayMulticastDomainAssociationsResult.build(
      [void Function(
              AcceptTransitGatewayMulticastDomainAssociationsResultBuilder)
          updates]) = _$AcceptTransitGatewayMulticastDomainAssociationsResult;

  const AcceptTransitGatewayMulticastDomainAssociationsResult._();

  /// Constructs a [AcceptTransitGatewayMulticastDomainAssociationsResult] from a [payload] and [response].
  factory AcceptTransitGatewayMulticastDomainAssociationsResult.fromResponse(
    AcceptTransitGatewayMulticastDomainAssociationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<
              AcceptTransitGatewayMulticastDomainAssociationsResult>>
      serializers = [
    AcceptTransitGatewayMulticastDomainAssociationsResultEc2QuerySerializer()
  ];

  /// Information about the multicast domain associations.
  TransitGatewayMulticastDomainAssociations? get associations;
  @override
  List<Object?> get props => [associations];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'AcceptTransitGatewayMulticastDomainAssociationsResult')
      ..add(
        'associations',
        associations,
      );
    return helper.toString();
  }
}

class AcceptTransitGatewayMulticastDomainAssociationsResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        AcceptTransitGatewayMulticastDomainAssociationsResult> {
  const AcceptTransitGatewayMulticastDomainAssociationsResultEc2QuerySerializer()
      : super('AcceptTransitGatewayMulticastDomainAssociationsResult');

  @override
  Iterable<Type> get types => const [
        AcceptTransitGatewayMulticastDomainAssociationsResult,
        _$AcceptTransitGatewayMulticastDomainAssociationsResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AcceptTransitGatewayMulticastDomainAssociationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        AcceptTransitGatewayMulticastDomainAssociationsResultBuilder();
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
    AcceptTransitGatewayMulticastDomainAssociationsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AcceptTransitGatewayMulticastDomainAssociationsResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AcceptTransitGatewayMulticastDomainAssociationsResult(:associations) =
        object;
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
