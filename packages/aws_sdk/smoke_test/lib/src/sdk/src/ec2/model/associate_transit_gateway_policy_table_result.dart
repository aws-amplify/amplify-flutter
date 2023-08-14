// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.associate_transit_gateway_policy_table_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_table_association.dart';

part 'associate_transit_gateway_policy_table_result.g.dart';

abstract class AssociateTransitGatewayPolicyTableResult
    with
        _i1.AWSEquatable<AssociateTransitGatewayPolicyTableResult>
    implements
        Built<AssociateTransitGatewayPolicyTableResult,
            AssociateTransitGatewayPolicyTableResultBuilder> {
  factory AssociateTransitGatewayPolicyTableResult(
      {TransitGatewayPolicyTableAssociation? association}) {
    return _$AssociateTransitGatewayPolicyTableResult._(
        association: association);
  }

  factory AssociateTransitGatewayPolicyTableResult.build(
      [void Function(AssociateTransitGatewayPolicyTableResultBuilder)
          updates]) = _$AssociateTransitGatewayPolicyTableResult;

  const AssociateTransitGatewayPolicyTableResult._();

  /// Constructs a [AssociateTransitGatewayPolicyTableResult] from a [payload] and [response].
  factory AssociateTransitGatewayPolicyTableResult.fromResponse(
    AssociateTransitGatewayPolicyTableResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<AssociateTransitGatewayPolicyTableResult>>
      serializers = [
    AssociateTransitGatewayPolicyTableResultEc2QuerySerializer()
  ];

  /// Describes the association of a transit gateway and a transit gateway policy table.
  TransitGatewayPolicyTableAssociation? get association;
  @override
  List<Object?> get props => [association];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AssociateTransitGatewayPolicyTableResult')
          ..add(
            'association',
            association,
          );
    return helper.toString();
  }
}

class AssociateTransitGatewayPolicyTableResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<AssociateTransitGatewayPolicyTableResult> {
  const AssociateTransitGatewayPolicyTableResultEc2QuerySerializer()
      : super('AssociateTransitGatewayPolicyTableResult');

  @override
  Iterable<Type> get types => const [
        AssociateTransitGatewayPolicyTableResult,
        _$AssociateTransitGatewayPolicyTableResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateTransitGatewayPolicyTableResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateTransitGatewayPolicyTableResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'association':
          result.association.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayPolicyTableAssociation),
          ) as TransitGatewayPolicyTableAssociation));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AssociateTransitGatewayPolicyTableResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AssociateTransitGatewayPolicyTableResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociateTransitGatewayPolicyTableResult(:association) = object;
    if (association != null) {
      result$
        ..add(const _i2.XmlElementName('Association'))
        ..add(serializers.serialize(
          association,
          specifiedType: const FullType(TransitGatewayPolicyTableAssociation),
        ));
    }
    return result$;
  }
}
