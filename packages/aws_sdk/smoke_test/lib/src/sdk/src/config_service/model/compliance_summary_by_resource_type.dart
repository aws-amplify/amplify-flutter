// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.compliance_summary_by_resource_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_summary.dart';

part 'compliance_summary_by_resource_type.g.dart';

/// The number of Amazon Web Services resources of a specific type that are compliant or noncompliant, up to a maximum of 100 for each.
abstract class ComplianceSummaryByResourceType
    with
        _i1.AWSEquatable<ComplianceSummaryByResourceType>
    implements
        Built<ComplianceSummaryByResourceType,
            ComplianceSummaryByResourceTypeBuilder> {
  /// The number of Amazon Web Services resources of a specific type that are compliant or noncompliant, up to a maximum of 100 for each.
  factory ComplianceSummaryByResourceType({
    String? resourceType,
    ComplianceSummary? complianceSummary,
  }) {
    return _$ComplianceSummaryByResourceType._(
      resourceType: resourceType,
      complianceSummary: complianceSummary,
    );
  }

  /// The number of Amazon Web Services resources of a specific type that are compliant or noncompliant, up to a maximum of 100 for each.
  factory ComplianceSummaryByResourceType.build(
          [void Function(ComplianceSummaryByResourceTypeBuilder) updates]) =
      _$ComplianceSummaryByResourceType;

  const ComplianceSummaryByResourceType._();

  static const List<_i2.SmithySerializer<ComplianceSummaryByResourceType>>
      serializers = [ComplianceSummaryByResourceTypeAwsJson11Serializer()];

  /// The type of Amazon Web Services resource.
  String? get resourceType;

  /// The number of Amazon Web Services resources that are compliant or noncompliant, up to a maximum of 100 for each.
  ComplianceSummary? get complianceSummary;
  @override
  List<Object?> get props => [
        resourceType,
        complianceSummary,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ComplianceSummaryByResourceType')
          ..add(
            'resourceType',
            resourceType,
          )
          ..add(
            'complianceSummary',
            complianceSummary,
          );
    return helper.toString();
  }
}

class ComplianceSummaryByResourceTypeAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ComplianceSummaryByResourceType> {
  const ComplianceSummaryByResourceTypeAwsJson11Serializer()
      : super('ComplianceSummaryByResourceType');

  @override
  Iterable<Type> get types => const [
        ComplianceSummaryByResourceType,
        _$ComplianceSummaryByResourceType,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ComplianceSummaryByResourceType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComplianceSummaryByResourceTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ComplianceSummary':
          result.complianceSummary.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ComplianceSummary),
          ) as ComplianceSummary));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ComplianceSummaryByResourceType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ComplianceSummaryByResourceType(:resourceType, :complianceSummary) =
        object;
    if (resourceType != null) {
      result$
        ..add('ResourceType')
        ..add(serializers.serialize(
          resourceType,
          specifiedType: const FullType(String),
        ));
    }
    if (complianceSummary != null) {
      result$
        ..add('ComplianceSummary')
        ..add(serializers.serialize(
          complianceSummary,
          specifiedType: const FullType(ComplianceSummary),
        ));
    }
    return result$;
  }
}
