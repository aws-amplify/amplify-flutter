// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.placement; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tenancy.dart';

part 'placement.g.dart';

/// Describes the placement of an instance.
abstract class Placement
    with _i1.AWSEquatable<Placement>
    implements Built<Placement, PlacementBuilder> {
  /// Describes the placement of an instance.
  factory Placement({
    String? availabilityZone,
    String? affinity,
    String? groupName,
    int? partitionNumber,
    String? hostId,
    Tenancy? tenancy,
    String? spreadDomain,
    String? hostResourceGroupArn,
    String? groupId,
  }) {
    partitionNumber ??= 0;
    return _$Placement._(
      availabilityZone: availabilityZone,
      affinity: affinity,
      groupName: groupName,
      partitionNumber: partitionNumber,
      hostId: hostId,
      tenancy: tenancy,
      spreadDomain: spreadDomain,
      hostResourceGroupArn: hostResourceGroupArn,
      groupId: groupId,
    );
  }

  /// Describes the placement of an instance.
  factory Placement.build([void Function(PlacementBuilder) updates]) =
      _$Placement;

  const Placement._();

  static const List<_i2.SmithySerializer<Placement>> serializers = [
    PlacementEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PlacementBuilder b) {
    b.partitionNumber = 0;
  }

  /// The Availability Zone of the instance.
  ///
  /// If not specified, an Availability Zone will be automatically chosen for you based on the load balancing criteria for the Region.
  ///
  /// This parameter is not supported for [CreateFleet](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet).
  String? get availabilityZone;

  /// The affinity setting for the instance on the Dedicated Host.
  ///
  /// This parameter is not supported for [CreateFleet](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet) or [ImportInstance](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html).
  String? get affinity;

  /// The name of the placement group that the instance is in. If you specify `GroupName`, you can't specify `GroupId`.
  String? get groupName;

  /// The number of the partition that the instance is in. Valid only if the placement group strategy is set to `partition`.
  ///
  /// This parameter is not supported for [CreateFleet](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet).
  int get partitionNumber;

  /// The ID of the Dedicated Host on which the instance resides.
  ///
  /// This parameter is not supported for [CreateFleet](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet) or [ImportInstance](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html).
  String? get hostId;

  /// The tenancy of the instance. An instance with a tenancy of `dedicated` runs on single-tenant hardware.
  ///
  /// This parameter is not supported for [CreateFleet](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet). The `host` tenancy is not supported for [ImportInstance](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html) or for T3 instances that are configured for the `unlimited` CPU credit option.
  Tenancy? get tenancy;

  /// Reserved for future use.
  String? get spreadDomain;

  /// The ARN of the host resource group in which to launch the instances.
  ///
  /// If you specify this parameter, either omit the **Tenancy** parameter or set it to `host`.
  ///
  /// This parameter is not supported for [CreateFleet](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet).
  String? get hostResourceGroupArn;

  /// The ID of the placement group that the instance is in. If you specify `GroupId`, you can't specify `GroupName`.
  String? get groupId;
  @override
  List<Object?> get props => [
        availabilityZone,
        affinity,
        groupName,
        partitionNumber,
        hostId,
        tenancy,
        spreadDomain,
        hostResourceGroupArn,
        groupId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Placement')
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'affinity',
        affinity,
      )
      ..add(
        'groupName',
        groupName,
      )
      ..add(
        'partitionNumber',
        partitionNumber,
      )
      ..add(
        'hostId',
        hostId,
      )
      ..add(
        'tenancy',
        tenancy,
      )
      ..add(
        'spreadDomain',
        spreadDomain,
      )
      ..add(
        'hostResourceGroupArn',
        hostResourceGroupArn,
      )
      ..add(
        'groupId',
        groupId,
      );
    return helper.toString();
  }
}

class PlacementEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<Placement> {
  const PlacementEc2QuerySerializer() : super('Placement');

  @override
  Iterable<Type> get types => const [
        Placement,
        _$Placement,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Placement deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlacementBuilder();
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
        case 'affinity':
          result.affinity = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'groupName':
          result.groupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'partitionNumber':
          result.partitionNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'hostId':
          result.hostId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tenancy':
          result.tenancy = (serializers.deserialize(
            value,
            specifiedType: const FullType(Tenancy),
          ) as Tenancy);
        case 'spreadDomain':
          result.spreadDomain = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'hostResourceGroupArn':
          result.hostResourceGroupArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'groupId':
          result.groupId = (serializers.deserialize(
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
    Placement object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PlacementResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Placement(
      :availabilityZone,
      :affinity,
      :groupName,
      :partitionNumber,
      :hostId,
      :tenancy,
      :spreadDomain,
      :hostResourceGroupArn,
      :groupId
    ) = object;
    if (availabilityZone != null) {
      result$
        ..add(const _i2.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (affinity != null) {
      result$
        ..add(const _i2.XmlElementName('Affinity'))
        ..add(serializers.serialize(
          affinity,
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
    result$
      ..add(const _i2.XmlElementName('PartitionNumber'))
      ..add(serializers.serialize(
        partitionNumber,
        specifiedType: const FullType(int),
      ));
    if (hostId != null) {
      result$
        ..add(const _i2.XmlElementName('HostId'))
        ..add(serializers.serialize(
          hostId,
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
    if (spreadDomain != null) {
      result$
        ..add(const _i2.XmlElementName('SpreadDomain'))
        ..add(serializers.serialize(
          spreadDomain,
          specifiedType: const FullType(String),
        ));
    }
    if (hostResourceGroupArn != null) {
      result$
        ..add(const _i2.XmlElementName('HostResourceGroupArn'))
        ..add(serializers.serialize(
          hostResourceGroupArn,
          specifiedType: const FullType(String),
        ));
    }
    if (groupId != null) {
      result$
        ..add(const _i2.XmlElementName('GroupId'))
        ..add(serializers.serialize(
          groupId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
