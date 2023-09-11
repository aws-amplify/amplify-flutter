// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.host; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/allocation_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/allows_multiple_instance_types.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/auto_placement.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/available_capacity.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/host_instance.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/host_maintenance.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/host_properties.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/host_recovery.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'host.g.dart';

/// Describes the properties of the Dedicated Host.
abstract class Host
    with _i1.AWSEquatable<Host>
    implements Built<Host, HostBuilder> {
  /// Describes the properties of the Dedicated Host.
  factory Host({
    AutoPlacement? autoPlacement,
    String? availabilityZone,
    AvailableCapacity? availableCapacity,
    String? clientToken,
    String? hostId,
    HostProperties? hostProperties,
    String? hostReservationId,
    List<HostInstance>? instances,
    AllocationState? state,
    DateTime? allocationTime,
    DateTime? releaseTime,
    List<Tag>? tags,
    HostRecovery? hostRecovery,
    AllowsMultipleInstanceTypes? allowsMultipleInstanceTypes,
    String? ownerId,
    String? availabilityZoneId,
    bool? memberOfServiceLinkedResourceGroup,
    String? outpostArn,
    HostMaintenance? hostMaintenance,
    String? assetId,
  }) {
    memberOfServiceLinkedResourceGroup ??= false;
    return _$Host._(
      autoPlacement: autoPlacement,
      availabilityZone: availabilityZone,
      availableCapacity: availableCapacity,
      clientToken: clientToken,
      hostId: hostId,
      hostProperties: hostProperties,
      hostReservationId: hostReservationId,
      instances: instances == null ? null : _i2.BuiltList(instances),
      state: state,
      allocationTime: allocationTime,
      releaseTime: releaseTime,
      tags: tags == null ? null : _i2.BuiltList(tags),
      hostRecovery: hostRecovery,
      allowsMultipleInstanceTypes: allowsMultipleInstanceTypes,
      ownerId: ownerId,
      availabilityZoneId: availabilityZoneId,
      memberOfServiceLinkedResourceGroup: memberOfServiceLinkedResourceGroup,
      outpostArn: outpostArn,
      hostMaintenance: hostMaintenance,
      assetId: assetId,
    );
  }

  /// Describes the properties of the Dedicated Host.
  factory Host.build([void Function(HostBuilder) updates]) = _$Host;

  const Host._();

  static const List<_i3.SmithySerializer<Host>> serializers = [
    HostEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HostBuilder b) {
    b.memberOfServiceLinkedResourceGroup = false;
  }

  /// Whether auto-placement is on or off.
  AutoPlacement? get autoPlacement;

  /// The Availability Zone of the Dedicated Host.
  String? get availabilityZone;

  /// Information about the instances running on the Dedicated Host.
  AvailableCapacity? get availableCapacity;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// The ID of the Dedicated Host.
  String? get hostId;

  /// The hardware specifications of the Dedicated Host.
  HostProperties? get hostProperties;

  /// The reservation ID of the Dedicated Host. This returns a `null` response if the Dedicated Host doesn't have an associated reservation.
  String? get hostReservationId;

  /// The IDs and instance type that are currently running on the Dedicated Host.
  _i2.BuiltList<HostInstance>? get instances;

  /// The Dedicated Host's state.
  AllocationState? get state;

  /// The time that the Dedicated Host was allocated.
  DateTime? get allocationTime;

  /// The time that the Dedicated Host was released.
  DateTime? get releaseTime;

  /// Any tags assigned to the Dedicated Host.
  _i2.BuiltList<Tag>? get tags;

  /// Indicates whether host recovery is enabled or disabled for the Dedicated Host.
  HostRecovery? get hostRecovery;

  /// Indicates whether the Dedicated Host supports multiple instance types of the same instance family. If the value is `on`, the Dedicated Host supports multiple instance types in the instance family. If the value is `off`, the Dedicated Host supports a single instance type only.
  AllowsMultipleInstanceTypes? get allowsMultipleInstanceTypes;

  /// The ID of the Amazon Web Services account that owns the Dedicated Host.
  String? get ownerId;

  /// The ID of the Availability Zone in which the Dedicated Host is allocated.
  String? get availabilityZoneId;

  /// Indicates whether the Dedicated Host is in a host resource group. If **memberOfServiceLinkedResourceGroup** is `true`, the host is in a host resource group; otherwise, it is not.
  bool get memberOfServiceLinkedResourceGroup;

  /// The Amazon Resource Name (ARN) of the Amazon Web Services Outpost on which the Dedicated Host is allocated.
  String? get outpostArn;

  /// Indicates whether host maintenance is enabled or disabled for the Dedicated Host.
  HostMaintenance? get hostMaintenance;

  /// The ID of the Outpost hardware asset on which the Dedicated Host is allocated.
  String? get assetId;
  @override
  List<Object?> get props => [
        autoPlacement,
        availabilityZone,
        availableCapacity,
        clientToken,
        hostId,
        hostProperties,
        hostReservationId,
        instances,
        state,
        allocationTime,
        releaseTime,
        tags,
        hostRecovery,
        allowsMultipleInstanceTypes,
        ownerId,
        availabilityZoneId,
        memberOfServiceLinkedResourceGroup,
        outpostArn,
        hostMaintenance,
        assetId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Host')
      ..add(
        'autoPlacement',
        autoPlacement,
      )
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'availableCapacity',
        availableCapacity,
      )
      ..add(
        'clientToken',
        clientToken,
      )
      ..add(
        'hostId',
        hostId,
      )
      ..add(
        'hostProperties',
        hostProperties,
      )
      ..add(
        'hostReservationId',
        hostReservationId,
      )
      ..add(
        'instances',
        instances,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'allocationTime',
        allocationTime,
      )
      ..add(
        'releaseTime',
        releaseTime,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'hostRecovery',
        hostRecovery,
      )
      ..add(
        'allowsMultipleInstanceTypes',
        allowsMultipleInstanceTypes,
      )
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'availabilityZoneId',
        availabilityZoneId,
      )
      ..add(
        'memberOfServiceLinkedResourceGroup',
        memberOfServiceLinkedResourceGroup,
      )
      ..add(
        'outpostArn',
        outpostArn,
      )
      ..add(
        'hostMaintenance',
        hostMaintenance,
      )
      ..add(
        'assetId',
        assetId,
      );
    return helper.toString();
  }
}

class HostEc2QuerySerializer extends _i3.StructuredSmithySerializer<Host> {
  const HostEc2QuerySerializer() : super('Host');

  @override
  Iterable<Type> get types => const [
        Host,
        _$Host,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Host deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HostBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'autoPlacement':
          result.autoPlacement = (serializers.deserialize(
            value,
            specifiedType: const FullType(AutoPlacement),
          ) as AutoPlacement);
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'availableCapacity':
          result.availableCapacity.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AvailableCapacity),
          ) as AvailableCapacity));
        case 'clientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'hostId':
          result.hostId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'hostProperties':
          result.hostProperties.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(HostProperties),
          ) as HostProperties));
        case 'hostReservationId':
          result.hostReservationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instances':
          result.instances.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(HostInstance)],
            ),
          ) as _i2.BuiltList<HostInstance>));
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(AllocationState),
          ) as AllocationState);
        case 'allocationTime':
          result.allocationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'releaseTime':
          result.releaseTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
        case 'hostRecovery':
          result.hostRecovery = (serializers.deserialize(
            value,
            specifiedType: const FullType(HostRecovery),
          ) as HostRecovery);
        case 'allowsMultipleInstanceTypes':
          result.allowsMultipleInstanceTypes = (serializers.deserialize(
            value,
            specifiedType: const FullType(AllowsMultipleInstanceTypes),
          ) as AllowsMultipleInstanceTypes);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'availabilityZoneId':
          result.availabilityZoneId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'memberOfServiceLinkedResourceGroup':
          result.memberOfServiceLinkedResourceGroup = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'outpostArn':
          result.outpostArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'hostMaintenance':
          result.hostMaintenance = (serializers.deserialize(
            value,
            specifiedType: const FullType(HostMaintenance),
          ) as HostMaintenance);
        case 'assetId':
          result.assetId = (serializers.deserialize(
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
    Host object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'HostResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Host(
      :autoPlacement,
      :availabilityZone,
      :availableCapacity,
      :clientToken,
      :hostId,
      :hostProperties,
      :hostReservationId,
      :instances,
      :state,
      :allocationTime,
      :releaseTime,
      :tags,
      :hostRecovery,
      :allowsMultipleInstanceTypes,
      :ownerId,
      :availabilityZoneId,
      :memberOfServiceLinkedResourceGroup,
      :outpostArn,
      :hostMaintenance,
      :assetId
    ) = object;
    if (autoPlacement != null) {
      result$
        ..add(const _i3.XmlElementName('AutoPlacement'))
        ..add(serializers.serialize(
          autoPlacement,
          specifiedType: const FullType(AutoPlacement),
        ));
    }
    if (availabilityZone != null) {
      result$
        ..add(const _i3.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (availableCapacity != null) {
      result$
        ..add(const _i3.XmlElementName('AvailableCapacity'))
        ..add(serializers.serialize(
          availableCapacity,
          specifiedType: const FullType(AvailableCapacity),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i3.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    if (hostId != null) {
      result$
        ..add(const _i3.XmlElementName('HostId'))
        ..add(serializers.serialize(
          hostId,
          specifiedType: const FullType(String),
        ));
    }
    if (hostProperties != null) {
      result$
        ..add(const _i3.XmlElementName('HostProperties'))
        ..add(serializers.serialize(
          hostProperties,
          specifiedType: const FullType(HostProperties),
        ));
    }
    if (hostReservationId != null) {
      result$
        ..add(const _i3.XmlElementName('HostReservationId'))
        ..add(serializers.serialize(
          hostReservationId,
          specifiedType: const FullType(String),
        ));
    }
    if (instances != null) {
      result$
        ..add(const _i3.XmlElementName('Instances'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instances,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(HostInstance)],
          ),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(AllocationState),
        ));
    }
    if (allocationTime != null) {
      result$
        ..add(const _i3.XmlElementName('AllocationTime'))
        ..add(serializers.serialize(
          allocationTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (releaseTime != null) {
      result$
        ..add(const _i3.XmlElementName('ReleaseTime'))
        ..add(serializers.serialize(
          releaseTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    if (hostRecovery != null) {
      result$
        ..add(const _i3.XmlElementName('HostRecovery'))
        ..add(serializers.serialize(
          hostRecovery,
          specifiedType: const FullType(HostRecovery),
        ));
    }
    if (allowsMultipleInstanceTypes != null) {
      result$
        ..add(const _i3.XmlElementName('AllowsMultipleInstanceTypes'))
        ..add(serializers.serialize(
          allowsMultipleInstanceTypes,
          specifiedType: const FullType(AllowsMultipleInstanceTypes),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (availabilityZoneId != null) {
      result$
        ..add(const _i3.XmlElementName('AvailabilityZoneId'))
        ..add(serializers.serialize(
          availabilityZoneId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('MemberOfServiceLinkedResourceGroup'))
      ..add(serializers.serialize(
        memberOfServiceLinkedResourceGroup,
        specifiedType: const FullType(bool),
      ));
    if (outpostArn != null) {
      result$
        ..add(const _i3.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          outpostArn,
          specifiedType: const FullType(String),
        ));
    }
    if (hostMaintenance != null) {
      result$
        ..add(const _i3.XmlElementName('HostMaintenance'))
        ..add(serializers.serialize(
          hostMaintenance,
          specifiedType: const FullType(HostMaintenance),
        ));
    }
    if (assetId != null) {
      result$
        ..add(const _i3.XmlElementName('AssetId'))
        ..add(serializers.serialize(
          assetId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
