// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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

  static const List<_i2.SmithySerializer> serializers = [
    ComplianceContributorCountAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ComplianceContributorCountBuilder b) {}

  /// The number of Amazon Web Services resources or Config rules responsible for the current compliance of the item.
  int? get cappedCount;

  /// Indicates whether the maximum count is reached.
  bool? get capExceeded;
  @override
  List<Object?> get props => [
        cappedCount,
        capExceeded,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ComplianceContributorCount');
    helper.add(
      'cappedCount',
      cappedCount,
    );
    helper.add(
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
      switch (key) {
        case 'CappedCount':
          if (value != null) {
            result.cappedCount = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'CapExceeded':
          if (value != null) {
            result.capExceeded = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
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
    final payload = (object as ComplianceContributorCount);
    final result = <Object?>[];
    if (payload.cappedCount != null) {
      result
        ..add('CappedCount')
        ..add(serializers.serialize(
          payload.cappedCount!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.capExceeded != null) {
      result
        ..add('CapExceeded')
        ..add(serializers.serialize(
          payload.capExceeded!,
          specifiedType: const FullType(bool),
        ));
    }
    return result;
  }
}
