// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.enable_vgw_route_propagation_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'enable_vgw_route_propagation_request.g.dart';

/// Contains the parameters for EnableVgwRoutePropagation.
abstract class EnableVgwRoutePropagationRequest
    with
        _i1.HttpInput<EnableVgwRoutePropagationRequest>,
        _i2.AWSEquatable<EnableVgwRoutePropagationRequest>
    implements
        Built<EnableVgwRoutePropagationRequest,
            EnableVgwRoutePropagationRequestBuilder> {
  /// Contains the parameters for EnableVgwRoutePropagation.
  factory EnableVgwRoutePropagationRequest({
    String? gatewayId,
    String? routeTableId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$EnableVgwRoutePropagationRequest._(
      gatewayId: gatewayId,
      routeTableId: routeTableId,
      dryRun: dryRun,
    );
  }

  /// Contains the parameters for EnableVgwRoutePropagation.
  factory EnableVgwRoutePropagationRequest.build(
          [void Function(EnableVgwRoutePropagationRequestBuilder) updates]) =
      _$EnableVgwRoutePropagationRequest;

  const EnableVgwRoutePropagationRequest._();

  factory EnableVgwRoutePropagationRequest.fromRequest(
    EnableVgwRoutePropagationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<EnableVgwRoutePropagationRequest>>
      serializers = [EnableVgwRoutePropagationRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnableVgwRoutePropagationRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the virtual private gateway that is attached to a VPC. The virtual private gateway must be attached to the same VPC that the routing tables are associated with.
  String? get gatewayId;

  /// The ID of the route table. The routing table must be associated with the same VPC that the virtual private gateway is attached to.
  String? get routeTableId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  EnableVgwRoutePropagationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        gatewayId,
        routeTableId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('EnableVgwRoutePropagationRequest')
          ..add(
            'gatewayId',
            gatewayId,
          )
          ..add(
            'routeTableId',
            routeTableId,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class EnableVgwRoutePropagationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<EnableVgwRoutePropagationRequest> {
  const EnableVgwRoutePropagationRequestEc2QuerySerializer()
      : super('EnableVgwRoutePropagationRequest');

  @override
  Iterable<Type> get types => const [
        EnableVgwRoutePropagationRequest,
        _$EnableVgwRoutePropagationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableVgwRoutePropagationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableVgwRoutePropagationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'GatewayId':
          result.gatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RouteTableId':
          result.routeTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EnableVgwRoutePropagationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'EnableVgwRoutePropagationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnableVgwRoutePropagationRequest(:gatewayId, :routeTableId, :dryRun) =
        object;
    if (gatewayId != null) {
      result$
        ..add(const _i1.XmlElementName('GatewayId'))
        ..add(serializers.serialize(
          gatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (routeTableId != null) {
      result$
        ..add(const _i1.XmlElementName('RouteTableId'))
        ..add(serializers.serialize(
          routeTableId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
