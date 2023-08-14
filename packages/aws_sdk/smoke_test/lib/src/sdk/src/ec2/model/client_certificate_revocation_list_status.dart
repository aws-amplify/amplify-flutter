// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.client_certificate_revocation_list_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/client_certificate_revocation_list_status_code.dart';

part 'client_certificate_revocation_list_status.g.dart';

/// Describes the state of a client certificate revocation list.
abstract class ClientCertificateRevocationListStatus
    with
        _i1.AWSEquatable<ClientCertificateRevocationListStatus>
    implements
        Built<ClientCertificateRevocationListStatus,
            ClientCertificateRevocationListStatusBuilder> {
  /// Describes the state of a client certificate revocation list.
  factory ClientCertificateRevocationListStatus({
    ClientCertificateRevocationListStatusCode? code,
    String? message,
  }) {
    return _$ClientCertificateRevocationListStatus._(
      code: code,
      message: message,
    );
  }

  /// Describes the state of a client certificate revocation list.
  factory ClientCertificateRevocationListStatus.build(
      [void Function(ClientCertificateRevocationListStatusBuilder)
          updates]) = _$ClientCertificateRevocationListStatus;

  const ClientCertificateRevocationListStatus._();

  static const List<_i2.SmithySerializer<ClientCertificateRevocationListStatus>>
      serializers = [ClientCertificateRevocationListStatusEc2QuerySerializer()];

  /// The state of the client certificate revocation list.
  ClientCertificateRevocationListStatusCode? get code;

  /// A message about the status of the client certificate revocation list, if applicable.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ClientCertificateRevocationListStatus')
          ..add(
            'code',
            code,
          )
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class ClientCertificateRevocationListStatusEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<ClientCertificateRevocationListStatus> {
  const ClientCertificateRevocationListStatusEc2QuerySerializer()
      : super('ClientCertificateRevocationListStatus');

  @override
  Iterable<Type> get types => const [
        ClientCertificateRevocationListStatus,
        _$ClientCertificateRevocationListStatus,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClientCertificateRevocationListStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientCertificateRevocationListStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'code':
          result.code = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(ClientCertificateRevocationListStatusCode),
          ) as ClientCertificateRevocationListStatusCode);
        case 'message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ClientCertificateRevocationListStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ClientCertificateRevocationListStatusResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ClientCertificateRevocationListStatus(:code, :message) = object;
    if (code != null) {
      result$
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          code,
          specifiedType: const FullType.nullable(
              ClientCertificateRevocationListStatusCode),
        ));
    }
    if (message != null) {
      result$
        ..add(const _i2.XmlElementName('Message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
