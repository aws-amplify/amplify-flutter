// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_transit_gateway_policy_table_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_transit_gateway_policy_table_request.g.dart';

abstract class DeleteTransitGatewayPolicyTableRequest
    with
        _i1.HttpInput<DeleteTransitGatewayPolicyTableRequest>,
        _i2.AWSEquatable<DeleteTransitGatewayPolicyTableRequest>
    implements
        Built<DeleteTransitGatewayPolicyTableRequest,
            DeleteTransitGatewayPolicyTableRequestBuilder> {
  factory DeleteTransitGatewayPolicyTableRequest({
    String? transitGatewayPolicyTableId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteTransitGatewayPolicyTableRequest._(
      transitGatewayPolicyTableId: transitGatewayPolicyTableId,
      dryRun: dryRun,
    );
  }

  factory DeleteTransitGatewayPolicyTableRequest.build(
      [void Function(DeleteTransitGatewayPolicyTableRequestBuilder)
          updates]) = _$DeleteTransitGatewayPolicyTableRequest;

  const DeleteTransitGatewayPolicyTableRequest._();

  factory DeleteTransitGatewayPolicyTableRequest.fromRequest(
    DeleteTransitGatewayPolicyTableRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DeleteTransitGatewayPolicyTableRequest>>
      serializers = [
    DeleteTransitGatewayPolicyTableRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTransitGatewayPolicyTableRequestBuilder b) {
    b.dryRun = false;
  }

  /// The transit gateway policy table to delete.
  String? get transitGatewayPolicyTableId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteTransitGatewayPolicyTableRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayPolicyTableId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTransitGatewayPolicyTableRequest')
          ..add(
            'transitGatewayPolicyTableId',
            transitGatewayPolicyTableId,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DeleteTransitGatewayPolicyTableRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DeleteTransitGatewayPolicyTableRequest> {
  const DeleteTransitGatewayPolicyTableRequestEc2QuerySerializer()
      : super('DeleteTransitGatewayPolicyTableRequest');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayPolicyTableRequest,
        _$DeleteTransitGatewayPolicyTableRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayPolicyTableRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayPolicyTableRequestBuilder();
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
    DeleteTransitGatewayPolicyTableRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteTransitGatewayPolicyTableRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteTransitGatewayPolicyTableRequest(
      :transitGatewayPolicyTableId,
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
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
