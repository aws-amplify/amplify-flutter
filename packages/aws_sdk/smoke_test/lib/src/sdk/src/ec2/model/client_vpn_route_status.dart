// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.client_vpn_route_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_route_status_code.dart';

part 'client_vpn_route_status.g.dart';

/// Describes the state of a Client VPN endpoint route.
abstract class ClientVpnRouteStatus
    with _i1.AWSEquatable<ClientVpnRouteStatus>
    implements Built<ClientVpnRouteStatus, ClientVpnRouteStatusBuilder> {
  /// Describes the state of a Client VPN endpoint route.
  factory ClientVpnRouteStatus({
    ClientVpnRouteStatusCode? code,
    String? message,
  }) {
    return _$ClientVpnRouteStatus._(
      code: code,
      message: message,
    );
  }

  /// Describes the state of a Client VPN endpoint route.
  factory ClientVpnRouteStatus.build(
          [void Function(ClientVpnRouteStatusBuilder) updates]) =
      _$ClientVpnRouteStatus;

  const ClientVpnRouteStatus._();

  static const List<_i2.SmithySerializer<ClientVpnRouteStatus>> serializers = [
    ClientVpnRouteStatusEc2QuerySerializer()
  ];

  /// The state of the Client VPN endpoint route.
  ClientVpnRouteStatusCode? get code;

  /// A message about the status of the Client VPN endpoint route, if applicable.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClientVpnRouteStatus')
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

class ClientVpnRouteStatusEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ClientVpnRouteStatus> {
  const ClientVpnRouteStatusEc2QuerySerializer()
      : super('ClientVpnRouteStatus');

  @override
  Iterable<Type> get types => const [
        ClientVpnRouteStatus,
        _$ClientVpnRouteStatus,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClientVpnRouteStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientVpnRouteStatusBuilder();
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
            specifiedType: const FullType(ClientVpnRouteStatusCode),
          ) as ClientVpnRouteStatusCode);
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
    ClientVpnRouteStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ClientVpnRouteStatusResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ClientVpnRouteStatus(:code, :message) = object;
    if (code != null) {
      result$
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          code,
          specifiedType: const FullType(ClientVpnRouteStatusCode),
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
