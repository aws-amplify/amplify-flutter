// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.reject_transit_gateway_vpc_attachment_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'reject_transit_gateway_vpc_attachment_request.g.dart';

abstract class RejectTransitGatewayVpcAttachmentRequest
    with
        _i1.HttpInput<RejectTransitGatewayVpcAttachmentRequest>,
        _i2.AWSEquatable<RejectTransitGatewayVpcAttachmentRequest>
    implements
        Built<RejectTransitGatewayVpcAttachmentRequest,
            RejectTransitGatewayVpcAttachmentRequestBuilder> {
  factory RejectTransitGatewayVpcAttachmentRequest({
    String? transitGatewayAttachmentId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$RejectTransitGatewayVpcAttachmentRequest._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      dryRun: dryRun,
    );
  }

  factory RejectTransitGatewayVpcAttachmentRequest.build(
      [void Function(RejectTransitGatewayVpcAttachmentRequestBuilder)
          updates]) = _$RejectTransitGatewayVpcAttachmentRequest;

  const RejectTransitGatewayVpcAttachmentRequest._();

  factory RejectTransitGatewayVpcAttachmentRequest.fromRequest(
    RejectTransitGatewayVpcAttachmentRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<RejectTransitGatewayVpcAttachmentRequest>>
      serializers = [
    RejectTransitGatewayVpcAttachmentRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RejectTransitGatewayVpcAttachmentRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the attachment.
  String? get transitGatewayAttachmentId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  RejectTransitGatewayVpcAttachmentRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RejectTransitGatewayVpcAttachmentRequest')
          ..add(
            'transitGatewayAttachmentId',
            transitGatewayAttachmentId,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class RejectTransitGatewayVpcAttachmentRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<RejectTransitGatewayVpcAttachmentRequest> {
  const RejectTransitGatewayVpcAttachmentRequestEc2QuerySerializer()
      : super('RejectTransitGatewayVpcAttachmentRequest');

  @override
  Iterable<Type> get types => const [
        RejectTransitGatewayVpcAttachmentRequest,
        _$RejectTransitGatewayVpcAttachmentRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RejectTransitGatewayVpcAttachmentRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RejectTransitGatewayVpcAttachmentRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RejectTransitGatewayVpcAttachmentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'RejectTransitGatewayVpcAttachmentRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RejectTransitGatewayVpcAttachmentRequest(
      :transitGatewayAttachmentId,
      :dryRun
    ) = object;
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
    return result$;
  }
}
