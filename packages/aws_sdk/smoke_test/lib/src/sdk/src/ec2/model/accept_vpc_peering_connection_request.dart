// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.accept_vpc_peering_connection_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'accept_vpc_peering_connection_request.g.dart';

abstract class AcceptVpcPeeringConnectionRequest
    with
        _i1.HttpInput<AcceptVpcPeeringConnectionRequest>,
        _i2.AWSEquatable<AcceptVpcPeeringConnectionRequest>
    implements
        Built<AcceptVpcPeeringConnectionRequest,
            AcceptVpcPeeringConnectionRequestBuilder> {
  factory AcceptVpcPeeringConnectionRequest({
    bool? dryRun,
    String? vpcPeeringConnectionId,
  }) {
    dryRun ??= false;
    return _$AcceptVpcPeeringConnectionRequest._(
      dryRun: dryRun,
      vpcPeeringConnectionId: vpcPeeringConnectionId,
    );
  }

  factory AcceptVpcPeeringConnectionRequest.build(
          [void Function(AcceptVpcPeeringConnectionRequestBuilder) updates]) =
      _$AcceptVpcPeeringConnectionRequest;

  const AcceptVpcPeeringConnectionRequest._();

  factory AcceptVpcPeeringConnectionRequest.fromRequest(
    AcceptVpcPeeringConnectionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<AcceptVpcPeeringConnectionRequest>>
      serializers = [AcceptVpcPeeringConnectionRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AcceptVpcPeeringConnectionRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the VPC peering connection. You must specify this parameter in the request.
  String? get vpcPeeringConnectionId;
  @override
  AcceptVpcPeeringConnectionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        vpcPeeringConnectionId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AcceptVpcPeeringConnectionRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'vpcPeeringConnectionId',
            vpcPeeringConnectionId,
          );
    return helper.toString();
  }
}

class AcceptVpcPeeringConnectionRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AcceptVpcPeeringConnectionRequest> {
  const AcceptVpcPeeringConnectionRequestEc2QuerySerializer()
      : super('AcceptVpcPeeringConnectionRequest');

  @override
  Iterable<Type> get types => const [
        AcceptVpcPeeringConnectionRequest,
        _$AcceptVpcPeeringConnectionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AcceptVpcPeeringConnectionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AcceptVpcPeeringConnectionRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'vpcPeeringConnectionId':
          result.vpcPeeringConnectionId = (serializers.deserialize(
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
    AcceptVpcPeeringConnectionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AcceptVpcPeeringConnectionRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AcceptVpcPeeringConnectionRequest(:dryRun, :vpcPeeringConnectionId) =
        object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (vpcPeeringConnectionId != null) {
      result$
        ..add(const _i1.XmlElementName('VpcPeeringConnectionId'))
        ..add(serializers.serialize(
          vpcPeeringConnectionId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
