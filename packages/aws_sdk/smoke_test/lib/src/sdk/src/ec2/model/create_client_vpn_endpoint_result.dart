// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_client_vpn_endpoint_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_endpoint_status.dart';

part 'create_client_vpn_endpoint_result.g.dart';

abstract class CreateClientVpnEndpointResult
    with
        _i1.AWSEquatable<CreateClientVpnEndpointResult>
    implements
        Built<CreateClientVpnEndpointResult,
            CreateClientVpnEndpointResultBuilder> {
  factory CreateClientVpnEndpointResult({
    String? clientVpnEndpointId,
    ClientVpnEndpointStatus? status,
    String? dnsName,
  }) {
    return _$CreateClientVpnEndpointResult._(
      clientVpnEndpointId: clientVpnEndpointId,
      status: status,
      dnsName: dnsName,
    );
  }

  factory CreateClientVpnEndpointResult.build(
          [void Function(CreateClientVpnEndpointResultBuilder) updates]) =
      _$CreateClientVpnEndpointResult;

  const CreateClientVpnEndpointResult._();

  /// Constructs a [CreateClientVpnEndpointResult] from a [payload] and [response].
  factory CreateClientVpnEndpointResult.fromResponse(
    CreateClientVpnEndpointResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateClientVpnEndpointResult>>
      serializers = [CreateClientVpnEndpointResultEc2QuerySerializer()];

  /// The ID of the Client VPN endpoint.
  String? get clientVpnEndpointId;

  /// The current state of the Client VPN endpoint.
  ClientVpnEndpointStatus? get status;

  /// The DNS name to be used by clients when establishing their VPN session.
  String? get dnsName;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        status,
        dnsName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateClientVpnEndpointResult')
      ..add(
        'clientVpnEndpointId',
        clientVpnEndpointId,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'dnsName',
        dnsName,
      );
    return helper.toString();
  }
}

class CreateClientVpnEndpointResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateClientVpnEndpointResult> {
  const CreateClientVpnEndpointResultEc2QuerySerializer()
      : super('CreateClientVpnEndpointResult');

  @override
  Iterable<Type> get types => const [
        CreateClientVpnEndpointResult,
        _$CreateClientVpnEndpointResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateClientVpnEndpointResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateClientVpnEndpointResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'clientVpnEndpointId':
          result.clientVpnEndpointId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'status':
          result.status.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ClientVpnEndpointStatus),
          ) as ClientVpnEndpointStatus));
        case 'dnsName':
          result.dnsName = (serializers.deserialize(
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
    CreateClientVpnEndpointResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateClientVpnEndpointResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateClientVpnEndpointResult(
      :clientVpnEndpointId,
      :status,
      :dnsName
    ) = object;
    if (clientVpnEndpointId != null) {
      result$
        ..add(const _i2.XmlElementName('ClientVpnEndpointId'))
        ..add(serializers.serialize(
          clientVpnEndpointId,
          specifiedType: const FullType(String),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(ClientVpnEndpointStatus),
        ));
    }
    if (dnsName != null) {
      result$
        ..add(const _i2.XmlElementName('DnsName'))
        ..add(serializers.serialize(
          dnsName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
