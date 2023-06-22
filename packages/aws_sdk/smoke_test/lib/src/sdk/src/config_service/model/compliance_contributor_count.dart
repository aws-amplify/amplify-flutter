// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.compliance_contributor_count; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'compliance_contributor_count.g.dart';

/// The number of Amazon Web Services resources or Config rules responsible for the current compliance of the item, up to a maximum number.
abstract class ComplianceContributorCount
    with _i1.AWSEquatable<ComplianceContributorCount>
    implements
        Built<ComplianceContributorCount, ComplianceContributorCountBuilder> {
  /// The number of Amazon Web Services resources or Config rules responsible for the current compliance of the item, up to a maximum number.
  factory ComplianceContributorCount({
    int? cappedCount,
    bool? capExceeded,
  }) {
    cappedCount ??= 0;
    capExceeded ??= false;
    return _$ComplianceContributorCount._(
      cappedCount: cappedCount,
      capExceeded: capExceeded,
    );
  }

  /// The number of Amazon Web Services resources or Config rules responsible for the current compliance of the item, up to a maximum number.
  factory ComplianceContributorCount.build(
          [void Function(ComplianceContributorCountBuilder) updates]) =
      _$ComplianceContributorCount;

  const ComplianceContributorCount._();

  static const List<_i2.SmithySerializer<ComplianceContributorCount>>
      serializers = [ComplianceContributorCountAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ComplianceContributorCountBuilder b) {
    b.cappedCount = 0;
    b.capExceeded = false;
  }

  /// The number of Amazon Web Services resources or Config rules responsible for the current compliance of the item.
  int get cappedCount;

  /// Indicates whether the maximum count is reached.
  bool get capExceeded;
  @override
  List<Object?> get props => [
        cappedCount,
        capExceeded,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ComplianceContributorCount')
      ..add(
        'cappedCount',
        cappedCount,
      )
      ..add(
        'capExceeded',
        capExceeded,
      );
    return helper.toString();
  }
}

class ComplianceContributorCountAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ComplianceContributorCount> {
  const ComplianceContributorCountAwsJson11Serializer()
      : super('ComplianceContributorCount');

  @override
  Iterable<Type> get types => const [
        ComplianceContributorCount,
        _$ComplianceContributorCount,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ComplianceContributorCount deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComplianceContributorCountBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CappedCount':
          result.cappedCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'CapExceeded':
          result.capExceeded = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ComplianceContributorCount object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ComplianceContributorCount(:cappedCount, :capExceeded) = object;
    result$.addAll([
      'CappedCount',
      serializers.serialize(
        cappedCount,
        specifiedType: const FullType(int),
      ),
      'CapExceeded',
      serializers.serialize(
        capExceeded,
        specifiedType: const FullType(bool),
      ),
    ]);
    return result$;
  }
}
