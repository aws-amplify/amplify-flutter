// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

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
    bool? capExceeded,
    int? cappedCount,
  }) {
    return _$ComplianceContributorCount._(
      capExceeded: capExceeded,
      cappedCount: cappedCount,
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

  /// Indicates whether the maximum count is reached.
  bool? get capExceeded;

  /// The number of Amazon Web Services resources or Config rules responsible for the current compliance of the item.
  int? get cappedCount;
  @override
  List<Object?> get props => [
        capExceeded,
        cappedCount,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ComplianceContributorCount');
    helper.add(
      'capExceeded',
      capExceeded,
    );
    helper.add(
      'cappedCount',
      cappedCount,
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
        case 'CapExceeded':
          if (value != null) {
            result.capExceeded = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'CappedCount':
          if (value != null) {
            result.cappedCount = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    if (payload.capExceeded != null) {
      result
        ..add('CapExceeded')
        ..add(serializers.serialize(
          payload.capExceeded!,
          specifiedType: const FullType(bool),
        ));
    }
    if (payload.cappedCount != null) {
      result
        ..add('CappedCount')
        ..add(serializers.serialize(
          payload.cappedCount!,
          specifiedType: const FullType(int),
        ));
    }
    return result;
  }
}
