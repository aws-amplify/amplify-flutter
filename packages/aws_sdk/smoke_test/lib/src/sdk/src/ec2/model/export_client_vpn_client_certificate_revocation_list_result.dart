// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.export_client_vpn_client_certificate_revocation_list_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/client_certificate_revocation_list_status.dart';

part 'export_client_vpn_client_certificate_revocation_list_result.g.dart';

abstract class ExportClientVpnClientCertificateRevocationListResult
    with
        _i1.AWSEquatable<ExportClientVpnClientCertificateRevocationListResult>
    implements
        Built<ExportClientVpnClientCertificateRevocationListResult,
            ExportClientVpnClientCertificateRevocationListResultBuilder> {
  factory ExportClientVpnClientCertificateRevocationListResult({
    String? certificateRevocationList,
    ClientCertificateRevocationListStatus? status,
  }) {
    return _$ExportClientVpnClientCertificateRevocationListResult._(
      certificateRevocationList: certificateRevocationList,
      status: status,
    );
  }

  factory ExportClientVpnClientCertificateRevocationListResult.build(
      [void Function(
              ExportClientVpnClientCertificateRevocationListResultBuilder)
          updates]) = _$ExportClientVpnClientCertificateRevocationListResult;

  const ExportClientVpnClientCertificateRevocationListResult._();

  /// Constructs a [ExportClientVpnClientCertificateRevocationListResult] from a [payload] and [response].
  factory ExportClientVpnClientCertificateRevocationListResult.fromResponse(
    ExportClientVpnClientCertificateRevocationListResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
      _i2.SmithySerializer<
          ExportClientVpnClientCertificateRevocationListResult>> serializers = [
    ExportClientVpnClientCertificateRevocationListResultEc2QuerySerializer()
  ];

  /// Information about the client certificate revocation list.
  String? get certificateRevocationList;

  /// The current state of the client certificate revocation list.
  ClientCertificateRevocationListStatus? get status;
  @override
  List<Object?> get props => [
        certificateRevocationList,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ExportClientVpnClientCertificateRevocationListResult')
      ..add(
        'certificateRevocationList',
        certificateRevocationList,
      )
      ..add(
        'status',
        status,
      );
    return helper.toString();
  }
}

class ExportClientVpnClientCertificateRevocationListResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        ExportClientVpnClientCertificateRevocationListResult> {
  const ExportClientVpnClientCertificateRevocationListResultEc2QuerySerializer()
      : super('ExportClientVpnClientCertificateRevocationListResult');

  @override
  Iterable<Type> get types => const [
        ExportClientVpnClientCertificateRevocationListResult,
        _$ExportClientVpnClientCertificateRevocationListResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ExportClientVpnClientCertificateRevocationListResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ExportClientVpnClientCertificateRevocationListResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'certificateRevocationList':
          result.certificateRevocationList = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'status':
          result.status.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(ClientCertificateRevocationListStatus),
          ) as ClientCertificateRevocationListStatus));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ExportClientVpnClientCertificateRevocationListResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ExportClientVpnClientCertificateRevocationListResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ExportClientVpnClientCertificateRevocationListResult(
      :certificateRevocationList,
      :status
    ) = object;
    if (certificateRevocationList != null) {
      result$
        ..add(const _i2.XmlElementName('CertificateRevocationList'))
        ..add(serializers.serialize(
          certificateRevocationList,
          specifiedType: const FullType(String),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(ClientCertificateRevocationListStatus),
        ));
    }
    return result$;
  }
}
