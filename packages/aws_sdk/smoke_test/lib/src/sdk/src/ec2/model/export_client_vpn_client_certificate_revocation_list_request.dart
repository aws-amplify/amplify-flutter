// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.export_client_vpn_client_certificate_revocation_list_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'export_client_vpn_client_certificate_revocation_list_request.g.dart';

abstract class ExportClientVpnClientCertificateRevocationListRequest
    with
        _i1.HttpInput<ExportClientVpnClientCertificateRevocationListRequest>,
        _i2.AWSEquatable<ExportClientVpnClientCertificateRevocationListRequest>
    implements
        Built<ExportClientVpnClientCertificateRevocationListRequest,
            ExportClientVpnClientCertificateRevocationListRequestBuilder> {
  factory ExportClientVpnClientCertificateRevocationListRequest({
    String? clientVpnEndpointId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ExportClientVpnClientCertificateRevocationListRequest._(
      clientVpnEndpointId: clientVpnEndpointId,
      dryRun: dryRun,
    );
  }

  factory ExportClientVpnClientCertificateRevocationListRequest.build(
      [void Function(
              ExportClientVpnClientCertificateRevocationListRequestBuilder)
          updates]) = _$ExportClientVpnClientCertificateRevocationListRequest;

  const ExportClientVpnClientCertificateRevocationListRequest._();

  factory ExportClientVpnClientCertificateRevocationListRequest.fromRequest(
    ExportClientVpnClientCertificateRevocationListRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<
              ExportClientVpnClientCertificateRevocationListRequest>>
      serializers = [
    ExportClientVpnClientCertificateRevocationListRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      ExportClientVpnClientCertificateRevocationListRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Client VPN endpoint.
  String? get clientVpnEndpointId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ExportClientVpnClientCertificateRevocationListRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ExportClientVpnClientCertificateRevocationListRequest')
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

class ExportClientVpnClientCertificateRevocationListRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        ExportClientVpnClientCertificateRevocationListRequest> {
  const ExportClientVpnClientCertificateRevocationListRequestEc2QuerySerializer()
      : super('ExportClientVpnClientCertificateRevocationListRequest');

  @override
  Iterable<Type> get types => const [
        ExportClientVpnClientCertificateRevocationListRequest,
        _$ExportClientVpnClientCertificateRevocationListRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ExportClientVpnClientCertificateRevocationListRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ExportClientVpnClientCertificateRevocationListRequestBuilder();
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
    ExportClientVpnClientCertificateRevocationListRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ExportClientVpnClientCertificateRevocationListRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ExportClientVpnClientCertificateRevocationListRequest(
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
