// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library smoke_test.config_service.model.compliance_byconfig_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance.dart'
    as _i2;

part 'compliance_byconfig_rule.g.dart';

/// Indicates whether an Config rule is compliant. A rule is compliant if all of the resources that the rule evaluated comply with it. A rule is noncompliant if any of these resources do not comply.
abstract class ComplianceByconfigRule
    with _i1.AWSEquatable<ComplianceByconfigRule>
    implements Built<ComplianceByconfigRule, ComplianceByconfigRuleBuilder> {
  /// Indicates whether an Config rule is compliant. A rule is compliant if all of the resources that the rule evaluated comply with it. A rule is noncompliant if any of these resources do not comply.
  factory ComplianceByconfigRule({
    _i2.Compliance? compliance,
    String? configRuleName,
  }) {
    return _$ComplianceByconfigRule._(
      compliance: compliance,
      configRuleName: configRuleName,
    );
  }

  /// Indicates whether an Config rule is compliant. A rule is compliant if all of the resources that the rule evaluated comply with it. A rule is noncompliant if any of these resources do not comply.
  factory ComplianceByconfigRule.build(
          [void Function(ComplianceByconfigRuleBuilder) updates]) =
      _$ComplianceByconfigRule;

  const ComplianceByconfigRule._();

  static const List<_i3.SmithySerializer> serializers = [
    ComplianceByconfigRuleAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ComplianceByconfigRuleBuilder b) {}

  /// Indicates whether the Config rule is compliant.
  _i2.Compliance? get compliance;

  /// The name of the Config rule.
  String? get configRuleName;
  @override
  List<Object?> get props => [
        compliance,
        configRuleName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ComplianceByconfigRule');
    helper.add(
      'compliance',
      compliance,
    );
    helper.add(
      'configRuleName',
      configRuleName,
    );
    return helper.toString();
  }
}

class ComplianceByconfigRuleAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ComplianceByconfigRule> {
  const ComplianceByconfigRuleAwsJson11Serializer()
      : super('ComplianceByconfigRule');

  @override
  Iterable<Type> get types => const [
        ComplianceByconfigRule,
        _$ComplianceByconfigRule,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ComplianceByconfigRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComplianceByconfigRuleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Compliance':
          if (value != null) {
            result.compliance.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Compliance),
            ) as _i2.Compliance));
          }
          break;
        case 'ConfigRuleName':
          if (value != null) {
            result.configRuleName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ComplianceByconfigRule);
    final result = <Object?>[];
    if (payload.compliance != null) {
      result
        ..add('Compliance')
        ..add(serializers.serialize(
          payload.compliance!,
          specifiedType: const FullType(_i2.Compliance),
        ));
    }
    if (payload.configRuleName != null) {
      result
        ..add('ConfigRuleName')
        ..add(serializers.serialize(
          payload.configRuleName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
