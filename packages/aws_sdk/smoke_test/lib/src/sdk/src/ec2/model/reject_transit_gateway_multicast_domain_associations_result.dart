// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.reject_transit_gateway_multicast_domain_associations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain_associations.dart';

part 'reject_transit_gateway_multicast_domain_associations_result.g.dart';

abstract class RejectTransitGatewayMulticastDomainAssociationsResult
    with
        _i1.AWSEquatable<RejectTransitGatewayMulticastDomainAssociationsResult>
    implements
        Built<RejectTransitGatewayMulticastDomainAssociationsResult,
            RejectTransitGatewayMulticastDomainAssociationsResultBuilder> {
  factory RejectTransitGatewayMulticastDomainAssociationsResult(
      {TransitGatewayMulticastDomainAssociations? associations}) {
    return _$RejectTransitGatewayMulticastDomainAssociationsResult._(
        associations: associations);
  }

  factory RejectTransitGatewayMulticastDomainAssociationsResult.build(
      [void Function(
              RejectTransitGatewayMulticastDomainAssociationsResultBuilder)
          updates]) = _$RejectTransitGatewayMulticastDomainAssociationsResult;

  const RejectTransitGatewayMulticastDomainAssociationsResult._();

  /// Constructs a [RejectTransitGatewayMulticastDomainAssociationsResult] from a [payload] and [response].
  factory RejectTransitGatewayMulticastDomainAssociationsResult.fromResponse(
    RejectTransitGatewayMulticastDomainAssociationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<
              RejectTransitGatewayMulticastDomainAssociationsResult>>
      serializers = [
    RejectTransitGatewayMulticastDomainAssociationsResultEc2QuerySerializer()
  ];

  /// Information about the multicast domain associations.
  TransitGatewayMulticastDomainAssociations? get associations;
  @override
  List<Object?> get props => [associations];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'RejectTransitGatewayMulticastDomainAssociationsResult')
      ..add(
        'associations',
        associations,
      );
    return helper.toString();
  }
}

class RejectTransitGatewayMulticastDomainAssociationsResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        RejectTransitGatewayMulticastDomainAssociationsResult> {
  const RejectTransitGatewayMulticastDomainAssociationsResultEc2QuerySerializer()
      : super('RejectTransitGatewayMulticastDomainAssociationsResult');

  @override
  Iterable<Type> get types => const [
        RejectTransitGatewayMulticastDomainAssociationsResult,
        _$RejectTransitGatewayMulticastDomainAssociationsResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RejectTransitGatewayMulticastDomainAssociationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        RejectTransitGatewayMulticastDomainAssociationsResultBuilder();
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
    RejectTransitGatewayMulticastDomainAssociationsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RejectTransitGatewayMulticastDomainAssociationsResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RejectTransitGatewayMulticastDomainAssociationsResult(:associations) =
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
