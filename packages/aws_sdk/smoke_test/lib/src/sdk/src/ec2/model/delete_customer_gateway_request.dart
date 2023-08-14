// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_customer_gateway_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_customer_gateway_request.g.dart';

/// Contains the parameters for DeleteCustomerGateway.
abstract class DeleteCustomerGatewayRequest
    with
        _i1.HttpInput<DeleteCustomerGatewayRequest>,
        _i2.AWSEquatable<DeleteCustomerGatewayRequest>
    implements
        Built<DeleteCustomerGatewayRequest,
            DeleteCustomerGatewayRequestBuilder> {
  /// Contains the parameters for DeleteCustomerGateway.
  factory DeleteCustomerGatewayRequest({
    String? customerGatewayId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteCustomerGatewayRequest._(
      customerGatewayId: customerGatewayId,
      dryRun: dryRun,
    );
  }

  /// Contains the parameters for DeleteCustomerGateway.
  factory DeleteCustomerGatewayRequest.build(
          [void Function(DeleteCustomerGatewayRequestBuilder) updates]) =
      _$DeleteCustomerGatewayRequest;

  const DeleteCustomerGatewayRequest._();

  factory DeleteCustomerGatewayRequest.fromRequest(
    DeleteCustomerGatewayRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteCustomerGatewayRequest>>
      serializers = [DeleteCustomerGatewayRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteCustomerGatewayRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the customer gateway.
  String? get customerGatewayId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteCustomerGatewayRequest getPayload() => this;
  @override
  List<Object?> get props => [
        customerGatewayId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteCustomerGatewayRequest')
      ..add(
        'customerGatewayId',
        customerGatewayId,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DeleteCustomerGatewayRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteCustomerGatewayRequest> {
  const DeleteCustomerGatewayRequestEc2QuerySerializer()
      : super('DeleteCustomerGatewayRequest');

  @override
  Iterable<Type> get types => const [
        DeleteCustomerGatewayRequest,
        _$DeleteCustomerGatewayRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteCustomerGatewayRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteCustomerGatewayRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CustomerGatewayId':
          result.customerGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
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
    DeleteCustomerGatewayRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteCustomerGatewayRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteCustomerGatewayRequest(:customerGatewayId, :dryRun) = object;
    if (customerGatewayId != null) {
      result$
        ..add(const _i1.XmlElementName('CustomerGatewayId'))
        ..add(serializers.serialize(
          customerGatewayId,
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
