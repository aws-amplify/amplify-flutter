// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_transit_gateway_route_table_announcement_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_transit_gateway_route_table_announcement_request.g.dart';

abstract class DeleteTransitGatewayRouteTableAnnouncementRequest
    with
        _i1.HttpInput<DeleteTransitGatewayRouteTableAnnouncementRequest>,
        _i2.AWSEquatable<DeleteTransitGatewayRouteTableAnnouncementRequest>
    implements
        Built<DeleteTransitGatewayRouteTableAnnouncementRequest,
            DeleteTransitGatewayRouteTableAnnouncementRequestBuilder> {
  factory DeleteTransitGatewayRouteTableAnnouncementRequest({
    String? transitGatewayRouteTableAnnouncementId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteTransitGatewayRouteTableAnnouncementRequest._(
      transitGatewayRouteTableAnnouncementId:
          transitGatewayRouteTableAnnouncementId,
      dryRun: dryRun,
    );
  }

  factory DeleteTransitGatewayRouteTableAnnouncementRequest.build(
      [void Function(DeleteTransitGatewayRouteTableAnnouncementRequestBuilder)
          updates]) = _$DeleteTransitGatewayRouteTableAnnouncementRequest;

  const DeleteTransitGatewayRouteTableAnnouncementRequest._();

  factory DeleteTransitGatewayRouteTableAnnouncementRequest.fromRequest(
    DeleteTransitGatewayRouteTableAnnouncementRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
      _i1.SmithySerializer<
          DeleteTransitGatewayRouteTableAnnouncementRequest>> serializers = [
    DeleteTransitGatewayRouteTableAnnouncementRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DeleteTransitGatewayRouteTableAnnouncementRequestBuilder b) {
    b.dryRun = false;
  }

  /// The transit gateway route table ID that's being deleted.
  String? get transitGatewayRouteTableAnnouncementId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteTransitGatewayRouteTableAnnouncementRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayRouteTableAnnouncementId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteTransitGatewayRouteTableAnnouncementRequest')
      ..add(
        'transitGatewayRouteTableAnnouncementId',
        transitGatewayRouteTableAnnouncementId,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DeleteTransitGatewayRouteTableAnnouncementRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        DeleteTransitGatewayRouteTableAnnouncementRequest> {
  const DeleteTransitGatewayRouteTableAnnouncementRequestEc2QuerySerializer()
      : super('DeleteTransitGatewayRouteTableAnnouncementRequest');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayRouteTableAnnouncementRequest,
        _$DeleteTransitGatewayRouteTableAnnouncementRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayRouteTableAnnouncementRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayRouteTableAnnouncementRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TransitGatewayRouteTableAnnouncementId':
          result.transitGatewayRouteTableAnnouncementId =
              (serializers.deserialize(
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
    DeleteTransitGatewayRouteTableAnnouncementRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteTransitGatewayRouteTableAnnouncementRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteTransitGatewayRouteTableAnnouncementRequest(
      :transitGatewayRouteTableAnnouncementId,
      :dryRun
    ) = object;
    if (transitGatewayRouteTableAnnouncementId != null) {
      result$
        ..add(
            const _i1.XmlElementName('TransitGatewayRouteTableAnnouncementId'))
        ..add(serializers.serialize(
          transitGatewayRouteTableAnnouncementId,
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
