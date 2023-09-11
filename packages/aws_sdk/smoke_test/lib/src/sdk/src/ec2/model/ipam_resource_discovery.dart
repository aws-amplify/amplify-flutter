// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_resource_discovery; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_operating_region.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_discovery_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'ipam_resource_discovery.g.dart';

/// A resource discovery is an IPAM component that enables IPAM to manage and monitor resources that belong to the owning account.
abstract class IpamResourceDiscovery
    with _i1.AWSEquatable<IpamResourceDiscovery>
    implements Built<IpamResourceDiscovery, IpamResourceDiscoveryBuilder> {
  /// A resource discovery is an IPAM component that enables IPAM to manage and monitor resources that belong to the owning account.
  factory IpamResourceDiscovery({
    String? ownerId,
    String? ipamResourceDiscoveryId,
    String? ipamResourceDiscoveryArn,
    String? ipamResourceDiscoveryRegion,
    String? description,
    List<IpamOperatingRegion>? operatingRegions,
    bool? isDefault,
    IpamResourceDiscoveryState? state,
    List<Tag>? tags,
  }) {
    isDefault ??= false;
    return _$IpamResourceDiscovery._(
      ownerId: ownerId,
      ipamResourceDiscoveryId: ipamResourceDiscoveryId,
      ipamResourceDiscoveryArn: ipamResourceDiscoveryArn,
      ipamResourceDiscoveryRegion: ipamResourceDiscoveryRegion,
      description: description,
      operatingRegions:
          operatingRegions == null ? null : _i2.BuiltList(operatingRegions),
      isDefault: isDefault,
      state: state,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// A resource discovery is an IPAM component that enables IPAM to manage and monitor resources that belong to the owning account.
  factory IpamResourceDiscovery.build(
          [void Function(IpamResourceDiscoveryBuilder) updates]) =
      _$IpamResourceDiscovery;

  const IpamResourceDiscovery._();

  static const List<_i3.SmithySerializer<IpamResourceDiscovery>> serializers = [
    IpamResourceDiscoveryEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IpamResourceDiscoveryBuilder b) {
    b.isDefault = false;
  }

  /// The ID of the owner.
  String? get ownerId;

  /// The resource discovery ID.
  String? get ipamResourceDiscoveryId;

  /// The resource discovery Amazon Resource Name (ARN).
  String? get ipamResourceDiscoveryArn;

  /// The resource discovery Region.
  String? get ipamResourceDiscoveryRegion;

  /// The resource discovery description.
  String? get description;

  /// The operating Regions for the resource discovery. Operating Regions are Amazon Web Services Regions where the IPAM is allowed to manage IP address CIDRs. IPAM only discovers and monitors resources in the Amazon Web Services Regions you select as operating Regions.
  _i2.BuiltList<IpamOperatingRegion>? get operatingRegions;

  /// Defines if the resource discovery is the default. The default resource discovery is the resource discovery automatically created when you create an IPAM.
  bool get isDefault;

  /// The lifecycle state of the resource discovery.
  ///
  /// *   `create-in-progress` \- Resource discovery is being created.
  ///
  /// *   `create-complete` \- Resource discovery creation is complete.
  ///
  /// *   `create-failed` \- Resource discovery creation has failed.
  ///
  /// *   `modify-in-progress` \- Resource discovery is being modified.
  ///
  /// *   `modify-complete` \- Resource discovery modification is complete.
  ///
  /// *   `modify-failed` \- Resource discovery modification has failed.
  ///
  /// *   `delete-in-progress` \- Resource discovery is being deleted.
  ///
  /// *   `delete-complete` \- Resource discovery deletion is complete.
  ///
  /// *   `delete-failed` \- Resource discovery deletion has failed.
  ///
  /// *   `isolate-in-progress` \- Amazon Web Services account that created the resource discovery has been removed and the resource discovery is being isolated.
  ///
  /// *   `isolate-complete` \- Resource discovery isolation is complete.
  ///
  /// *   `restore-in-progress` \- Amazon Web Services account that created the resource discovery and was isolated has been restored.
  IpamResourceDiscoveryState? get state;

  /// A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. You can use tags to search and filter your resources or track your Amazon Web Services costs.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        ownerId,
        ipamResourceDiscoveryId,
        ipamResourceDiscoveryArn,
        ipamResourceDiscoveryRegion,
        description,
        operatingRegions,
        isDefault,
        state,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IpamResourceDiscovery')
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'ipamResourceDiscoveryId',
        ipamResourceDiscoveryId,
      )
      ..add(
        'ipamResourceDiscoveryArn',
        ipamResourceDiscoveryArn,
      )
      ..add(
        'ipamResourceDiscoveryRegion',
        ipamResourceDiscoveryRegion,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'operatingRegions',
        operatingRegions,
      )
      ..add(
        'isDefault',
        isDefault,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class IpamResourceDiscoveryEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<IpamResourceDiscovery> {
  const IpamResourceDiscoveryEc2QuerySerializer()
      : super('IpamResourceDiscovery');

  @override
  Iterable<Type> get types => const [
        IpamResourceDiscovery,
        _$IpamResourceDiscovery,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IpamResourceDiscovery deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpamResourceDiscoveryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamResourceDiscoveryId':
          result.ipamResourceDiscoveryId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamResourceDiscoveryArn':
          result.ipamResourceDiscoveryArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamResourceDiscoveryRegion':
          result.ipamResourceDiscoveryRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'operatingRegionSet':
          result.operatingRegions.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(IpamOperatingRegion)],
            ),
          ) as _i2.BuiltList<IpamOperatingRegion>));
        case 'isDefault':
          result.isDefault = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(IpamResourceDiscoveryState),
          ) as IpamResourceDiscoveryState);
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    IpamResourceDiscovery object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'IpamResourceDiscoveryResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final IpamResourceDiscovery(
      :ownerId,
      :ipamResourceDiscoveryId,
      :ipamResourceDiscoveryArn,
      :ipamResourceDiscoveryRegion,
      :description,
      :operatingRegions,
      :isDefault,
      :state,
      :tags
    ) = object;
    if (ownerId != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamResourceDiscoveryId != null) {
      result$
        ..add(const _i3.XmlElementName('IpamResourceDiscoveryId'))
        ..add(serializers.serialize(
          ipamResourceDiscoveryId,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamResourceDiscoveryArn != null) {
      result$
        ..add(const _i3.XmlElementName('IpamResourceDiscoveryArn'))
        ..add(serializers.serialize(
          ipamResourceDiscoveryArn,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamResourceDiscoveryRegion != null) {
      result$
        ..add(const _i3.XmlElementName('IpamResourceDiscoveryRegion'))
        ..add(serializers.serialize(
          ipamResourceDiscoveryRegion,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (operatingRegions != null) {
      result$
        ..add(const _i3.XmlElementName('OperatingRegionSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          operatingRegions,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(IpamOperatingRegion)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('IsDefault'))
      ..add(serializers.serialize(
        isDefault,
        specifiedType: const FullType(bool),
      ));
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(IpamResourceDiscoveryState),
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
    return result$;
  }
}
