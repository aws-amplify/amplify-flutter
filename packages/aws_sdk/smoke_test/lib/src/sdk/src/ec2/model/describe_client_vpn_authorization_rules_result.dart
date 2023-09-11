// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_client_vpn_authorization_rules_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/authorization_rule.dart';

part 'describe_client_vpn_authorization_rules_result.g.dart';

abstract class DescribeClientVpnAuthorizationRulesResult
    with
        _i1.AWSEquatable<DescribeClientVpnAuthorizationRulesResult>
    implements
        Built<DescribeClientVpnAuthorizationRulesResult,
            DescribeClientVpnAuthorizationRulesResultBuilder> {
  factory DescribeClientVpnAuthorizationRulesResult({
    List<AuthorizationRule>? authorizationRules,
    String? nextToken,
  }) {
    return _$DescribeClientVpnAuthorizationRulesResult._(
      authorizationRules:
          authorizationRules == null ? null : _i2.BuiltList(authorizationRules),
      nextToken: nextToken,
    );
  }

  factory DescribeClientVpnAuthorizationRulesResult.build(
      [void Function(DescribeClientVpnAuthorizationRulesResultBuilder)
          updates]) = _$DescribeClientVpnAuthorizationRulesResult;

  const DescribeClientVpnAuthorizationRulesResult._();

  /// Constructs a [DescribeClientVpnAuthorizationRulesResult] from a [payload] and [response].
  factory DescribeClientVpnAuthorizationRulesResult.fromResponse(
    DescribeClientVpnAuthorizationRulesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeClientVpnAuthorizationRulesResult>>
      serializers = [
    DescribeClientVpnAuthorizationRulesResultEc2QuerySerializer()
  ];

  /// Information about the authorization rules.
  _i2.BuiltList<AuthorizationRule>? get authorizationRules;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        authorizationRules,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeClientVpnAuthorizationRulesResult')
          ..add(
            'authorizationRules',
            authorizationRules,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeClientVpnAuthorizationRulesResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeClientVpnAuthorizationRulesResult> {
  const DescribeClientVpnAuthorizationRulesResultEc2QuerySerializer()
      : super('DescribeClientVpnAuthorizationRulesResult');

  @override
  Iterable<Type> get types => const [
        DescribeClientVpnAuthorizationRulesResult,
        _$DescribeClientVpnAuthorizationRulesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeClientVpnAuthorizationRulesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeClientVpnAuthorizationRulesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'authorizationRule':
          result.authorizationRules.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AuthorizationRule)],
            ),
          ) as _i2.BuiltList<AuthorizationRule>));
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
    DescribeClientVpnAuthorizationRulesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeClientVpnAuthorizationRulesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeClientVpnAuthorizationRulesResult(
      :authorizationRules,
      :nextToken
    ) = object;
    if (authorizationRules != null) {
      result$
        ..add(const _i3.XmlElementName('AuthorizationRule'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          authorizationRules,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(AuthorizationRule)],
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
