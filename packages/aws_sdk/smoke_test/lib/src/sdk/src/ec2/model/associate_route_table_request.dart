// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.associate_route_table_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'associate_route_table_request.g.dart';

abstract class AssociateRouteTableRequest
    with
        _i1.HttpInput<AssociateRouteTableRequest>,
        _i2.AWSEquatable<AssociateRouteTableRequest>
    implements
        Built<AssociateRouteTableRequest, AssociateRouteTableRequestBuilder> {
  factory AssociateRouteTableRequest({
    bool? dryRun,
    String? routeTableId,
    String? subnetId,
    String? gatewayId,
  }) {
    dryRun ??= false;
    return _$AssociateRouteTableRequest._(
      dryRun: dryRun,
      routeTableId: routeTableId,
      subnetId: subnetId,
      gatewayId: gatewayId,
    );
  }

  factory AssociateRouteTableRequest.build(
          [void Function(AssociateRouteTableRequestBuilder) updates]) =
      _$AssociateRouteTableRequest;

  const AssociateRouteTableRequest._();

  factory AssociateRouteTableRequest.fromRequest(
    AssociateRouteTableRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<AssociateRouteTableRequest>>
      serializers = [AssociateRouteTableRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateRouteTableRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the route table.
  String? get routeTableId;

  /// The ID of the subnet.
  String? get subnetId;

  /// The ID of the internet gateway or virtual private gateway.
  String? get gatewayId;
  @override
  AssociateRouteTableRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        routeTableId,
        subnetId,
        gatewayId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssociateRouteTableRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'routeTableId',
        routeTableId,
      )
      ..add(
        'subnetId',
        subnetId,
      )
      ..add(
        'gatewayId',
        gatewayId,
      );
    return helper.toString();
  }
}

class AssociateRouteTableRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AssociateRouteTableRequest> {
  const AssociateRouteTableRequestEc2QuerySerializer()
      : super('AssociateRouteTableRequest');

  @override
  Iterable<Type> get types => const [
        AssociateRouteTableRequest,
        _$AssociateRouteTableRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateRouteTableRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateRouteTableRequestBuilder();
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
        case 'routeTableId':
          result.routeTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'subnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'GatewayId':
          result.gatewayId = (serializers.deserialize(
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
    AssociateRouteTableRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AssociateRouteTableRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociateRouteTableRequest(
      :dryRun,
      :routeTableId,
      :subnetId,
      :gatewayId
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (routeTableId != null) {
      result$
        ..add(const _i1.XmlElementName('RouteTableId'))
        ..add(serializers.serialize(
          routeTableId,
          specifiedType: const FullType(String),
        ));
    }
    if (subnetId != null) {
      result$
        ..add(const _i1.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    if (gatewayId != null) {
      result$
        ..add(const _i1.XmlElementName('GatewayId'))
        ..add(serializers.serialize(
          gatewayId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
