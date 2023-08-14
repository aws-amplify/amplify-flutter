// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.client_vpn_endpoint_attribute_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_endpoint_attribute_status_code.dart';

part 'client_vpn_endpoint_attribute_status.g.dart';

/// Describes the status of the Client VPN endpoint attribute.
abstract class ClientVpnEndpointAttributeStatus
    with
        _i1.AWSEquatable<ClientVpnEndpointAttributeStatus>
    implements
        Built<ClientVpnEndpointAttributeStatus,
            ClientVpnEndpointAttributeStatusBuilder> {
  /// Describes the status of the Client VPN endpoint attribute.
  factory ClientVpnEndpointAttributeStatus({
    ClientVpnEndpointAttributeStatusCode? code,
    String? message,
  }) {
    return _$ClientVpnEndpointAttributeStatus._(
      code: code,
      message: message,
    );
  }

  /// Describes the status of the Client VPN endpoint attribute.
  factory ClientVpnEndpointAttributeStatus.build(
          [void Function(ClientVpnEndpointAttributeStatusBuilder) updates]) =
      _$ClientVpnEndpointAttributeStatus;

  const ClientVpnEndpointAttributeStatus._();

  static const List<_i2.SmithySerializer<ClientVpnEndpointAttributeStatus>>
      serializers = [ClientVpnEndpointAttributeStatusEc2QuerySerializer()];

  /// The status code.
  ClientVpnEndpointAttributeStatusCode? get code;

  /// The status message.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ClientVpnEndpointAttributeStatus')
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

class ClientVpnEndpointAttributeStatusEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ClientVpnEndpointAttributeStatus> {
  const ClientVpnEndpointAttributeStatusEc2QuerySerializer()
      : super('ClientVpnEndpointAttributeStatus');

  @override
  Iterable<Type> get types => const [
        ClientVpnEndpointAttributeStatus,
        _$ClientVpnEndpointAttributeStatus,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClientVpnEndpointAttributeStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientVpnEndpointAttributeStatusBuilder();
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
            specifiedType: const FullType(ClientVpnEndpointAttributeStatusCode),
          ) as ClientVpnEndpointAttributeStatusCode);
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
    ClientVpnEndpointAttributeStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ClientVpnEndpointAttributeStatusResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ClientVpnEndpointAttributeStatus(:code, :message) = object;
    if (code != null) {
      result$
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          code,
          specifiedType:
              const FullType.nullable(ClientVpnEndpointAttributeStatusCode),
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
