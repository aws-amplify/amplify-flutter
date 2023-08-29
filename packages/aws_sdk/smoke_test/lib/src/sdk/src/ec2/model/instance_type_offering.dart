// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_type_offering; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/location_type.dart';

part 'instance_type_offering.g.dart';

/// The instance types offered.
abstract class InstanceTypeOffering
    with _i1.AWSEquatable<InstanceTypeOffering>
    implements Built<InstanceTypeOffering, InstanceTypeOfferingBuilder> {
  /// The instance types offered.
  factory InstanceTypeOffering({
    InstanceType? instanceType,
    LocationType? locationType,
    String? location,
  }) {
    return _$InstanceTypeOffering._(
      instanceType: instanceType,
      locationType: locationType,
      location: location,
    );
  }

  /// The instance types offered.
  factory InstanceTypeOffering.build(
          [void Function(InstanceTypeOfferingBuilder) updates]) =
      _$InstanceTypeOffering;

  const InstanceTypeOffering._();

  static const List<_i2.SmithySerializer<InstanceTypeOffering>> serializers = [
    InstanceTypeOfferingEc2QuerySerializer()
  ];

  /// The instance type. For more information, see [Instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the _Amazon EC2 User Guide_.
  InstanceType? get instanceType;

  /// The location type.
  LocationType? get locationType;

  /// The identifier for the location. This depends on the location type. For example, if the location type is `region`, the location is the Region code (for example, `us-east-2`.)
  String? get location;
  @override
  List<Object?> get props => [
        instanceType,
        locationType,
        location,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceTypeOffering')
      ..add(
        'instanceType',
        instanceType,
      )
      ..add(
        'locationType',
        locationType,
      )
      ..add(
        'location',
        location,
      );
    return helper.toString();
  }
}

class InstanceTypeOfferingEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<InstanceTypeOffering> {
  const InstanceTypeOfferingEc2QuerySerializer()
      : super('InstanceTypeOffering');

  @override
  Iterable<Type> get types => const [
        InstanceTypeOffering,
        _$InstanceTypeOffering,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceTypeOffering deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceTypeOfferingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceType),
          ) as InstanceType);
        case 'locationType':
          result.locationType = (serializers.deserialize(
            value,
            specifiedType: const FullType(LocationType),
          ) as LocationType);
        case 'location':
          result.location = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceTypeOffering object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InstanceTypeOfferingResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceTypeOffering(:instanceType, :locationType, :location) =
        object;
    if (instanceType != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType.nullable(InstanceType),
        ));
    }
    if (locationType != null) {
      result$
        ..add(const _i2.XmlElementName('LocationType'))
        ..add(serializers.serialize(
          locationType,
          specifiedType: const FullType.nullable(LocationType),
        ));
    }
    if (location != null) {
      result$
        ..add(const _i2.XmlElementName('Location'))
        ..add(serializers.serialize(
          location,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
