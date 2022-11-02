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

library smoke_test.config_service.model.compliance_summary_byresource_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_summary.dart'
    as _i2;

part 'compliance_summary_byresource_type.g.dart';

/// The number of Amazon Web Services resources of a specific type that are compliant or noncompliant, up to a maximum of 100 for each.
abstract class ComplianceSummaryByresourceType
    with
        _i1.AWSEquatable<ComplianceSummaryByresourceType>
    implements
        Built<ComplianceSummaryByresourceType,
            ComplianceSummaryByresourceTypeBuilder> {
  /// The number of Amazon Web Services resources of a specific type that are compliant or noncompliant, up to a maximum of 100 for each.
  factory ComplianceSummaryByresourceType({
    _i2.ComplianceSummary? complianceSummary,
    String? resourceType,
  }) {
    return _$ComplianceSummaryByresourceType._(
      complianceSummary: complianceSummary,
      resourceType: resourceType,
    );
  }

  /// The number of Amazon Web Services resources of a specific type that are compliant or noncompliant, up to a maximum of 100 for each.
  factory ComplianceSummaryByresourceType.build(
          [void Function(ComplianceSummaryByresourceTypeBuilder) updates]) =
      _$ComplianceSummaryByresourceType;

  const ComplianceSummaryByresourceType._();

  static const List<_i3.SmithySerializer> serializers = [
    ComplianceSummaryByresourceTypeAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ComplianceSummaryByresourceTypeBuilder b) {}

  /// The number of Amazon Web Services resources that are compliant or noncompliant, up to a maximum of 100 for each.
  _i2.ComplianceSummary? get complianceSummary;

  /// The type of Amazon Web Services resource.
  String? get resourceType;
  @override
  List<Object?> get props => [
        complianceSummary,
        resourceType,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ComplianceSummaryByresourceType');
    helper.add(
      'complianceSummary',
      complianceSummary,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    return helper.toString();
  }
}

class ComplianceSummaryByresourceTypeAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ComplianceSummaryByresourceType> {
  const ComplianceSummaryByresourceTypeAwsJson11Serializer()
      : super('ComplianceSummaryByresourceType');

  @override
  Iterable<Type> get types => const [
        ComplianceSummaryByresourceType,
        _$ComplianceSummaryByresourceType,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ComplianceSummaryByresourceType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComplianceSummaryByresourceTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ComplianceSummary':
          if (value != null) {
            result.complianceSummary.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ComplianceSummary),
            ) as _i2.ComplianceSummary));
          }
          break;
        case 'ResourceType':
          if (value != null) {
            result.resourceType = (serializers.deserialize(
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
    final payload = (object as ComplianceSummaryByresourceType);
    final result = <Object?>[];
    if (payload.complianceSummary != null) {
      result
        ..add('ComplianceSummary')
        ..add(serializers.serialize(
          payload.complianceSummary!,
          specifiedType: const FullType(_i2.ComplianceSummary),
        ));
    }
    if (payload.resourceType != null) {
      result
        ..add('ResourceType')
        ..add(serializers.serialize(
          payload.resourceType!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
