// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.analysis_load_balancer_target; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_component.dart';

part 'analysis_load_balancer_target.g.dart';

/// Describes a load balancer target.
abstract class AnalysisLoadBalancerTarget
    with _i1.AWSEquatable<AnalysisLoadBalancerTarget>
    implements
        Built<AnalysisLoadBalancerTarget, AnalysisLoadBalancerTargetBuilder> {
  /// Describes a load balancer target.
  factory AnalysisLoadBalancerTarget({
    String? address,
    String? availabilityZone,
    AnalysisComponent? instance,
    int? port,
  }) {
    port ??= 0;
    return _$AnalysisLoadBalancerTarget._(
      address: address,
      availabilityZone: availabilityZone,
      instance: instance,
      port: port,
    );
  }

  /// Describes a load balancer target.
  factory AnalysisLoadBalancerTarget.build(
          [void Function(AnalysisLoadBalancerTargetBuilder) updates]) =
      _$AnalysisLoadBalancerTarget;

  const AnalysisLoadBalancerTarget._();

  static const List<_i2.SmithySerializer<AnalysisLoadBalancerTarget>>
      serializers = [AnalysisLoadBalancerTargetEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AnalysisLoadBalancerTargetBuilder b) {
    b.port = 0;
  }

  /// The IP address.
  String? get address;

  /// The Availability Zone.
  String? get availabilityZone;

  /// Information about the instance.
  AnalysisComponent? get instance;

  /// The port on which the target is listening.
  int get port;
  @override
  List<Object?> get props => [
        address,
        availabilityZone,
        instance,
        port,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AnalysisLoadBalancerTarget')
      ..add(
        'address',
        address,
      )
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'instance',
        instance,
      )
      ..add(
        'port',
        port,
      );
    return helper.toString();
  }
}

class AnalysisLoadBalancerTargetEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AnalysisLoadBalancerTarget> {
  const AnalysisLoadBalancerTargetEc2QuerySerializer()
      : super('AnalysisLoadBalancerTarget');

  @override
  Iterable<Type> get types => const [
        AnalysisLoadBalancerTarget,
        _$AnalysisLoadBalancerTarget,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AnalysisLoadBalancerTarget deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisLoadBalancerTargetBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'address':
          result.address = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instance':
          result.instance.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'port':
          result.port = (serializers.deserialize(
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
    AnalysisLoadBalancerTarget object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AnalysisLoadBalancerTargetResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AnalysisLoadBalancerTarget(
      :address,
      :availabilityZone,
      :instance,
      :port
    ) = object;
    if (address != null) {
      result$
        ..add(const _i2.XmlElementName('Address'))
        ..add(serializers.serialize(
          address,
          specifiedType: const FullType(String),
        ));
    }
    if (availabilityZone != null) {
      result$
        ..add(const _i2.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (instance != null) {
      result$
        ..add(const _i2.XmlElementName('Instance'))
        ..add(serializers.serialize(
          instance,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('Port'))
      ..add(serializers.serialize(
        port,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
