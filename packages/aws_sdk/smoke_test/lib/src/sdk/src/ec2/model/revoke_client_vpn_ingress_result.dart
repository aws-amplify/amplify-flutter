// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.revoke_client_vpn_ingress_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_authorization_rule_status.dart';

part 'revoke_client_vpn_ingress_result.g.dart';

abstract class RevokeClientVpnIngressResult
    with
        _i1.AWSEquatable<RevokeClientVpnIngressResult>
    implements
        Built<RevokeClientVpnIngressResult,
            RevokeClientVpnIngressResultBuilder> {
  factory RevokeClientVpnIngressResult(
      {ClientVpnAuthorizationRuleStatus? status}) {
    return _$RevokeClientVpnIngressResult._(status: status);
  }

  factory RevokeClientVpnIngressResult.build(
          [void Function(RevokeClientVpnIngressResultBuilder) updates]) =
      _$RevokeClientVpnIngressResult;

  const RevokeClientVpnIngressResult._();

  /// Constructs a [RevokeClientVpnIngressResult] from a [payload] and [response].
  factory RevokeClientVpnIngressResult.fromResponse(
    RevokeClientVpnIngressResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<RevokeClientVpnIngressResult>>
      serializers = [RevokeClientVpnIngressResultEc2QuerySerializer()];

  /// The current state of the authorization rule.
  ClientVpnAuthorizationRuleStatus? get status;
  @override
  List<Object?> get props => [status];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RevokeClientVpnIngressResult')
      ..add(
        'status',
        status,
      );
    return helper.toString();
  }
}

class RevokeClientVpnIngressResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<RevokeClientVpnIngressResult> {
  const RevokeClientVpnIngressResultEc2QuerySerializer()
      : super('RevokeClientVpnIngressResult');

  @override
  Iterable<Type> get types => const [
        RevokeClientVpnIngressResult,
        _$RevokeClientVpnIngressResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RevokeClientVpnIngressResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RevokeClientVpnIngressResultBuilder();
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
    RevokeClientVpnIngressResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RevokeClientVpnIngressResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RevokeClientVpnIngressResult(:status) = object;
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
