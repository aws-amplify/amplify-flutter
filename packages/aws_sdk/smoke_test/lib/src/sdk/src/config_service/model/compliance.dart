// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.compliance; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_contributor_count.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_type.dart'
    as _i2;

part 'compliance.g.dart';

/// Indicates whether an Amazon Web Services resource or Config rule is compliant and provides the number of contributors that affect the compliance.
abstract class Compliance
    with _i1.AWSEquatable<Compliance>
    implements Built<Compliance, ComplianceBuilder> {
  /// Indicates whether an Amazon Web Services resource or Config rule is compliant and provides the number of contributors that affect the compliance.
  factory Compliance({
    _i2.ComplianceType? complianceType,
    _i3.ComplianceContributorCount? complianceContributorCount,
  }) {
    return _$Compliance._(
      complianceType: complianceType,
      complianceContributorCount: complianceContributorCount,
    );
  }

  /// Indicates whether an Amazon Web Services resource or Config rule is compliant and provides the number of contributors that affect the compliance.
  factory Compliance.build([void Function(ComplianceBuilder) updates]) =
      _$Compliance;

  const Compliance._();

  static const List<_i4.SmithySerializer<Compliance>> serializers = [
    ComplianceAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ComplianceBuilder b) {}

  /// Indicates whether an Amazon Web Services resource or Config rule is compliant.
  ///
  /// A resource is compliant if it complies with all of the Config rules that evaluate it. A resource is noncompliant if it does not comply with one or more of these rules.
  ///
  /// A rule is compliant if all of the resources that the rule evaluates comply with it. A rule is noncompliant if any of these resources do not comply.
  ///
  /// Config returns the `INSUFFICIENT_DATA` value when no evaluation results are available for the Amazon Web Services resource or Config rule.
  ///
  /// For the `Compliance` data type, Config supports only `COMPLIANT`, `NON_COMPLIANT`, and `INSUFFICIENT_DATA` values. Config does not support the `NOT_APPLICABLE` value for the `Compliance` data type.
  _i2.ComplianceType? get complianceType;

  /// The number of Amazon Web Services resources or Config rules that cause a result of `NON_COMPLIANT`, up to a maximum number.
  _i3.ComplianceContributorCount? get complianceContributorCount;
  @override
  List<Object?> get props => [
        complianceType,
        complianceContributorCount,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Compliance')
      ..add(
        'complianceType',
        complianceType,
      )
      ..add(
        'complianceContributorCount',
        complianceContributorCount,
      );
    return helper.toString();
  }
}

class ComplianceAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<Compliance> {
  const ComplianceAwsJson11Serializer() : super('Compliance');

  @override
  Iterable<Type> get types => const [
        Compliance,
        _$Compliance,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  Compliance deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComplianceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ComplianceType':
          result.complianceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ComplianceType),
          ) as _i2.ComplianceType);
        case 'ComplianceContributorCount':
          result.complianceContributorCount.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ComplianceContributorCount),
          ) as _i3.ComplianceContributorCount));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Compliance object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Compliance(:complianceType, :complianceContributorCount) = object;
    if (complianceType != null) {
      result$
        ..add('ComplianceType')
        ..add(serializers.serialize(
          complianceType,
          specifiedType: const FullType(_i2.ComplianceType),
        ));
    }
    if (complianceContributorCount != null) {
      result$
        ..add('ComplianceContributorCount')
        ..add(serializers.serialize(
          complianceContributorCount,
          specifiedType: const FullType(_i3.ComplianceContributorCount),
        ));
    }
    return result$;
  }
}
