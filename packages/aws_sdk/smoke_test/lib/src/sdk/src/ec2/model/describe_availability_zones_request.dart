// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_availability_zones_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_availability_zones_request.g.dart';

abstract class DescribeAvailabilityZonesRequest
    with
        _i1.HttpInput<DescribeAvailabilityZonesRequest>,
        _i2.AWSEquatable<DescribeAvailabilityZonesRequest>
    implements
        Built<DescribeAvailabilityZonesRequest,
            DescribeAvailabilityZonesRequestBuilder> {
  factory DescribeAvailabilityZonesRequest({
    List<Filter>? filters,
    List<String>? zoneNames,
    List<String>? zoneIds,
    bool? allAvailabilityZones,
    bool? dryRun,
  }) {
    allAvailabilityZones ??= false;
    dryRun ??= false;
    return _$DescribeAvailabilityZonesRequest._(
      filters: filters == null ? null : _i3.BuiltList(filters),
      zoneNames: zoneNames == null ? null : _i3.BuiltList(zoneNames),
      zoneIds: zoneIds == null ? null : _i3.BuiltList(zoneIds),
      allAvailabilityZones: allAvailabilityZones,
      dryRun: dryRun,
    );
  }

  factory DescribeAvailabilityZonesRequest.build(
          [void Function(DescribeAvailabilityZonesRequestBuilder) updates]) =
      _$DescribeAvailabilityZonesRequest;

  const DescribeAvailabilityZonesRequest._();

  factory DescribeAvailabilityZonesRequest.fromRequest(
    DescribeAvailabilityZonesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeAvailabilityZonesRequest>>
      serializers = [DescribeAvailabilityZonesRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeAvailabilityZonesRequestBuilder b) {
    b
      ..allAvailabilityZones = false
      ..dryRun = false;
  }

  /// The filters.
  ///
  /// *   `group-name` \- For Availability Zones, use the Region name. For Local Zones, use the name of the group associated with the Local Zone (for example, `us-west-2-lax-1`) For Wavelength Zones, use the name of the group associated with the Wavelength Zone (for example, `us-east-1-wl1-bos-wlz-1`).
  ///
  /// *   `message` \- The Zone message.
  ///
  /// *   `opt-in-status` \- The opt-in status (`opted-in` | `not-opted-in` | `opt-in-not-required`).
  ///
  /// *   `parent-zoneID` \- The ID of the zone that handles some of the Local Zone and Wavelength Zone control plane operations, such as API calls.
  ///
  /// *   `parent-zoneName` \- The ID of the zone that handles some of the Local Zone and Wavelength Zone control plane operations, such as API calls.
  ///
  /// *   `region-name` \- The name of the Region for the Zone (for example, `us-east-1`).
  ///
  /// *   `state` \- The state of the Availability Zone, the Local Zone, or the Wavelength Zone (`available`).
  ///
  /// *   `zone-id` \- The ID of the Availability Zone (for example, `use1-az1`), the Local Zone (for example, `usw2-lax1-az1`), or the Wavelength Zone (for example, `us-east-1-wl1-bos-wlz-1`).
  ///
  /// *   `zone-name` \- The name of the Availability Zone (for example, `us-east-1a`), the Local Zone (for example, `us-west-2-lax-1a`), or the Wavelength Zone (for example, `us-east-1-wl1-bos-wlz-1`).
  ///
  /// *   `zone-type` \- The type of zone (`availability-zone` | `local-zone` | `wavelength-zone`).
  _i3.BuiltList<Filter>? get filters;

  /// The names of the Availability Zones, Local Zones, and Wavelength Zones.
  _i3.BuiltList<String>? get zoneNames;

  /// The IDs of the Availability Zones, Local Zones, and Wavelength Zones.
  _i3.BuiltList<String>? get zoneIds;

  /// Include all Availability Zones, Local Zones, and Wavelength Zones regardless of your opt-in status.
  ///
  /// If you do not use this parameter, the results include only the zones for the Regions where you have chosen the option to opt in.
  bool get allAvailabilityZones;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeAvailabilityZonesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        zoneNames,
        zoneIds,
        allAvailabilityZones,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeAvailabilityZonesRequest')
          ..add(
            'filters',
            filters,
          )
          ..add(
            'zoneNames',
            zoneNames,
          )
          ..add(
            'zoneIds',
            zoneIds,
          )
          ..add(
            'allAvailabilityZones',
            allAvailabilityZones,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DescribeAvailabilityZonesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeAvailabilityZonesRequest> {
  const DescribeAvailabilityZonesRequestEc2QuerySerializer()
      : super('DescribeAvailabilityZonesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeAvailabilityZonesRequest,
        _$DescribeAvailabilityZonesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeAvailabilityZonesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAvailabilityZonesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Filter':
          result.filters.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'Filter',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Filter)],
            ),
          ) as _i3.BuiltList<Filter>));
        case 'ZoneName':
          result.zoneNames.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'ZoneName',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'ZoneId':
          result.zoneIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'ZoneId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'AllAvailabilityZones':
          result.allAvailabilityZones = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeAvailabilityZonesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeAvailabilityZonesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeAvailabilityZonesRequest(
      :filters,
      :zoneNames,
      :zoneIds,
      :allAvailabilityZones,
      :dryRun
    ) = object;
    if (filters != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filters,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    if (zoneNames != null) {
      result$
        ..add(const _i1.XmlElementName('ZoneName'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'ZoneName',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          zoneNames,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (zoneIds != null) {
      result$
        ..add(const _i1.XmlElementName('ZoneId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'ZoneId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          zoneIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('AllAvailabilityZones'))
      ..add(serializers.serialize(
        allAvailabilityZones,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
