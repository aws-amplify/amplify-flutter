// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.enable_transit_gateway_route_table_propagation_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'enable_transit_gateway_route_table_propagation_request.g.dart';

abstract class EnableTransitGatewayRouteTablePropagationRequest
    with
        _i1.HttpInput<EnableTransitGatewayRouteTablePropagationRequest>,
        _i2.AWSEquatable<EnableTransitGatewayRouteTablePropagationRequest>
    implements
        Built<EnableTransitGatewayRouteTablePropagationRequest,
            EnableTransitGatewayRouteTablePropagationRequestBuilder> {
  factory EnableTransitGatewayRouteTablePropagationRequest({
    String? transitGatewayRouteTableId,
    String? transitGatewayAttachmentId,
    bool? dryRun,
    String? transitGatewayRouteTableAnnouncementId,
  }) {
    dryRun ??= false;
    return _$EnableTransitGatewayRouteTablePropagationRequest._(
      transitGatewayRouteTableId: transitGatewayRouteTableId,
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      dryRun: dryRun,
      transitGatewayRouteTableAnnouncementId:
          transitGatewayRouteTableAnnouncementId,
    );
  }

  factory EnableTransitGatewayRouteTablePropagationRequest.build(
      [void Function(EnableTransitGatewayRouteTablePropagationRequestBuilder)
          updates]) = _$EnableTransitGatewayRouteTablePropagationRequest;

  const EnableTransitGatewayRouteTablePropagationRequest._();

  factory EnableTransitGatewayRouteTablePropagationRequest.fromRequest(
    EnableTransitGatewayRouteTablePropagationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
      _i1.SmithySerializer<
          EnableTransitGatewayRouteTablePropagationRequest>> serializers = [
    EnableTransitGatewayRouteTablePropagationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnableTransitGatewayRouteTablePropagationRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the propagation route table.
  String? get transitGatewayRouteTableId;

  /// The ID of the attachment.
  String? get transitGatewayAttachmentId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the transit gateway route table announcement.
  String? get transitGatewayRouteTableAnnouncementId;
  @override
  EnableTransitGatewayRouteTablePropagationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayRouteTableId,
        transitGatewayAttachmentId,
        dryRun,
        transitGatewayRouteTableAnnouncementId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'EnableTransitGatewayRouteTablePropagationRequest')
      ..add(
        'transitGatewayRouteTableId',
        transitGatewayRouteTableId,
      )
      ..add(
        'transitGatewayAttachmentId',
        transitGatewayAttachmentId,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'transitGatewayRouteTableAnnouncementId',
        transitGatewayRouteTableAnnouncementId,
      );
    return helper.toString();
  }
}

class EnableTransitGatewayRouteTablePropagationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        EnableTransitGatewayRouteTablePropagationRequest> {
  const EnableTransitGatewayRouteTablePropagationRequestEc2QuerySerializer()
      : super('EnableTransitGatewayRouteTablePropagationRequest');

  @override
  Iterable<Type> get types => const [
        EnableTransitGatewayRouteTablePropagationRequest,
        _$EnableTransitGatewayRouteTablePropagationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableTransitGatewayRouteTablePropagationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableTransitGatewayRouteTablePropagationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TransitGatewayRouteTableId':
          result.transitGatewayRouteTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TransitGatewayAttachmentId':
          result.transitGatewayAttachmentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'TransitGatewayRouteTableAnnouncementId':
          result.transitGatewayRouteTableAnnouncementId =
              (serializers.deserialize(
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
    EnableTransitGatewayRouteTablePropagationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'EnableTransitGatewayRouteTablePropagationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnableTransitGatewayRouteTablePropagationRequest(
      :transitGatewayRouteTableId,
      :transitGatewayAttachmentId,
      :dryRun,
      :transitGatewayRouteTableAnnouncementId
    ) = object;
    if (transitGatewayRouteTableId != null) {
      result$
        ..add(const _i1.XmlElementName('TransitGatewayRouteTableId'))
        ..add(serializers.serialize(
          transitGatewayRouteTableId,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayAttachmentId != null) {
      result$
        ..add(const _i1.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          transitGatewayAttachmentId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (transitGatewayRouteTableAnnouncementId != null) {
      result$
        ..add(
            const _i1.XmlElementName('TransitGatewayRouteTableAnnouncementId'))
        ..add(serializers.serialize(
          transitGatewayRouteTableAnnouncementId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
