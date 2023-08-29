// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_client_vpn_endpoint_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_client_vpn_endpoint_request.g.dart';

abstract class DeleteClientVpnEndpointRequest
    with
        _i1.HttpInput<DeleteClientVpnEndpointRequest>,
        _i2.AWSEquatable<DeleteClientVpnEndpointRequest>
    implements
        Built<DeleteClientVpnEndpointRequest,
            DeleteClientVpnEndpointRequestBuilder> {
  factory DeleteClientVpnEndpointRequest({
    String? clientVpnEndpointId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteClientVpnEndpointRequest._(
      clientVpnEndpointId: clientVpnEndpointId,
      dryRun: dryRun,
    );
  }

  factory DeleteClientVpnEndpointRequest.build(
          [void Function(DeleteClientVpnEndpointRequestBuilder) updates]) =
      _$DeleteClientVpnEndpointRequest;

  const DeleteClientVpnEndpointRequest._();

  factory DeleteClientVpnEndpointRequest.fromRequest(
    DeleteClientVpnEndpointRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteClientVpnEndpointRequest>>
      serializers = [DeleteClientVpnEndpointRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteClientVpnEndpointRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Client VPN to be deleted.
  String? get clientVpnEndpointId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteClientVpnEndpointRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteClientVpnEndpointRequest')
      ..add(
        'clientVpnEndpointId',
        clientVpnEndpointId,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DeleteClientVpnEndpointRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteClientVpnEndpointRequest> {
  const DeleteClientVpnEndpointRequestEc2QuerySerializer()
      : super('DeleteClientVpnEndpointRequest');

  @override
  Iterable<Type> get types => const [
        DeleteClientVpnEndpointRequest,
        _$DeleteClientVpnEndpointRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteClientVpnEndpointRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteClientVpnEndpointRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ClientVpnEndpointId':
          result.clientVpnEndpointId = (serializers.deserialize(
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
    DeleteClientVpnEndpointRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteClientVpnEndpointRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteClientVpnEndpointRequest(:clientVpnEndpointId, :dryRun) =
        object;
    if (clientVpnEndpointId != null) {
      result$
        ..add(const _i1.XmlElementName('ClientVpnEndpointId'))
        ..add(serializers.serialize(
          clientVpnEndpointId,
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
