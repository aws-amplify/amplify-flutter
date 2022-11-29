// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.compliance_summary_by_resource_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_summary.dart'
    as _i2;

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
    _i2.ComplianceSummary? complianceSummary,
    String? resourceType,
  }) {
    return _$ComplianceSummaryByResourceType._(
      complianceSummary: complianceSummary,
      resourceType: resourceType,
    );
  }

  /// The number of Amazon Web Services resources of a specific type that are compliant or noncompliant, up to a maximum of 100 for each.
  factory ComplianceSummaryByResourceType.build(
          [void Function(ComplianceSummaryByResourceTypeBuilder) updates]) =
      _$ComplianceSummaryByResourceType;

  const ComplianceSummaryByResourceType._();

  static const List<_i3.SmithySerializer> serializers = [
    ComplianceSummaryByResourceTypeAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ComplianceSummaryByResourceTypeBuilder b) {}

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
        newBuiltValueToStringHelper('ComplianceSummaryByResourceType');
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

class ComplianceSummaryByResourceTypeAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ComplianceSummaryByResourceType> {
  const ComplianceSummaryByResourceTypeAwsJson11Serializer()
      : super('ComplianceSummaryByResourceType');

  @override
  Iterable<Type> get types => const [
        ComplianceSummaryByResourceType,
        _$ComplianceSummaryByResourceType,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
    final payload = (object as ComplianceSummaryByResourceType);
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
