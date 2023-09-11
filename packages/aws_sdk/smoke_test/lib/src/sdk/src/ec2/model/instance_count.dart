// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_count; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/listing_state.dart';

part 'instance_count.g.dart';

/// Describes a Reserved Instance listing state.
abstract class InstanceCount
    with _i1.AWSEquatable<InstanceCount>
    implements Built<InstanceCount, InstanceCountBuilder> {
  /// Describes a Reserved Instance listing state.
  factory InstanceCount({
    int? instanceCount,
    ListingState? state,
  }) {
    instanceCount ??= 0;
    return _$InstanceCount._(
      instanceCount: instanceCount,
      state: state,
    );
  }

  /// Describes a Reserved Instance listing state.
  factory InstanceCount.build([void Function(InstanceCountBuilder) updates]) =
      _$InstanceCount;

  const InstanceCount._();

  static const List<_i2.SmithySerializer<InstanceCount>> serializers = [
    InstanceCountEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceCountBuilder b) {
    b.instanceCount = 0;
  }

  /// The number of listed Reserved Instances in the state specified by the `state`.
  int get instanceCount;

  /// The states of the listed Reserved Instances.
  ListingState? get state;
  @override
  List<Object?> get props => [
        instanceCount,
        state,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceCount')
      ..add(
        'instanceCount',
        instanceCount,
      )
      ..add(
        'state',
        state,
      );
    return helper.toString();
  }
}

class InstanceCountEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<InstanceCount> {
  const InstanceCountEc2QuerySerializer() : super('InstanceCount');

  @override
  Iterable<Type> get types => const [
        InstanceCount,
        _$InstanceCount,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceCount deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceCountBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceCount':
          result.instanceCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(ListingState),
          ) as ListingState);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceCount object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InstanceCountResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceCount(:instanceCount, :state) = object;
    result$
      ..add(const _i2.XmlElementName('InstanceCount'))
      ..add(serializers.serialize(
        instanceCount,
        specifiedType: const FullType(int),
      ));
    if (state != null) {
      result$
        ..add(const _i2.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(ListingState),
        ));
    }
    return result$;
  }
}
