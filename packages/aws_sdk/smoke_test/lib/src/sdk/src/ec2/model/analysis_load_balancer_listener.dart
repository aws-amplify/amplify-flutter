// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.analysis_load_balancer_listener; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'analysis_load_balancer_listener.g.dart';

/// Describes a load balancer listener.
abstract class AnalysisLoadBalancerListener
    with
        _i1.AWSEquatable<AnalysisLoadBalancerListener>
    implements
        Built<AnalysisLoadBalancerListener,
            AnalysisLoadBalancerListenerBuilder> {
  /// Describes a load balancer listener.
  factory AnalysisLoadBalancerListener({
    int? loadBalancerPort,
    int? instancePort,
  }) {
    loadBalancerPort ??= 0;
    instancePort ??= 0;
    return _$AnalysisLoadBalancerListener._(
      loadBalancerPort: loadBalancerPort,
      instancePort: instancePort,
    );
  }

  /// Describes a load balancer listener.
  factory AnalysisLoadBalancerListener.build(
          [void Function(AnalysisLoadBalancerListenerBuilder) updates]) =
      _$AnalysisLoadBalancerListener;

  const AnalysisLoadBalancerListener._();

  static const List<_i2.SmithySerializer<AnalysisLoadBalancerListener>>
      serializers = [AnalysisLoadBalancerListenerEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AnalysisLoadBalancerListenerBuilder b) {
    b
      ..loadBalancerPort = 0
      ..instancePort = 0;
  }

  /// The port on which the load balancer is listening.
  int get loadBalancerPort;

  /// \[Classic Load Balancers\] The back-end port for the listener.
  int get instancePort;
  @override
  List<Object?> get props => [
        loadBalancerPort,
        instancePort,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AnalysisLoadBalancerListener')
      ..add(
        'loadBalancerPort',
        loadBalancerPort,
      )
      ..add(
        'instancePort',
        instancePort,
      );
    return helper.toString();
  }
}

class AnalysisLoadBalancerListenerEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AnalysisLoadBalancerListener> {
  const AnalysisLoadBalancerListenerEc2QuerySerializer()
      : super('AnalysisLoadBalancerListener');

  @override
  Iterable<Type> get types => const [
        AnalysisLoadBalancerListener,
        _$AnalysisLoadBalancerListener,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AnalysisLoadBalancerListener deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisLoadBalancerListenerBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'loadBalancerPort':
          result.loadBalancerPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'instancePort':
          result.instancePort = (serializers.deserialize(
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
    AnalysisLoadBalancerListener object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AnalysisLoadBalancerListenerResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AnalysisLoadBalancerListener(:loadBalancerPort, :instancePort) =
        object;
    result$
      ..add(const _i2.XmlElementName('LoadBalancerPort'))
      ..add(serializers.serialize(
        loadBalancerPort,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i2.XmlElementName('InstancePort'))
      ..add(serializers.serialize(
        instancePort,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
