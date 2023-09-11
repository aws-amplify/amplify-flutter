// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.spot_placement; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tenancy.dart';

part 'spot_placement.g.dart';

/// Describes Spot Instance placement.
abstract class SpotPlacement
    with _i1.AWSEquatable<SpotPlacement>
    implements Built<SpotPlacement, SpotPlacementBuilder> {
  /// Describes Spot Instance placement.
  factory SpotPlacement({
    String? availabilityZone,
    String? groupName,
    Tenancy? tenancy,
  }) {
    return _$SpotPlacement._(
      availabilityZone: availabilityZone,
      groupName: groupName,
      tenancy: tenancy,
    );
  }

  /// Describes Spot Instance placement.
  factory SpotPlacement.build([void Function(SpotPlacementBuilder) updates]) =
      _$SpotPlacement;

  const SpotPlacement._();

  static const List<_i2.SmithySerializer<SpotPlacement>> serializers = [
    SpotPlacementEc2QuerySerializer()
  ];

  /// The Availability Zone.
  ///
  /// \[Spot Fleet only\] To specify multiple Availability Zones, separate them using commas; for example, "us-west-2a, us-west-2b".
  String? get availabilityZone;

  /// The name of the placement group.
  String? get groupName;

  /// The tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of `dedicated` runs on single-tenant hardware. The `host` tenancy is not supported for Spot Instances.
  Tenancy? get tenancy;
  @override
  List<Object?> get props => [
        availabilityZone,
        groupName,
        tenancy,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SpotPlacement')
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'groupName',
        groupName,
      )
      ..add(
        'tenancy',
        tenancy,
      );
    return helper.toString();
  }
}

class SpotPlacementEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SpotPlacement> {
  const SpotPlacementEc2QuerySerializer() : super('SpotPlacement');

  @override
  Iterable<Type> get types => const [
        SpotPlacement,
        _$SpotPlacement,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SpotPlacement deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotPlacementBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'groupName':
          result.groupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tenancy':
          result.tenancy = (serializers.deserialize(
            value,
            specifiedType: const FullType(Tenancy),
          ) as Tenancy);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SpotPlacement object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SpotPlacementResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SpotPlacement(:availabilityZone, :groupName, :tenancy) = object;
    if (availabilityZone != null) {
      result$
        ..add(const _i2.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (groupName != null) {
      result$
        ..add(const _i2.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          groupName,
          specifiedType: const FullType(String),
        ));
    }
    if (tenancy != null) {
      result$
        ..add(const _i2.XmlElementName('Tenancy'))
        ..add(serializers.serialize(
          tenancy,
          specifiedType: const FullType(Tenancy),
        ));
    }
    return result$;
  }
}
