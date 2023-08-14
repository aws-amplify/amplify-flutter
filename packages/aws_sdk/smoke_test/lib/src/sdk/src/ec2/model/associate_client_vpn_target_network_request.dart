// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.associate_client_vpn_target_network_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'associate_client_vpn_target_network_request.g.dart';

abstract class AssociateClientVpnTargetNetworkRequest
    with
        _i1.HttpInput<AssociateClientVpnTargetNetworkRequest>,
        _i2.AWSEquatable<AssociateClientVpnTargetNetworkRequest>
    implements
        Built<AssociateClientVpnTargetNetworkRequest,
            AssociateClientVpnTargetNetworkRequestBuilder> {
  factory AssociateClientVpnTargetNetworkRequest({
    String? clientVpnEndpointId,
    String? subnetId,
    String? clientToken,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$AssociateClientVpnTargetNetworkRequest._(
      clientVpnEndpointId: clientVpnEndpointId,
      subnetId: subnetId,
      clientToken: clientToken,
      dryRun: dryRun,
    );
  }

  factory AssociateClientVpnTargetNetworkRequest.build(
      [void Function(AssociateClientVpnTargetNetworkRequestBuilder)
          updates]) = _$AssociateClientVpnTargetNetworkRequest;

  const AssociateClientVpnTargetNetworkRequest._();

  factory AssociateClientVpnTargetNetworkRequest.fromRequest(
    AssociateClientVpnTargetNetworkRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<AssociateClientVpnTargetNetworkRequest>>
      serializers = [
    AssociateClientVpnTargetNetworkRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateClientVpnTargetNetworkRequestBuilder b) {
    b
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true)
      ..dryRun = false;
  }

  /// The ID of the Client VPN endpoint.
  String? get clientVpnEndpointId;

  /// The ID of the subnet to associate with the Client VPN endpoint.
  String? get subnetId;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  AssociateClientVpnTargetNetworkRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        subnetId,
        clientToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AssociateClientVpnTargetNetworkRequest')
          ..add(
            'clientVpnEndpointId',
            clientVpnEndpointId,
          )
          ..add(
            'subnetId',
            subnetId,
          )
          ..add(
            'clientToken',
            clientToken,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class AssociateClientVpnTargetNetworkRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<AssociateClientVpnTargetNetworkRequest> {
  const AssociateClientVpnTargetNetworkRequestEc2QuerySerializer()
      : super('AssociateClientVpnTargetNetworkRequest');

  @override
  Iterable<Type> get types => const [
        AssociateClientVpnTargetNetworkRequest,
        _$AssociateClientVpnTargetNetworkRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateClientVpnTargetNetworkRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateClientVpnTargetNetworkRequestBuilder();
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
        case 'SubnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
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
    AssociateClientVpnTargetNetworkRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AssociateClientVpnTargetNetworkRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociateClientVpnTargetNetworkRequest(
      :clientVpnEndpointId,
      :subnetId,
      :clientToken,
      :dryRun
    ) = object;
    if (clientVpnEndpointId != null) {
      result$
        ..add(const _i1.XmlElementName('ClientVpnEndpointId'))
        ..add(serializers.serialize(
          clientVpnEndpointId,
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
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
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
