// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.export_client_vpn_client_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'export_client_vpn_client_configuration_request.g.dart';

abstract class ExportClientVpnClientConfigurationRequest
    with
        _i1.HttpInput<ExportClientVpnClientConfigurationRequest>,
        _i2.AWSEquatable<ExportClientVpnClientConfigurationRequest>
    implements
        Built<ExportClientVpnClientConfigurationRequest,
            ExportClientVpnClientConfigurationRequestBuilder> {
  factory ExportClientVpnClientConfigurationRequest({
    String? clientVpnEndpointId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ExportClientVpnClientConfigurationRequest._(
      clientVpnEndpointId: clientVpnEndpointId,
      dryRun: dryRun,
    );
  }

  factory ExportClientVpnClientConfigurationRequest.build(
      [void Function(ExportClientVpnClientConfigurationRequestBuilder)
          updates]) = _$ExportClientVpnClientConfigurationRequest;

  const ExportClientVpnClientConfigurationRequest._();

  factory ExportClientVpnClientConfigurationRequest.fromRequest(
    ExportClientVpnClientConfigurationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<ExportClientVpnClientConfigurationRequest>>
      serializers = [
    ExportClientVpnClientConfigurationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExportClientVpnClientConfigurationRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Client VPN endpoint.
  String? get clientVpnEndpointId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ExportClientVpnClientConfigurationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ExportClientVpnClientConfigurationRequest')
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

class ExportClientVpnClientConfigurationRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ExportClientVpnClientConfigurationRequest> {
  const ExportClientVpnClientConfigurationRequestEc2QuerySerializer()
      : super('ExportClientVpnClientConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        ExportClientVpnClientConfigurationRequest,
        _$ExportClientVpnClientConfigurationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ExportClientVpnClientConfigurationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportClientVpnClientConfigurationRequestBuilder();
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
    ExportClientVpnClientConfigurationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ExportClientVpnClientConfigurationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ExportClientVpnClientConfigurationRequest(
      :clientVpnEndpointId,
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
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
