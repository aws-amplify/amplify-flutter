// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.load_balancers_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/classic_load_balancers_config.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/target_groups_config.dart';

part 'load_balancers_config.g.dart';

/// Describes the Classic Load Balancers and target groups to attach to a Spot Fleet request.
abstract class LoadBalancersConfig
    with _i1.AWSEquatable<LoadBalancersConfig>
    implements Built<LoadBalancersConfig, LoadBalancersConfigBuilder> {
  /// Describes the Classic Load Balancers and target groups to attach to a Spot Fleet request.
  factory LoadBalancersConfig({
    ClassicLoadBalancersConfig? classicLoadBalancersConfig,
    TargetGroupsConfig? targetGroupsConfig,
  }) {
    return _$LoadBalancersConfig._(
      classicLoadBalancersConfig: classicLoadBalancersConfig,
      targetGroupsConfig: targetGroupsConfig,
    );
  }

  /// Describes the Classic Load Balancers and target groups to attach to a Spot Fleet request.
  factory LoadBalancersConfig.build(
          [void Function(LoadBalancersConfigBuilder) updates]) =
      _$LoadBalancersConfig;

  const LoadBalancersConfig._();

  static const List<_i2.SmithySerializer<LoadBalancersConfig>> serializers = [
    LoadBalancersConfigEc2QuerySerializer()
  ];

  /// The Classic Load Balancers.
  ClassicLoadBalancersConfig? get classicLoadBalancersConfig;

  /// The target groups.
  TargetGroupsConfig? get targetGroupsConfig;
  @override
  List<Object?> get props => [
        classicLoadBalancersConfig,
        targetGroupsConfig,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LoadBalancersConfig')
      ..add(
        'classicLoadBalancersConfig',
        classicLoadBalancersConfig,
      )
      ..add(
        'targetGroupsConfig',
        targetGroupsConfig,
      );
    return helper.toString();
  }
}

class LoadBalancersConfigEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<LoadBalancersConfig> {
  const LoadBalancersConfigEc2QuerySerializer() : super('LoadBalancersConfig');

  @override
  Iterable<Type> get types => const [
        LoadBalancersConfig,
        _$LoadBalancersConfig,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LoadBalancersConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoadBalancersConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'classicLoadBalancersConfig':
          result.classicLoadBalancersConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ClassicLoadBalancersConfig),
          ) as ClassicLoadBalancersConfig));
        case 'targetGroupsConfig':
          result.targetGroupsConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TargetGroupsConfig),
          ) as TargetGroupsConfig));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LoadBalancersConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LoadBalancersConfigResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LoadBalancersConfig(
      :classicLoadBalancersConfig,
      :targetGroupsConfig
    ) = object;
    if (classicLoadBalancersConfig != null) {
      result$
        ..add(const _i2.XmlElementName('ClassicLoadBalancersConfig'))
        ..add(serializers.serialize(
          classicLoadBalancersConfig,
          specifiedType: const FullType(ClassicLoadBalancersConfig),
        ));
    }
    if (targetGroupsConfig != null) {
      result$
        ..add(const _i2.XmlElementName('TargetGroupsConfig'))
        ..add(serializers.serialize(
          targetGroupsConfig,
          specifiedType: const FullType(TargetGroupsConfig),
        ));
    }
    return result$;
  }
}
