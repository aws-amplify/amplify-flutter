// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_vpn_connection_device_sample_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_vpn_connection_device_sample_configuration_request.g.dart';

abstract class GetVpnConnectionDeviceSampleConfigurationRequest
    with
        _i1.HttpInput<GetVpnConnectionDeviceSampleConfigurationRequest>,
        _i2.AWSEquatable<GetVpnConnectionDeviceSampleConfigurationRequest>
    implements
        Built<GetVpnConnectionDeviceSampleConfigurationRequest,
            GetVpnConnectionDeviceSampleConfigurationRequestBuilder> {
  factory GetVpnConnectionDeviceSampleConfigurationRequest({
    String? vpnConnectionId,
    String? vpnConnectionDeviceTypeId,
    String? internetKeyExchangeVersion,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$GetVpnConnectionDeviceSampleConfigurationRequest._(
      vpnConnectionId: vpnConnectionId,
      vpnConnectionDeviceTypeId: vpnConnectionDeviceTypeId,
      internetKeyExchangeVersion: internetKeyExchangeVersion,
      dryRun: dryRun,
    );
  }

  factory GetVpnConnectionDeviceSampleConfigurationRequest.build(
      [void Function(GetVpnConnectionDeviceSampleConfigurationRequestBuilder)
          updates]) = _$GetVpnConnectionDeviceSampleConfigurationRequest;

  const GetVpnConnectionDeviceSampleConfigurationRequest._();

  factory GetVpnConnectionDeviceSampleConfigurationRequest.fromRequest(
    GetVpnConnectionDeviceSampleConfigurationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
      _i1.SmithySerializer<
          GetVpnConnectionDeviceSampleConfigurationRequest>> serializers = [
    GetVpnConnectionDeviceSampleConfigurationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetVpnConnectionDeviceSampleConfigurationRequestBuilder b) {
    b.dryRun = false;
  }

  /// The `VpnConnectionId` specifies the Site-to-Site VPN connection used for the sample configuration.
  String? get vpnConnectionId;

  /// Device identifier provided by the `GetVpnConnectionDeviceTypes` API.
  String? get vpnConnectionDeviceTypeId;

  /// The IKE version to be used in the sample configuration file for your customer gateway device. You can specify one of the following versions: `ikev1` or `ikev2`.
  String? get internetKeyExchangeVersion;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  GetVpnConnectionDeviceSampleConfigurationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        vpnConnectionId,
        vpnConnectionDeviceTypeId,
        internetKeyExchangeVersion,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetVpnConnectionDeviceSampleConfigurationRequest')
      ..add(
        'vpnConnectionId',
        vpnConnectionId,
      )
      ..add(
        'vpnConnectionDeviceTypeId',
        vpnConnectionDeviceTypeId,
      )
      ..add(
        'internetKeyExchangeVersion',
        internetKeyExchangeVersion,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class GetVpnConnectionDeviceSampleConfigurationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        GetVpnConnectionDeviceSampleConfigurationRequest> {
  const GetVpnConnectionDeviceSampleConfigurationRequestEc2QuerySerializer()
      : super('GetVpnConnectionDeviceSampleConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        GetVpnConnectionDeviceSampleConfigurationRequest,
        _$GetVpnConnectionDeviceSampleConfigurationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetVpnConnectionDeviceSampleConfigurationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetVpnConnectionDeviceSampleConfigurationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'VpnConnectionId':
          result.vpnConnectionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VpnConnectionDeviceTypeId':
          result.vpnConnectionDeviceTypeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'InternetKeyExchangeVersion':
          result.internetKeyExchangeVersion = (serializers.deserialize(
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
    GetVpnConnectionDeviceSampleConfigurationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetVpnConnectionDeviceSampleConfigurationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetVpnConnectionDeviceSampleConfigurationRequest(
      :vpnConnectionId,
      :vpnConnectionDeviceTypeId,
      :internetKeyExchangeVersion,
      :dryRun
    ) = object;
    if (vpnConnectionId != null) {
      result$
        ..add(const _i1.XmlElementName('VpnConnectionId'))
        ..add(serializers.serialize(
          vpnConnectionId,
          specifiedType: const FullType(String),
        ));
    }
    if (vpnConnectionDeviceTypeId != null) {
      result$
        ..add(const _i1.XmlElementName('VpnConnectionDeviceTypeId'))
        ..add(serializers.serialize(
          vpnConnectionDeviceTypeId,
          specifiedType: const FullType(String),
        ));
    }
    if (internetKeyExchangeVersion != null) {
      result$
        ..add(const _i1.XmlElementName('InternetKeyExchangeVersion'))
        ..add(serializers.serialize(
          internetKeyExchangeVersion,
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
