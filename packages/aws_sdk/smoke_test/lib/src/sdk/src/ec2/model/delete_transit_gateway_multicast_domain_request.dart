// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_transit_gateway_multicast_domain_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_transit_gateway_multicast_domain_request.g.dart';

abstract class DeleteTransitGatewayMulticastDomainRequest
    with
        _i1.HttpInput<DeleteTransitGatewayMulticastDomainRequest>,
        _i2.AWSEquatable<DeleteTransitGatewayMulticastDomainRequest>
    implements
        Built<DeleteTransitGatewayMulticastDomainRequest,
            DeleteTransitGatewayMulticastDomainRequestBuilder> {
  factory DeleteTransitGatewayMulticastDomainRequest({
    String? transitGatewayMulticastDomainId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteTransitGatewayMulticastDomainRequest._(
      transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
      dryRun: dryRun,
    );
  }

  factory DeleteTransitGatewayMulticastDomainRequest.build(
      [void Function(DeleteTransitGatewayMulticastDomainRequestBuilder)
          updates]) = _$DeleteTransitGatewayMulticastDomainRequest;

  const DeleteTransitGatewayMulticastDomainRequest._();

  factory DeleteTransitGatewayMulticastDomainRequest.fromRequest(
    DeleteTransitGatewayMulticastDomainRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DeleteTransitGatewayMulticastDomainRequest>>
      serializers = [
    DeleteTransitGatewayMulticastDomainRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTransitGatewayMulticastDomainRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the transit gateway multicast domain.
  String? get transitGatewayMulticastDomainId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteTransitGatewayMulticastDomainRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayMulticastDomainId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteTransitGatewayMulticastDomainRequest')
      ..add(
        'transitGatewayMulticastDomainId',
        transitGatewayMulticastDomainId,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DeleteTransitGatewayMulticastDomainRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DeleteTransitGatewayMulticastDomainRequest> {
  const DeleteTransitGatewayMulticastDomainRequestEc2QuerySerializer()
      : super('DeleteTransitGatewayMulticastDomainRequest');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayMulticastDomainRequest,
        _$DeleteTransitGatewayMulticastDomainRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayMulticastDomainRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayMulticastDomainRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TransitGatewayMulticastDomainId':
          result.transitGatewayMulticastDomainId = (serializers.deserialize(
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
    DeleteTransitGatewayMulticastDomainRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteTransitGatewayMulticastDomainRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteTransitGatewayMulticastDomainRequest(
      :transitGatewayMulticastDomainId,
      :dryRun
    ) = object;
    if (transitGatewayMulticastDomainId != null) {
      result$
        ..add(const _i1.XmlElementName('TransitGatewayMulticastDomainId'))
        ..add(serializers.serialize(
          transitGatewayMulticastDomainId,
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
