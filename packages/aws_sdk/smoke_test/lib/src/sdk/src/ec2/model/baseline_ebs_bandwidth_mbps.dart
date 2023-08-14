// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.baseline_ebs_bandwidth_mbps; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'baseline_ebs_bandwidth_mbps.g.dart';

/// The minimum and maximum baseline bandwidth to Amazon EBS, in Mbps. For more information, see [Amazon EBS–optimized instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html) in the _Amazon EC2 User Guide_.
abstract class BaselineEbsBandwidthMbps
    with _i1.AWSEquatable<BaselineEbsBandwidthMbps>
    implements
        Built<BaselineEbsBandwidthMbps, BaselineEbsBandwidthMbpsBuilder> {
  /// The minimum and maximum baseline bandwidth to Amazon EBS, in Mbps. For more information, see [Amazon EBS–optimized instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html) in the _Amazon EC2 User Guide_.
  factory BaselineEbsBandwidthMbps({
    int? min,
    int? max,
  }) {
    min ??= 0;
    max ??= 0;
    return _$BaselineEbsBandwidthMbps._(
      min: min,
      max: max,
    );
  }

  /// The minimum and maximum baseline bandwidth to Amazon EBS, in Mbps. For more information, see [Amazon EBS–optimized instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html) in the _Amazon EC2 User Guide_.
  factory BaselineEbsBandwidthMbps.build(
          [void Function(BaselineEbsBandwidthMbpsBuilder) updates]) =
      _$BaselineEbsBandwidthMbps;

  const BaselineEbsBandwidthMbps._();

  static const List<_i2.SmithySerializer<BaselineEbsBandwidthMbps>>
      serializers = [BaselineEbsBandwidthMbpsEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BaselineEbsBandwidthMbpsBuilder b) {
    b
      ..min = 0
      ..max = 0;
  }

  /// The minimum baseline bandwidth, in Mbps. If this parameter is not specified, there is no minimum limit.
  int get min;

  /// The maximum baseline bandwidth, in Mbps. If this parameter is not specified, there is no maximum limit.
  int get max;
  @override
  List<Object?> get props => [
        min,
        max,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BaselineEbsBandwidthMbps')
      ..add(
        'min',
        min,
      )
      ..add(
        'max',
        max,
      );
    return helper.toString();
  }
}

class BaselineEbsBandwidthMbpsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<BaselineEbsBandwidthMbps> {
  const BaselineEbsBandwidthMbpsEc2QuerySerializer()
      : super('BaselineEbsBandwidthMbps');

  @override
  Iterable<Type> get types => const [
        BaselineEbsBandwidthMbps,
        _$BaselineEbsBandwidthMbps,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  BaselineEbsBandwidthMbps deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BaselineEbsBandwidthMbpsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'min':
          result.min = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'max':
          result.max = (serializers.deserialize(
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
    BaselineEbsBandwidthMbps object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'BaselineEbsBandwidthMbpsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final BaselineEbsBandwidthMbps(:min, :max) = object;
    result$
      ..add(const _i2.XmlElementName('Min'))
      ..add(serializers.serialize(
        min,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i2.XmlElementName('Max'))
      ..add(serializers.serialize(
        max,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
