// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.classic_load_balancers_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/classic_load_balancer.dart';

part 'classic_load_balancers_config.g.dart';

/// Describes the Classic Load Balancers to attach to a Spot Fleet. Spot Fleet registers the running Spot Instances with these Classic Load Balancers.
abstract class ClassicLoadBalancersConfig
    with _i1.AWSEquatable<ClassicLoadBalancersConfig>
    implements
        Built<ClassicLoadBalancersConfig, ClassicLoadBalancersConfigBuilder> {
  /// Describes the Classic Load Balancers to attach to a Spot Fleet. Spot Fleet registers the running Spot Instances with these Classic Load Balancers.
  factory ClassicLoadBalancersConfig(
      {List<ClassicLoadBalancer>? classicLoadBalancers}) {
    return _$ClassicLoadBalancersConfig._(
        classicLoadBalancers: classicLoadBalancers == null
            ? null
            : _i2.BuiltList(classicLoadBalancers));
  }

  /// Describes the Classic Load Balancers to attach to a Spot Fleet. Spot Fleet registers the running Spot Instances with these Classic Load Balancers.
  factory ClassicLoadBalancersConfig.build(
          [void Function(ClassicLoadBalancersConfigBuilder) updates]) =
      _$ClassicLoadBalancersConfig;

  const ClassicLoadBalancersConfig._();

  static const List<_i3.SmithySerializer<ClassicLoadBalancersConfig>>
      serializers = [ClassicLoadBalancersConfigEc2QuerySerializer()];

  /// One or more Classic Load Balancers.
  _i2.BuiltList<ClassicLoadBalancer>? get classicLoadBalancers;
  @override
  List<Object?> get props => [classicLoadBalancers];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClassicLoadBalancersConfig')
      ..add(
        'classicLoadBalancers',
        classicLoadBalancers,
      );
    return helper.toString();
  }
}

class ClassicLoadBalancersConfigEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ClassicLoadBalancersConfig> {
  const ClassicLoadBalancersConfigEc2QuerySerializer()
      : super('ClassicLoadBalancersConfig');

  @override
  Iterable<Type> get types => const [
        ClassicLoadBalancersConfig,
        _$ClassicLoadBalancersConfig,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClassicLoadBalancersConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClassicLoadBalancersConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'classicLoadBalancers':
          result.classicLoadBalancers.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ClassicLoadBalancer)],
            ),
          ) as _i2.BuiltList<ClassicLoadBalancer>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ClassicLoadBalancersConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ClassicLoadBalancersConfigResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ClassicLoadBalancersConfig(:classicLoadBalancers) = object;
    if (classicLoadBalancers != null) {
      result$
        ..add(const _i3.XmlElementName('ClassicLoadBalancers'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          classicLoadBalancers,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ClassicLoadBalancer)],
          ),
        ));
    }
    return result$;
  }
}
