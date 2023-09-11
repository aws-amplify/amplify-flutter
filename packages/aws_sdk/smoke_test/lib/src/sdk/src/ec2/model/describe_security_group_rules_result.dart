// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_security_group_rules_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_rule.dart';

part 'describe_security_group_rules_result.g.dart';

abstract class DescribeSecurityGroupRulesResult
    with
        _i1.AWSEquatable<DescribeSecurityGroupRulesResult>
    implements
        Built<DescribeSecurityGroupRulesResult,
            DescribeSecurityGroupRulesResultBuilder> {
  factory DescribeSecurityGroupRulesResult({
    List<SecurityGroupRule>? securityGroupRules,
    String? nextToken,
  }) {
    return _$DescribeSecurityGroupRulesResult._(
      securityGroupRules:
          securityGroupRules == null ? null : _i2.BuiltList(securityGroupRules),
      nextToken: nextToken,
    );
  }

  factory DescribeSecurityGroupRulesResult.build(
          [void Function(DescribeSecurityGroupRulesResultBuilder) updates]) =
      _$DescribeSecurityGroupRulesResult;

  const DescribeSecurityGroupRulesResult._();

  /// Constructs a [DescribeSecurityGroupRulesResult] from a [payload] and [response].
  factory DescribeSecurityGroupRulesResult.fromResponse(
    DescribeSecurityGroupRulesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeSecurityGroupRulesResult>>
      serializers = [DescribeSecurityGroupRulesResultEc2QuerySerializer()];

  /// Information about security group rules.
  _i2.BuiltList<SecurityGroupRule>? get securityGroupRules;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        securityGroupRules,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSecurityGroupRulesResult')
          ..add(
            'securityGroupRules',
            securityGroupRules,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeSecurityGroupRulesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeSecurityGroupRulesResult> {
  const DescribeSecurityGroupRulesResultEc2QuerySerializer()
      : super('DescribeSecurityGroupRulesResult');

  @override
  Iterable<Type> get types => const [
        DescribeSecurityGroupRulesResult,
        _$DescribeSecurityGroupRulesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSecurityGroupRulesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSecurityGroupRulesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'securityGroupRuleSet':
          result.securityGroupRules.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(SecurityGroupRule)],
            ),
          ) as _i2.BuiltList<SecurityGroupRule>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
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
    DescribeSecurityGroupRulesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeSecurityGroupRulesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeSecurityGroupRulesResult(:securityGroupRules, :nextToken) =
        object;
    if (securityGroupRules != null) {
      result$
        ..add(const _i3.XmlElementName('SecurityGroupRuleSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroupRules,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(SecurityGroupRule)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
