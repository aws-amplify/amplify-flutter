// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.compliance; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_contributor_count.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_type.dart'
    as _i3;

part 'compliance.g.dart';

/// Indicates whether an Amazon Web Services resource or Config rule is compliant and provides the number of contributors that affect the compliance.
abstract class Compliance
    with _i1.AWSEquatable<Compliance>
    implements Built<Compliance, ComplianceBuilder> {
  /// Indicates whether an Amazon Web Services resource or Config rule is compliant and provides the number of contributors that affect the compliance.
  factory Compliance({
    _i2.ComplianceContributorCount? complianceContributorCount,
    _i3.ComplianceType? complianceType,
  }) {
    return _$Compliance._(
      complianceContributorCount: complianceContributorCount,
      complianceType: complianceType,
    );
  }

  /// Indicates whether an Amazon Web Services resource or Config rule is compliant and provides the number of contributors that affect the compliance.
  factory Compliance.build([void Function(ComplianceBuilder) updates]) =
      _$Compliance;

  const Compliance._();

  static const List<_i4.SmithySerializer> serializers = [
    ComplianceAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ComplianceBuilder b) {}

  /// The number of Amazon Web Services resources or Config rules that cause a result of `NON_COMPLIANT`, up to a maximum number.
  _i2.ComplianceContributorCount? get complianceContributorCount;

  /// Indicates whether an Amazon Web Services resource or Config rule is compliant.
  ///
  /// A resource is compliant if it complies with all of the Config rules that evaluate it. A resource is noncompliant if it does not comply with one or more of these rules.
  ///
  /// A rule is compliant if all of the resources that the rule evaluates comply with it. A rule is noncompliant if any of these resources do not comply.
  ///
  /// Config returns the `INSUFFICIENT_DATA` value when no evaluation results are available for the Amazon Web Services resource or Config rule.
  ///
  /// For the `Compliance` data type, Config supports only `COMPLIANT`, `NON_COMPLIANT`, and `INSUFFICIENT_DATA` values. Config does not support the `NOT_APPLICABLE` value for the `Compliance` data type.
  _i3.ComplianceType? get complianceType;
  @override
  List<Object?> get props => [
        complianceContributorCount,
        complianceType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Compliance');
    helper.add(
      'complianceContributorCount',
      complianceContributorCount,
    );
    helper.add(
      'complianceType',
      complianceType,
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
      switch (key) {
        case 'ComplianceContributorCount':
          if (value != null) {
            result.complianceContributorCount.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ComplianceContributorCount),
            ) as _i2.ComplianceContributorCount));
          }
          break;
        case 'ComplianceType':
          if (value != null) {
            result.complianceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ComplianceType),
            ) as _i3.ComplianceType);
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
    final payload = (object as Compliance);
    final result = <Object?>[];
    if (payload.complianceContributorCount != null) {
      result
        ..add('ComplianceContributorCount')
        ..add(serializers.serialize(
          payload.complianceContributorCount!,
          specifiedType: const FullType(_i2.ComplianceContributorCount),
        ));
    }
    if (payload.complianceType != null) {
      result
        ..add('ComplianceType')
        ..add(serializers.serialize(
          payload.complianceType!,
          specifiedType: const FullType(_i3.ComplianceType),
        ));
    }
    return result;
  }
}
