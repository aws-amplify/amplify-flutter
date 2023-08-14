// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_nat_gateway_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_nat_gateway_request.g.dart';

abstract class DeleteNatGatewayRequest
    with
        _i1.HttpInput<DeleteNatGatewayRequest>,
        _i2.AWSEquatable<DeleteNatGatewayRequest>
    implements Built<DeleteNatGatewayRequest, DeleteNatGatewayRequestBuilder> {
  factory DeleteNatGatewayRequest({
    bool? dryRun,
    String? natGatewayId,
  }) {
    dryRun ??= false;
    return _$DeleteNatGatewayRequest._(
      dryRun: dryRun,
      natGatewayId: natGatewayId,
    );
  }

  factory DeleteNatGatewayRequest.build(
          [void Function(DeleteNatGatewayRequestBuilder) updates]) =
      _$DeleteNatGatewayRequest;

  const DeleteNatGatewayRequest._();

  factory DeleteNatGatewayRequest.fromRequest(
    DeleteNatGatewayRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteNatGatewayRequest>> serializers =
      [DeleteNatGatewayRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteNatGatewayRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the NAT gateway.
  String? get natGatewayId;
  @override
  DeleteNatGatewayRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        natGatewayId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteNatGatewayRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'natGatewayId',
        natGatewayId,
      );
    return helper.toString();
  }
}

class DeleteNatGatewayRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteNatGatewayRequest> {
  const DeleteNatGatewayRequestEc2QuerySerializer()
      : super('DeleteNatGatewayRequest');

  @override
  Iterable<Type> get types => const [
        DeleteNatGatewayRequest,
        _$DeleteNatGatewayRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteNatGatewayRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteNatGatewayRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'NatGatewayId':
          result.natGatewayId = (serializers.deserialize(
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
    DeleteNatGatewayRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteNatGatewayRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteNatGatewayRequest(:dryRun, :natGatewayId) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (natGatewayId != null) {
      result$
        ..add(const _i1.XmlElementName('NatGatewayId'))
        ..add(serializers.serialize(
          natGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
