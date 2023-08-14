// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.security_group_rule_update; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_rule_request.dart';

part 'security_group_rule_update.g.dart';

/// Describes an update to a security group rule.
abstract class SecurityGroupRuleUpdate
    with _i1.AWSEquatable<SecurityGroupRuleUpdate>
    implements Built<SecurityGroupRuleUpdate, SecurityGroupRuleUpdateBuilder> {
  /// Describes an update to a security group rule.
  factory SecurityGroupRuleUpdate({
    String? securityGroupRuleId,
    SecurityGroupRuleRequest? securityGroupRule,
  }) {
    return _$SecurityGroupRuleUpdate._(
      securityGroupRuleId: securityGroupRuleId,
      securityGroupRule: securityGroupRule,
    );
  }

  /// Describes an update to a security group rule.
  factory SecurityGroupRuleUpdate.build(
          [void Function(SecurityGroupRuleUpdateBuilder) updates]) =
      _$SecurityGroupRuleUpdate;

  const SecurityGroupRuleUpdate._();

  static const List<_i2.SmithySerializer<SecurityGroupRuleUpdate>> serializers =
      [SecurityGroupRuleUpdateEc2QuerySerializer()];

  /// The ID of the security group rule.
  String? get securityGroupRuleId;

  /// Information about the security group rule.
  SecurityGroupRuleRequest? get securityGroupRule;
  @override
  List<Object?> get props => [
        securityGroupRuleId,
        securityGroupRule,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SecurityGroupRuleUpdate')
      ..add(
        'securityGroupRuleId',
        securityGroupRuleId,
      )
      ..add(
        'securityGroupRule',
        securityGroupRule,
      );
    return helper.toString();
  }
}

class SecurityGroupRuleUpdateEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SecurityGroupRuleUpdate> {
  const SecurityGroupRuleUpdateEc2QuerySerializer()
      : super('SecurityGroupRuleUpdate');

  @override
  Iterable<Type> get types => const [
        SecurityGroupRuleUpdate,
        _$SecurityGroupRuleUpdate,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SecurityGroupRuleUpdate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SecurityGroupRuleUpdateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SecurityGroupRuleId':
          result.securityGroupRuleId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SecurityGroupRule':
          result.securityGroupRule.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SecurityGroupRuleRequest),
          ) as SecurityGroupRuleRequest));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SecurityGroupRuleUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SecurityGroupRuleUpdateResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SecurityGroupRuleUpdate(:securityGroupRuleId, :securityGroupRule) =
        object;
    if (securityGroupRuleId != null) {
      result$
        ..add(const _i2.XmlElementName('SecurityGroupRuleId'))
        ..add(serializers.serialize(
          securityGroupRuleId,
          specifiedType: const FullType(String),
        ));
    }
    if (securityGroupRule != null) {
      result$
        ..add(const _i2.XmlElementName('SecurityGroupRule'))
        ..add(serializers.serialize(
          securityGroupRule,
          specifiedType: const FullType(SecurityGroupRuleRequest),
        ));
    }
    return result$;
  }
}
