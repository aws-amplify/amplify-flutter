// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_placement; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tenancy.dart';

part 'launch_template_placement.g.dart';

/// Describes the placement of an instance.
abstract class LaunchTemplatePlacement
    with _i1.AWSEquatable<LaunchTemplatePlacement>
    implements Built<LaunchTemplatePlacement, LaunchTemplatePlacementBuilder> {
  /// Describes the placement of an instance.
  factory LaunchTemplatePlacement({
    String? availabilityZone,
    String? affinity,
    String? groupName,
    String? hostId,
    Tenancy? tenancy,
    String? spreadDomain,
    String? hostResourceGroupArn,
    int? partitionNumber,
    String? groupId,
  }) {
    partitionNumber ??= 0;
    return _$LaunchTemplatePlacement._(
      availabilityZone: availabilityZone,
      affinity: affinity,
      groupName: groupName,
      hostId: hostId,
      tenancy: tenancy,
      spreadDomain: spreadDomain,
      hostResourceGroupArn: hostResourceGroupArn,
      partitionNumber: partitionNumber,
      groupId: groupId,
    );
  }

  /// Describes the placement of an instance.
  factory LaunchTemplatePlacement.build(
          [void Function(LaunchTemplatePlacementBuilder) updates]) =
      _$LaunchTemplatePlacement;

  const LaunchTemplatePlacement._();

  static const List<_i2.SmithySerializer<LaunchTemplatePlacement>> serializers =
      [LaunchTemplatePlacementEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplatePlacementBuilder b) {
    b.partitionNumber = 0;
  }

  /// The Availability Zone of the instance.
  String? get availabilityZone;

  /// The affinity setting for the instance on the Dedicated Host.
  String? get affinity;

  /// The name of the placement group for the instance.
  String? get groupName;

  /// The ID of the Dedicated Host for the instance.
  String? get hostId;

  /// The tenancy of the instance. An instance with a tenancy of `dedicated` runs on single-tenant hardware.
  Tenancy? get tenancy;

  /// Reserved for future use.
  String? get spreadDomain;

  /// The ARN of the host resource group in which to launch the instances.
  String? get hostResourceGroupArn;

  /// The number of the partition the instance should launch in. Valid only if the placement group strategy is set to `partition`.
  int get partitionNumber;

  /// The Group ID of the placement group. You must specify the Placement Group **Group ID** to launch an instance in a shared placement group.
  String? get groupId;
  @override
  List<Object?> get props => [
        availabilityZone,
        affinity,
        groupName,
        hostId,
        tenancy,
        spreadDomain,
        hostResourceGroupArn,
        partitionNumber,
        groupId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LaunchTemplatePlacement')
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
        'partitionNumber',
        partitionNumber,
      )
      ..add(
        'groupId',
        groupId,
      );
    return helper.toString();
  }
}

class LaunchTemplatePlacementEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<LaunchTemplatePlacement> {
  const LaunchTemplatePlacementEc2QuerySerializer()
      : super('LaunchTemplatePlacement');

  @override
  Iterable<Type> get types => const [
        LaunchTemplatePlacement,
        _$LaunchTemplatePlacement,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplatePlacement deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplatePlacementBuilder();
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
        case 'partitionNumber':
          result.partitionNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
    LaunchTemplatePlacement object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplatePlacementResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplatePlacement(
      :availabilityZone,
      :affinity,
      :groupName,
      :hostId,
      :tenancy,
      :spreadDomain,
      :hostResourceGroupArn,
      :partitionNumber,
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
    result$
      ..add(const _i2.XmlElementName('PartitionNumber'))
      ..add(serializers.serialize(
        partitionNumber,
        specifiedType: const FullType(int),
      ));
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
