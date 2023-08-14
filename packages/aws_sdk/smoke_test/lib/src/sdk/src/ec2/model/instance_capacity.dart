// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_capacity; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'instance_capacity.g.dart';

/// Information about the number of instances that can be launched onto the Dedicated Host.
abstract class InstanceCapacity
    with _i1.AWSEquatable<InstanceCapacity>
    implements Built<InstanceCapacity, InstanceCapacityBuilder> {
  /// Information about the number of instances that can be launched onto the Dedicated Host.
  factory InstanceCapacity({
    int? availableCapacity,
    String? instanceType,
    int? totalCapacity,
  }) {
    availableCapacity ??= 0;
    totalCapacity ??= 0;
    return _$InstanceCapacity._(
      availableCapacity: availableCapacity,
      instanceType: instanceType,
      totalCapacity: totalCapacity,
    );
  }

  /// Information about the number of instances that can be launched onto the Dedicated Host.
  factory InstanceCapacity.build(
      [void Function(InstanceCapacityBuilder) updates]) = _$InstanceCapacity;

  const InstanceCapacity._();

  static const List<_i2.SmithySerializer<InstanceCapacity>> serializers = [
    InstanceCapacityEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceCapacityBuilder b) {
    b
      ..availableCapacity = 0
      ..totalCapacity = 0;
  }

  /// The number of instances that can be launched onto the Dedicated Host based on the host's available capacity.
  int get availableCapacity;

  /// The instance type supported by the Dedicated Host.
  String? get instanceType;

  /// The total number of instances that can be launched onto the Dedicated Host if there are no instances running on it.
  int get totalCapacity;
  @override
  List<Object?> get props => [
        availableCapacity,
        instanceType,
        totalCapacity,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceCapacity')
      ..add(
        'availableCapacity',
        availableCapacity,
      )
      ..add(
        'instanceType',
        instanceType,
      )
      ..add(
        'totalCapacity',
        totalCapacity,
      );
    return helper.toString();
  }
}

class InstanceCapacityEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<InstanceCapacity> {
  const InstanceCapacityEc2QuerySerializer() : super('InstanceCapacity');

  @override
  Iterable<Type> get types => const [
        InstanceCapacity,
        _$InstanceCapacity,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceCapacity deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceCapacityBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'availableCapacity':
          result.availableCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'instanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'totalCapacity':
          result.totalCapacity = (serializers.deserialize(
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
    InstanceCapacity object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InstanceCapacityResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceCapacity(:availableCapacity, :instanceType, :totalCapacity) =
        object;
    result$
      ..add(const _i2.XmlElementName('AvailableCapacity'))
      ..add(serializers.serialize(
        availableCapacity,
        specifiedType: const FullType(int),
      ));
    if (instanceType != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('TotalCapacity'))
      ..add(serializers.serialize(
        totalCapacity,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
