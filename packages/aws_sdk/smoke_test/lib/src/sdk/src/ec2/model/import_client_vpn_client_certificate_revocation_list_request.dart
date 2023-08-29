// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.import_client_vpn_client_certificate_revocation_list_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'import_client_vpn_client_certificate_revocation_list_request.g.dart';

abstract class ImportClientVpnClientCertificateRevocationListRequest
    with
        _i1.HttpInput<ImportClientVpnClientCertificateRevocationListRequest>,
        _i2.AWSEquatable<ImportClientVpnClientCertificateRevocationListRequest>
    implements
        Built<ImportClientVpnClientCertificateRevocationListRequest,
            ImportClientVpnClientCertificateRevocationListRequestBuilder> {
  factory ImportClientVpnClientCertificateRevocationListRequest({
    String? clientVpnEndpointId,
    String? certificateRevocationList,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ImportClientVpnClientCertificateRevocationListRequest._(
      clientVpnEndpointId: clientVpnEndpointId,
      certificateRevocationList: certificateRevocationList,
      dryRun: dryRun,
    );
  }

  factory ImportClientVpnClientCertificateRevocationListRequest.build(
      [void Function(
              ImportClientVpnClientCertificateRevocationListRequestBuilder)
          updates]) = _$ImportClientVpnClientCertificateRevocationListRequest;

  const ImportClientVpnClientCertificateRevocationListRequest._();

  factory ImportClientVpnClientCertificateRevocationListRequest.fromRequest(
    ImportClientVpnClientCertificateRevocationListRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<
              ImportClientVpnClientCertificateRevocationListRequest>>
      serializers = [
    ImportClientVpnClientCertificateRevocationListRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      ImportClientVpnClientCertificateRevocationListRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Client VPN endpoint to which the client certificate revocation list applies.
  String? get clientVpnEndpointId;

  /// The client certificate revocation list file. For more information, see [Generate a Client Certificate Revocation List](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/cvpn-working-certificates.html#cvpn-working-certificates-generate) in the _Client VPN Administrator Guide_.
  String? get certificateRevocationList;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ImportClientVpnClientCertificateRevocationListRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        certificateRevocationList,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ImportClientVpnClientCertificateRevocationListRequest')
      ..add(
        'clientVpnEndpointId',
        clientVpnEndpointId,
      )
      ..add(
        'certificateRevocationList',
        certificateRevocationList,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class ImportClientVpnClientCertificateRevocationListRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        ImportClientVpnClientCertificateRevocationListRequest> {
  const ImportClientVpnClientCertificateRevocationListRequestEc2QuerySerializer()
      : super('ImportClientVpnClientCertificateRevocationListRequest');

  @override
  Iterable<Type> get types => const [
        ImportClientVpnClientCertificateRevocationListRequest,
        _$ImportClientVpnClientCertificateRevocationListRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportClientVpnClientCertificateRevocationListRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ImportClientVpnClientCertificateRevocationListRequestBuilder();
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
        case 'CertificateRevocationList':
          result.certificateRevocationList = (serializers.deserialize(
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
    ImportClientVpnClientCertificateRevocationListRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ImportClientVpnClientCertificateRevocationListRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ImportClientVpnClientCertificateRevocationListRequest(
      :clientVpnEndpointId,
      :certificateRevocationList,
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
    if (certificateRevocationList != null) {
      result$
        ..add(const _i1.XmlElementName('CertificateRevocationList'))
        ..add(serializers.serialize(
          certificateRevocationList,
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
