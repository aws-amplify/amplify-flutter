// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.deregister_transit_gateway_multicast_group_members_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_deregistered_group_members.dart';

part 'deregister_transit_gateway_multicast_group_members_result.g.dart';

abstract class DeregisterTransitGatewayMulticastGroupMembersResult
    with
        _i1.AWSEquatable<DeregisterTransitGatewayMulticastGroupMembersResult>
    implements
        Built<DeregisterTransitGatewayMulticastGroupMembersResult,
            DeregisterTransitGatewayMulticastGroupMembersResultBuilder> {
  factory DeregisterTransitGatewayMulticastGroupMembersResult(
      {TransitGatewayMulticastDeregisteredGroupMembers?
          deregisteredMulticastGroupMembers}) {
    return _$DeregisterTransitGatewayMulticastGroupMembersResult._(
        deregisteredMulticastGroupMembers: deregisteredMulticastGroupMembers);
  }

  factory DeregisterTransitGatewayMulticastGroupMembersResult.build(
      [void Function(DeregisterTransitGatewayMulticastGroupMembersResultBuilder)
          updates]) = _$DeregisterTransitGatewayMulticastGroupMembersResult;

  const DeregisterTransitGatewayMulticastGroupMembersResult._();

  /// Constructs a [DeregisterTransitGatewayMulticastGroupMembersResult] from a [payload] and [response].
  factory DeregisterTransitGatewayMulticastGroupMembersResult.fromResponse(
    DeregisterTransitGatewayMulticastGroupMembersResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
      _i2.SmithySerializer<
          DeregisterTransitGatewayMulticastGroupMembersResult>> serializers = [
    DeregisterTransitGatewayMulticastGroupMembersResultEc2QuerySerializer()
  ];

  /// Information about the deregistered members.
  TransitGatewayMulticastDeregisteredGroupMembers?
      get deregisteredMulticastGroupMembers;
  @override
  List<Object?> get props => [deregisteredMulticastGroupMembers];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeregisterTransitGatewayMulticastGroupMembersResult')
      ..add(
        'deregisteredMulticastGroupMembers',
        deregisteredMulticastGroupMembers,
      );
    return helper.toString();
  }
}

class DeregisterTransitGatewayMulticastGroupMembersResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        DeregisterTransitGatewayMulticastGroupMembersResult> {
  const DeregisterTransitGatewayMulticastGroupMembersResultEc2QuerySerializer()
      : super('DeregisterTransitGatewayMulticastGroupMembersResult');

  @override
  Iterable<Type> get types => const [
        DeregisterTransitGatewayMulticastGroupMembersResult,
        _$DeregisterTransitGatewayMulticastGroupMembersResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeregisterTransitGatewayMulticastGroupMembersResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeregisterTransitGatewayMulticastGroupMembersResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'deregisteredMulticastGroupMembers':
          result.deregisteredMulticastGroupMembers
              .replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(TransitGatewayMulticastDeregisteredGroupMembers),
          ) as TransitGatewayMulticastDeregisteredGroupMembers));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeregisterTransitGatewayMulticastGroupMembersResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeregisterTransitGatewayMulticastGroupMembersResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeregisterTransitGatewayMulticastGroupMembersResult(
      :deregisteredMulticastGroupMembers
    ) = object;
    if (deregisteredMulticastGroupMembers != null) {
      result$
        ..add(const _i2.XmlElementName('DeregisteredMulticastGroupMembers'))
        ..add(serializers.serialize(
          deregisteredMulticastGroupMembers,
          specifiedType:
              const FullType(TransitGatewayMulticastDeregisteredGroupMembers),
        ));
    }
    return result$;
  }
}
