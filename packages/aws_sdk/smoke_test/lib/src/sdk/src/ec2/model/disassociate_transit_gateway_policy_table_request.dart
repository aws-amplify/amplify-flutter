// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disassociate_transit_gateway_policy_table_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'disassociate_transit_gateway_policy_table_request.g.dart';

abstract class DisassociateTransitGatewayPolicyTableRequest
    with
        _i1.HttpInput<DisassociateTransitGatewayPolicyTableRequest>,
        _i2.AWSEquatable<DisassociateTransitGatewayPolicyTableRequest>
    implements
        Built<DisassociateTransitGatewayPolicyTableRequest,
            DisassociateTransitGatewayPolicyTableRequestBuilder> {
  factory DisassociateTransitGatewayPolicyTableRequest({
    String? transitGatewayPolicyTableId,
    String? transitGatewayAttachmentId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DisassociateTransitGatewayPolicyTableRequest._(
      transitGatewayPolicyTableId: transitGatewayPolicyTableId,
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      dryRun: dryRun,
    );
  }

  factory DisassociateTransitGatewayPolicyTableRequest.build(
      [void Function(DisassociateTransitGatewayPolicyTableRequestBuilder)
          updates]) = _$DisassociateTransitGatewayPolicyTableRequest;

  const DisassociateTransitGatewayPolicyTableRequest._();

  factory DisassociateTransitGatewayPolicyTableRequest.fromRequest(
    DisassociateTransitGatewayPolicyTableRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DisassociateTransitGatewayPolicyTableRequest>>
      serializers = [
    DisassociateTransitGatewayPolicyTableRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisassociateTransitGatewayPolicyTableRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the disassociated policy table.
  String? get transitGatewayPolicyTableId;

  /// The ID of the transit gateway attachment to disassociate from the policy table.
  String? get transitGatewayAttachmentId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DisassociateTransitGatewayPolicyTableRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayPolicyTableId,
        transitGatewayAttachmentId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DisassociateTransitGatewayPolicyTableRequest')
      ..add(
        'transitGatewayPolicyTableId',
        transitGatewayPolicyTableId,
      )
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

class DisassociateTransitGatewayPolicyTableRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DisassociateTransitGatewayPolicyTableRequest> {
  const DisassociateTransitGatewayPolicyTableRequestEc2QuerySerializer()
      : super('DisassociateTransitGatewayPolicyTableRequest');

  @override
  Iterable<Type> get types => const [
        DisassociateTransitGatewayPolicyTableRequest,
        _$DisassociateTransitGatewayPolicyTableRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateTransitGatewayPolicyTableRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateTransitGatewayPolicyTableRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TransitGatewayPolicyTableId':
          result.transitGatewayPolicyTableId = (serializers.deserialize(
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DisassociateTransitGatewayPolicyTableRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DisassociateTransitGatewayPolicyTableRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisassociateTransitGatewayPolicyTableRequest(
      :transitGatewayPolicyTableId,
      :transitGatewayAttachmentId,
      :dryRun
    ) = object;
    if (transitGatewayPolicyTableId != null) {
      result$
        ..add(const _i1.XmlElementName('TransitGatewayPolicyTableId'))
        ..add(serializers.serialize(
          transitGatewayPolicyTableId,
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
    return result$;
  }
}
