// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ebs_optimized_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ebs_optimized_info.g.dart';

/// Describes the optimized EBS performance for supported instance types.
abstract class EbsOptimizedInfo
    with _i1.AWSEquatable<EbsOptimizedInfo>
    implements Built<EbsOptimizedInfo, EbsOptimizedInfoBuilder> {
  /// Describes the optimized EBS performance for supported instance types.
  factory EbsOptimizedInfo({
    int? baselineBandwidthInMbps,
    double? baselineThroughputInMBps,
    int? baselineIops,
    int? maximumBandwidthInMbps,
    double? maximumThroughputInMBps,
    int? maximumIops,
  }) {
    return _$EbsOptimizedInfo._(
      baselineBandwidthInMbps: baselineBandwidthInMbps,
      baselineThroughputInMBps: baselineThroughputInMBps,
      baselineIops: baselineIops,
      maximumBandwidthInMbps: maximumBandwidthInMbps,
      maximumThroughputInMBps: maximumThroughputInMBps,
      maximumIops: maximumIops,
    );
  }

  /// Describes the optimized EBS performance for supported instance types.
  factory EbsOptimizedInfo.build(
      [void Function(EbsOptimizedInfoBuilder) updates]) = _$EbsOptimizedInfo;

  const EbsOptimizedInfo._();

  static const List<_i2.SmithySerializer<EbsOptimizedInfo>> serializers = [
    EbsOptimizedInfoEc2QuerySerializer()
  ];

  /// The baseline bandwidth performance for an EBS-optimized instance type, in Mbps.
  int? get baselineBandwidthInMbps;

  /// The baseline throughput performance for an EBS-optimized instance type, in MB/s.
  double? get baselineThroughputInMBps;

  /// The baseline input/output storage operations per seconds for an EBS-optimized instance type.
  int? get baselineIops;

  /// The maximum bandwidth performance for an EBS-optimized instance type, in Mbps.
  int? get maximumBandwidthInMbps;

  /// The maximum throughput performance for an EBS-optimized instance type, in MB/s.
  double? get maximumThroughputInMBps;

  /// The maximum input/output storage operations per second for an EBS-optimized instance type.
  int? get maximumIops;
  @override
  List<Object?> get props => [
        baselineBandwidthInMbps,
        baselineThroughputInMBps,
        baselineIops,
        maximumBandwidthInMbps,
        maximumThroughputInMBps,
        maximumIops,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EbsOptimizedInfo')
      ..add(
        'baselineBandwidthInMbps',
        baselineBandwidthInMbps,
      )
      ..add(
        'baselineThroughputInMBps',
        baselineThroughputInMBps,
      )
      ..add(
        'baselineIops',
        baselineIops,
      )
      ..add(
        'maximumBandwidthInMbps',
        maximumBandwidthInMbps,
      )
      ..add(
        'maximumThroughputInMBps',
        maximumThroughputInMBps,
      )
      ..add(
        'maximumIops',
        maximumIops,
      );
    return helper.toString();
  }
}

class EbsOptimizedInfoEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<EbsOptimizedInfo> {
  const EbsOptimizedInfoEc2QuerySerializer() : super('EbsOptimizedInfo');

  @override
  Iterable<Type> get types => const [
        EbsOptimizedInfo,
        _$EbsOptimizedInfo,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EbsOptimizedInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EbsOptimizedInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'baselineBandwidthInMbps':
          result.baselineBandwidthInMbps = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'baselineThroughputInMBps':
          result.baselineThroughputInMBps = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'baselineIops':
          result.baselineIops = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'maximumBandwidthInMbps':
          result.maximumBandwidthInMbps = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'maximumThroughputInMBps':
          result.maximumThroughputInMBps = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'maximumIops':
          result.maximumIops = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EbsOptimizedInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'EbsOptimizedInfoResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EbsOptimizedInfo(
      :baselineBandwidthInMbps,
      :baselineThroughputInMBps,
      :baselineIops,
      :maximumBandwidthInMbps,
      :maximumThroughputInMBps,
      :maximumIops
    ) = object;
    if (baselineBandwidthInMbps != null) {
      result$
        ..add(const _i2.XmlElementName('BaselineBandwidthInMbps'))
        ..add(serializers.serialize(
          baselineBandwidthInMbps,
          specifiedType: const FullType(int),
        ));
    }
    if (baselineThroughputInMBps != null) {
      result$
        ..add(const _i2.XmlElementName('BaselineThroughputInMBps'))
        ..add(serializers.serialize(
          baselineThroughputInMBps,
          specifiedType: const FullType(double),
        ));
    }
    if (baselineIops != null) {
      result$
        ..add(const _i2.XmlElementName('BaselineIops'))
        ..add(serializers.serialize(
          baselineIops,
          specifiedType: const FullType(int),
        ));
    }
    if (maximumBandwidthInMbps != null) {
      result$
        ..add(const _i2.XmlElementName('MaximumBandwidthInMbps'))
        ..add(serializers.serialize(
          maximumBandwidthInMbps,
          specifiedType: const FullType(int),
        ));
    }
    if (maximumThroughputInMBps != null) {
      result$
        ..add(const _i2.XmlElementName('MaximumThroughputInMBps'))
        ..add(serializers.serialize(
          maximumThroughputInMBps,
          specifiedType: const FullType(double),
        ));
    }
    if (maximumIops != null) {
      result$
        ..add(const _i2.XmlElementName('MaximumIops'))
        ..add(serializers.serialize(
          maximumIops,
          specifiedType: const FullType(int),
        ));
    }
    return result$;
  }
}
