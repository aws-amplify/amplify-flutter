// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.client_vpn_authorization_rule_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_authorization_rule_status_code.dart';

part 'client_vpn_authorization_rule_status.g.dart';

/// Describes the state of an authorization rule.
abstract class ClientVpnAuthorizationRuleStatus
    with
        _i1.AWSEquatable<ClientVpnAuthorizationRuleStatus>
    implements
        Built<ClientVpnAuthorizationRuleStatus,
            ClientVpnAuthorizationRuleStatusBuilder> {
  /// Describes the state of an authorization rule.
  factory ClientVpnAuthorizationRuleStatus({
    ClientVpnAuthorizationRuleStatusCode? code,
    String? message,
  }) {
    return _$ClientVpnAuthorizationRuleStatus._(
      code: code,
      message: message,
    );
  }

  /// Describes the state of an authorization rule.
  factory ClientVpnAuthorizationRuleStatus.build(
          [void Function(ClientVpnAuthorizationRuleStatusBuilder) updates]) =
      _$ClientVpnAuthorizationRuleStatus;

  const ClientVpnAuthorizationRuleStatus._();

  static const List<_i2.SmithySerializer<ClientVpnAuthorizationRuleStatus>>
      serializers = [ClientVpnAuthorizationRuleStatusEc2QuerySerializer()];

  /// The state of the authorization rule.
  ClientVpnAuthorizationRuleStatusCode? get code;

  /// A message about the status of the authorization rule, if applicable.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ClientVpnAuthorizationRuleStatus')
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

class ClientVpnAuthorizationRuleStatusEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ClientVpnAuthorizationRuleStatus> {
  const ClientVpnAuthorizationRuleStatusEc2QuerySerializer()
      : super('ClientVpnAuthorizationRuleStatus');

  @override
  Iterable<Type> get types => const [
        ClientVpnAuthorizationRuleStatus,
        _$ClientVpnAuthorizationRuleStatus,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClientVpnAuthorizationRuleStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientVpnAuthorizationRuleStatusBuilder();
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
            specifiedType: const FullType(ClientVpnAuthorizationRuleStatusCode),
          ) as ClientVpnAuthorizationRuleStatusCode);
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
    ClientVpnAuthorizationRuleStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ClientVpnAuthorizationRuleStatusResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ClientVpnAuthorizationRuleStatus(:code, :message) = object;
    if (code != null) {
      result$
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          code,
          specifiedType:
              const FullType.nullable(ClientVpnAuthorizationRuleStatusCode),
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
