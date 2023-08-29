// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.authorize_client_vpn_ingress_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_authorization_rule_status.dart';

part 'authorize_client_vpn_ingress_result.g.dart';

abstract class AuthorizeClientVpnIngressResult
    with
        _i1.AWSEquatable<AuthorizeClientVpnIngressResult>
    implements
        Built<AuthorizeClientVpnIngressResult,
            AuthorizeClientVpnIngressResultBuilder> {
  factory AuthorizeClientVpnIngressResult(
      {ClientVpnAuthorizationRuleStatus? status}) {
    return _$AuthorizeClientVpnIngressResult._(status: status);
  }

  factory AuthorizeClientVpnIngressResult.build(
          [void Function(AuthorizeClientVpnIngressResultBuilder) updates]) =
      _$AuthorizeClientVpnIngressResult;

  const AuthorizeClientVpnIngressResult._();

  /// Constructs a [AuthorizeClientVpnIngressResult] from a [payload] and [response].
  factory AuthorizeClientVpnIngressResult.fromResponse(
    AuthorizeClientVpnIngressResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<AuthorizeClientVpnIngressResult>>
      serializers = [AuthorizeClientVpnIngressResultEc2QuerySerializer()];

  /// The current state of the authorization rule.
  ClientVpnAuthorizationRuleStatus? get status;
  @override
  List<Object?> get props => [status];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AuthorizeClientVpnIngressResult')
          ..add(
            'status',
            status,
          );
    return helper.toString();
  }
}

class AuthorizeClientVpnIngressResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AuthorizeClientVpnIngressResult> {
  const AuthorizeClientVpnIngressResultEc2QuerySerializer()
      : super('AuthorizeClientVpnIngressResult');

  @override
  Iterable<Type> get types => const [
        AuthorizeClientVpnIngressResult,
        _$AuthorizeClientVpnIngressResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AuthorizeClientVpnIngressResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthorizeClientVpnIngressResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'status':
          result.status.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ClientVpnAuthorizationRuleStatus),
          ) as ClientVpnAuthorizationRuleStatus));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AuthorizeClientVpnIngressResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AuthorizeClientVpnIngressResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AuthorizeClientVpnIngressResult(:status) = object;
    if (status != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(ClientVpnAuthorizationRuleStatus),
        ));
    }
    return result$;
  }
}
