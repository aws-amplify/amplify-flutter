// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.reject_vpc_peering_connection_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'reject_vpc_peering_connection_request.g.dart';

abstract class RejectVpcPeeringConnectionRequest
    with
        _i1.HttpInput<RejectVpcPeeringConnectionRequest>,
        _i2.AWSEquatable<RejectVpcPeeringConnectionRequest>
    implements
        Built<RejectVpcPeeringConnectionRequest,
            RejectVpcPeeringConnectionRequestBuilder> {
  factory RejectVpcPeeringConnectionRequest({
    bool? dryRun,
    String? vpcPeeringConnectionId,
  }) {
    dryRun ??= false;
    return _$RejectVpcPeeringConnectionRequest._(
      dryRun: dryRun,
      vpcPeeringConnectionId: vpcPeeringConnectionId,
    );
  }

  factory RejectVpcPeeringConnectionRequest.build(
          [void Function(RejectVpcPeeringConnectionRequestBuilder) updates]) =
      _$RejectVpcPeeringConnectionRequest;

  const RejectVpcPeeringConnectionRequest._();

  factory RejectVpcPeeringConnectionRequest.fromRequest(
    RejectVpcPeeringConnectionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<RejectVpcPeeringConnectionRequest>>
      serializers = [RejectVpcPeeringConnectionRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RejectVpcPeeringConnectionRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the VPC peering connection.
  String? get vpcPeeringConnectionId;
  @override
  RejectVpcPeeringConnectionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        vpcPeeringConnectionId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RejectVpcPeeringConnectionRequest')
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

class RejectVpcPeeringConnectionRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<RejectVpcPeeringConnectionRequest> {
  const RejectVpcPeeringConnectionRequestEc2QuerySerializer()
      : super('RejectVpcPeeringConnectionRequest');

  @override
  Iterable<Type> get types => const [
        RejectVpcPeeringConnectionRequest,
        _$RejectVpcPeeringConnectionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RejectVpcPeeringConnectionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RejectVpcPeeringConnectionRequestBuilder();
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
    RejectVpcPeeringConnectionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'RejectVpcPeeringConnectionRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RejectVpcPeeringConnectionRequest(:dryRun, :vpcPeeringConnectionId) =
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
