// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.register_transit_gateway_multicast_group_members_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_registered_group_members.dart';

part 'register_transit_gateway_multicast_group_members_result.g.dart';

abstract class RegisterTransitGatewayMulticastGroupMembersResult
    with
        _i1.AWSEquatable<RegisterTransitGatewayMulticastGroupMembersResult>
    implements
        Built<RegisterTransitGatewayMulticastGroupMembersResult,
            RegisterTransitGatewayMulticastGroupMembersResultBuilder> {
  factory RegisterTransitGatewayMulticastGroupMembersResult(
      {TransitGatewayMulticastRegisteredGroupMembers?
          registeredMulticastGroupMembers}) {
    return _$RegisterTransitGatewayMulticastGroupMembersResult._(
        registeredMulticastGroupMembers: registeredMulticastGroupMembers);
  }

  factory RegisterTransitGatewayMulticastGroupMembersResult.build(
      [void Function(RegisterTransitGatewayMulticastGroupMembersResultBuilder)
          updates]) = _$RegisterTransitGatewayMulticastGroupMembersResult;

  const RegisterTransitGatewayMulticastGroupMembersResult._();

  /// Constructs a [RegisterTransitGatewayMulticastGroupMembersResult] from a [payload] and [response].
  factory RegisterTransitGatewayMulticastGroupMembersResult.fromResponse(
    RegisterTransitGatewayMulticastGroupMembersResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
      _i2.SmithySerializer<
          RegisterTransitGatewayMulticastGroupMembersResult>> serializers = [
    RegisterTransitGatewayMulticastGroupMembersResultEc2QuerySerializer()
  ];

  /// Information about the registered transit gateway multicast group members.
  TransitGatewayMulticastRegisteredGroupMembers?
      get registeredMulticastGroupMembers;
  @override
  List<Object?> get props => [registeredMulticastGroupMembers];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'RegisterTransitGatewayMulticastGroupMembersResult')
      ..add(
        'registeredMulticastGroupMembers',
        registeredMulticastGroupMembers,
      );
    return helper.toString();
  }
}

class RegisterTransitGatewayMulticastGroupMembersResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        RegisterTransitGatewayMulticastGroupMembersResult> {
  const RegisterTransitGatewayMulticastGroupMembersResultEc2QuerySerializer()
      : super('RegisterTransitGatewayMulticastGroupMembersResult');

  @override
  Iterable<Type> get types => const [
        RegisterTransitGatewayMulticastGroupMembersResult,
        _$RegisterTransitGatewayMulticastGroupMembersResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RegisterTransitGatewayMulticastGroupMembersResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegisterTransitGatewayMulticastGroupMembersResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'registeredMulticastGroupMembers':
          result.registeredMulticastGroupMembers
              .replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(TransitGatewayMulticastRegisteredGroupMembers),
          ) as TransitGatewayMulticastRegisteredGroupMembers));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RegisterTransitGatewayMulticastGroupMembersResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RegisterTransitGatewayMulticastGroupMembersResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RegisterTransitGatewayMulticastGroupMembersResult(
      :registeredMulticastGroupMembers
    ) = object;
    if (registeredMulticastGroupMembers != null) {
      result$
        ..add(const _i2.XmlElementName('RegisteredMulticastGroupMembers'))
        ..add(serializers.serialize(
          registeredMulticastGroupMembers,
          specifiedType:
              const FullType(TransitGatewayMulticastRegisteredGroupMembers),
        ));
    }
    return result$;
  }
}
