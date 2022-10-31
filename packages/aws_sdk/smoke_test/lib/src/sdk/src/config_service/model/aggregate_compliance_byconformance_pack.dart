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

library smoke_test.config_service.model.aggregate_compliance_byconformance_pack; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_conformance_pack_compliance.dart'
    as _i2;

part 'aggregate_compliance_byconformance_pack.g.dart';

/// Provides aggregate compliance of the conformance pack. Indicates whether a conformance pack is compliant based on the name of the conformance pack, account ID, and region.
///
/// A conformance pack is compliant if all of the rules in a conformance packs are compliant. It is noncompliant if any of the rules are not compliant. The compliance status of a conformance pack is INSUFFICIENT\_DATA only if all rules within a conformance pack cannot be evaluated due to insufficient data. If some of the rules in a conformance pack are compliant but the compliance status of other rules in that same conformance pack is INSUFFICIENT\_DATA, the conformance pack shows compliant.
abstract class AggregateComplianceByconformancePack
    with
        _i1.AWSEquatable<AggregateComplianceByconformancePack>
    implements
        Built<AggregateComplianceByconformancePack,
            AggregateComplianceByconformancePackBuilder> {
  /// Provides aggregate compliance of the conformance pack. Indicates whether a conformance pack is compliant based on the name of the conformance pack, account ID, and region.
  ///
  /// A conformance pack is compliant if all of the rules in a conformance packs are compliant. It is noncompliant if any of the rules are not compliant. The compliance status of a conformance pack is INSUFFICIENT\_DATA only if all rules within a conformance pack cannot be evaluated due to insufficient data. If some of the rules in a conformance pack are compliant but the compliance status of other rules in that same conformance pack is INSUFFICIENT\_DATA, the conformance pack shows compliant.
  factory AggregateComplianceByconformancePack({
    String? accountId,
    String? awsRegion,
    _i2.AggregateConformancePackCompliance? compliance,
    String? conformancePackName,
  }) {
    return _$AggregateComplianceByconformancePack._(
      accountId: accountId,
      awsRegion: awsRegion,
      compliance: compliance,
      conformancePackName: conformancePackName,
    );
  }

  /// Provides aggregate compliance of the conformance pack. Indicates whether a conformance pack is compliant based on the name of the conformance pack, account ID, and region.
  ///
  /// A conformance pack is compliant if all of the rules in a conformance packs are compliant. It is noncompliant if any of the rules are not compliant. The compliance status of a conformance pack is INSUFFICIENT\_DATA only if all rules within a conformance pack cannot be evaluated due to insufficient data. If some of the rules in a conformance pack are compliant but the compliance status of other rules in that same conformance pack is INSUFFICIENT\_DATA, the conformance pack shows compliant.
  factory AggregateComplianceByconformancePack.build(
      [void Function(AggregateComplianceByconformancePackBuilder)
          updates]) = _$AggregateComplianceByconformancePack;

  const AggregateComplianceByconformancePack._();

  static const List<_i3.SmithySerializer> serializers = [
    AggregateComplianceByconformancePackAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AggregateComplianceByconformancePackBuilder b) {}

  /// The 12-digit Amazon Web Services account ID of the source account.
  String? get accountId;

  /// The source Amazon Web Services Region from where the data is aggregated.
  String? get awsRegion;

  /// The compliance status of the conformance pack.
  _i2.AggregateConformancePackCompliance? get compliance;

  /// The name of the conformance pack.
  String? get conformancePackName;
  @override
  List<Object?> get props => [
        accountId,
        awsRegion,
        compliance,
        conformancePackName,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AggregateComplianceByconformancePack');
    helper.add(
      'accountId',
      accountId,
    );
    helper.add(
      'awsRegion',
      awsRegion,
    );
    helper.add(
      'compliance',
      compliance,
    );
    helper.add(
      'conformancePackName',
      conformancePackName,
    );
    return helper.toString();
  }
}

class AggregateComplianceByconformancePackAwsJson11Serializer extends _i3
    .StructuredSmithySerializer<AggregateComplianceByconformancePack> {
  const AggregateComplianceByconformancePackAwsJson11Serializer()
      : super('AggregateComplianceByconformancePack');

  @override
  Iterable<Type> get types => const [
        AggregateComplianceByconformancePack,
        _$AggregateComplianceByconformancePack,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  AggregateComplianceByconformancePack deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AggregateComplianceByconformancePackBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AccountId':
          if (value != null) {
            result.accountId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'AwsRegion':
          if (value != null) {
            result.awsRegion = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Compliance':
          if (value != null) {
            result.compliance.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.AggregateConformancePackCompliance),
            ) as _i2.AggregateConformancePackCompliance));
          }
          break;
        case 'ConformancePackName':
          if (value != null) {
            result.conformancePackName = (serializers.deserialize(
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
    final payload = (object as AggregateComplianceByconformancePack);
    final result = <Object?>[];
    if (payload.accountId != null) {
      result
        ..add('AccountId')
        ..add(serializers.serialize(
          payload.accountId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.awsRegion != null) {
      result
        ..add('AwsRegion')
        ..add(serializers.serialize(
          payload.awsRegion!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.compliance != null) {
      result
        ..add('Compliance')
        ..add(serializers.serialize(
          payload.compliance!,
          specifiedType: const FullType(_i2.AggregateConformancePackCompliance),
        ));
    }
    if (payload.conformancePackName != null) {
      result
        ..add('ConformancePackName')
        ..add(serializers.serialize(
          payload.conformancePackName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
