// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.availability_zone; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/availability_zone_message.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/availability_zone_opt_in_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/availability_zone_state.dart';

part 'availability_zone.g.dart';

/// Describes Availability Zones, Local Zones, and Wavelength Zones.
abstract class AvailabilityZone
    with _i1.AWSEquatable<AvailabilityZone>
    implements Built<AvailabilityZone, AvailabilityZoneBuilder> {
  /// Describes Availability Zones, Local Zones, and Wavelength Zones.
  factory AvailabilityZone({
    AvailabilityZoneState? state,
    AvailabilityZoneOptInStatus? optInStatus,
    List<AvailabilityZoneMessage>? messages,
    String? regionName,
    String? zoneName,
    String? zoneId,
    String? groupName,
    String? networkBorderGroup,
    String? zoneType,
    String? parentZoneName,
    String? parentZoneId,
  }) {
    return _$AvailabilityZone._(
      state: state,
      optInStatus: optInStatus,
      messages: messages == null ? null : _i2.BuiltList(messages),
      regionName: regionName,
      zoneName: zoneName,
      zoneId: zoneId,
      groupName: groupName,
      networkBorderGroup: networkBorderGroup,
      zoneType: zoneType,
      parentZoneName: parentZoneName,
      parentZoneId: parentZoneId,
    );
  }

  /// Describes Availability Zones, Local Zones, and Wavelength Zones.
  factory AvailabilityZone.build(
      [void Function(AvailabilityZoneBuilder) updates]) = _$AvailabilityZone;

  const AvailabilityZone._();

  static const List<_i3.SmithySerializer<AvailabilityZone>> serializers = [
    AvailabilityZoneEc2QuerySerializer()
  ];

  /// The state of the Availability Zone, Local Zone, or Wavelength Zone. This value is always `available`.
  AvailabilityZoneState? get state;

  /// For Availability Zones, this parameter always has the value of `opt-in-not-required`.
  ///
  /// For Local Zones and Wavelength Zones, this parameter is the opt-in status. The possible values are `opted-in`, and `not-opted-in`.
  AvailabilityZoneOptInStatus? get optInStatus;

  /// Any messages about the Availability Zone, Local Zone, or Wavelength Zone.
  _i2.BuiltList<AvailabilityZoneMessage>? get messages;

  /// The name of the Region.
  String? get regionName;

  /// The name of the Availability Zone, Local Zone, or Wavelength Zone.
  String? get zoneName;

  /// The ID of the Availability Zone, Local Zone, or Wavelength Zone.
  String? get zoneId;

  /// For Availability Zones, this parameter has the same value as the Region name.
  ///
  /// For Local Zones, the name of the associated group, for example `us-west-2-lax-1`.
  ///
  /// For Wavelength Zones, the name of the associated group, for example `us-east-1-wl1-bos-wlz-1`.
  String? get groupName;

  /// The name of the network border group.
  String? get networkBorderGroup;

  /// The type of zone. The valid values are `availability-zone`, `local-zone`, and `wavelength-zone`.
  String? get zoneType;

  /// The name of the zone that handles some of the Local Zone or Wavelength Zone control plane operations, such as API calls.
  String? get parentZoneName;

  /// The ID of the zone that handles some of the Local Zone or Wavelength Zone control plane operations, such as API calls.
  String? get parentZoneId;
  @override
  List<Object?> get props => [
        state,
        optInStatus,
        messages,
        regionName,
        zoneName,
        zoneId,
        groupName,
        networkBorderGroup,
        zoneType,
        parentZoneName,
        parentZoneId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AvailabilityZone')
      ..add(
        'state',
        state,
      )
      ..add(
        'optInStatus',
        optInStatus,
      )
      ..add(
        'messages',
        messages,
      )
      ..add(
        'regionName',
        regionName,
      )
      ..add(
        'zoneName',
        zoneName,
      )
      ..add(
        'zoneId',
        zoneId,
      )
      ..add(
        'groupName',
        groupName,
      )
      ..add(
        'networkBorderGroup',
        networkBorderGroup,
      )
      ..add(
        'zoneType',
        zoneType,
      )
      ..add(
        'parentZoneName',
        parentZoneName,
      )
      ..add(
        'parentZoneId',
        parentZoneId,
      );
    return helper.toString();
  }
}

class AvailabilityZoneEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AvailabilityZone> {
  const AvailabilityZoneEc2QuerySerializer() : super('AvailabilityZone');

  @override
  Iterable<Type> get types => const [
        AvailabilityZone,
        _$AvailabilityZone,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AvailabilityZone deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AvailabilityZoneBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'zoneState':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(AvailabilityZoneState),
          ) as AvailabilityZoneState);
        case 'optInStatus':
          result.optInStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(AvailabilityZoneOptInStatus),
          ) as AvailabilityZoneOptInStatus);
        case 'messageSet':
          result.messages.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AvailabilityZoneMessage)],
            ),
          ) as _i2.BuiltList<AvailabilityZoneMessage>));
        case 'regionName':
          result.regionName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'zoneName':
          result.zoneName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'zoneId':
          result.zoneId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'groupName':
          result.groupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkBorderGroup':
          result.networkBorderGroup = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'zoneType':
          result.zoneType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'parentZoneName':
          result.parentZoneName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'parentZoneId':
          result.parentZoneId = (serializers.deserialize(
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
    AvailabilityZone object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AvailabilityZoneResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AvailabilityZone(
      :state,
      :optInStatus,
      :messages,
      :regionName,
      :zoneName,
      :zoneId,
      :groupName,
      :networkBorderGroup,
      :zoneType,
      :parentZoneName,
      :parentZoneId
    ) = object;
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('ZoneState'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(AvailabilityZoneState),
        ));
    }
    if (optInStatus != null) {
      result$
        ..add(const _i3.XmlElementName('OptInStatus'))
        ..add(serializers.serialize(
          optInStatus,
          specifiedType: const FullType.nullable(AvailabilityZoneOptInStatus),
        ));
    }
    if (messages != null) {
      result$
        ..add(const _i3.XmlElementName('MessageSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          messages,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(AvailabilityZoneMessage)],
          ),
        ));
    }
    if (regionName != null) {
      result$
        ..add(const _i3.XmlElementName('RegionName'))
        ..add(serializers.serialize(
          regionName,
          specifiedType: const FullType(String),
        ));
    }
    if (zoneName != null) {
      result$
        ..add(const _i3.XmlElementName('ZoneName'))
        ..add(serializers.serialize(
          zoneName,
          specifiedType: const FullType(String),
        ));
    }
    if (zoneId != null) {
      result$
        ..add(const _i3.XmlElementName('ZoneId'))
        ..add(serializers.serialize(
          zoneId,
          specifiedType: const FullType(String),
        ));
    }
    if (groupName != null) {
      result$
        ..add(const _i3.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          groupName,
          specifiedType: const FullType(String),
        ));
    }
    if (networkBorderGroup != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkBorderGroup'))
        ..add(serializers.serialize(
          networkBorderGroup,
          specifiedType: const FullType(String),
        ));
    }
    if (zoneType != null) {
      result$
        ..add(const _i3.XmlElementName('ZoneType'))
        ..add(serializers.serialize(
          zoneType,
          specifiedType: const FullType(String),
        ));
    }
    if (parentZoneName != null) {
      result$
        ..add(const _i3.XmlElementName('ParentZoneName'))
        ..add(serializers.serialize(
          parentZoneName,
          specifiedType: const FullType(String),
        ));
    }
    if (parentZoneId != null) {
      result$
        ..add(const _i3.XmlElementName('ParentZoneId'))
        ..add(serializers.serialize(
          parentZoneId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
