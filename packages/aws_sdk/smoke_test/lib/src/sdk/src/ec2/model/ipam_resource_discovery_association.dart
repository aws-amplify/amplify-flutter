// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_resource_discovery_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_associated_resource_discovery_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_discovery_association_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'ipam_resource_discovery_association.g.dart';

/// An IPAM resource discovery association. An associated resource discovery is a resource discovery that has been associated with an IPAM. IPAM aggregates the resource CIDRs discovered by the associated resource discovery.
abstract class IpamResourceDiscoveryAssociation
    with
        _i1.AWSEquatable<IpamResourceDiscoveryAssociation>
    implements
        Built<IpamResourceDiscoveryAssociation,
            IpamResourceDiscoveryAssociationBuilder> {
  /// An IPAM resource discovery association. An associated resource discovery is a resource discovery that has been associated with an IPAM. IPAM aggregates the resource CIDRs discovered by the associated resource discovery.
  factory IpamResourceDiscoveryAssociation({
    String? ownerId,
    String? ipamResourceDiscoveryAssociationId,
    String? ipamResourceDiscoveryAssociationArn,
    String? ipamResourceDiscoveryId,
    String? ipamId,
    String? ipamArn,
    String? ipamRegion,
    bool? isDefault,
    IpamAssociatedResourceDiscoveryStatus? resourceDiscoveryStatus,
    IpamResourceDiscoveryAssociationState? state,
    List<Tag>? tags,
  }) {
    isDefault ??= false;
    return _$IpamResourceDiscoveryAssociation._(
      ownerId: ownerId,
      ipamResourceDiscoveryAssociationId: ipamResourceDiscoveryAssociationId,
      ipamResourceDiscoveryAssociationArn: ipamResourceDiscoveryAssociationArn,
      ipamResourceDiscoveryId: ipamResourceDiscoveryId,
      ipamId: ipamId,
      ipamArn: ipamArn,
      ipamRegion: ipamRegion,
      isDefault: isDefault,
      resourceDiscoveryStatus: resourceDiscoveryStatus,
      state: state,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// An IPAM resource discovery association. An associated resource discovery is a resource discovery that has been associated with an IPAM. IPAM aggregates the resource CIDRs discovered by the associated resource discovery.
  factory IpamResourceDiscoveryAssociation.build(
          [void Function(IpamResourceDiscoveryAssociationBuilder) updates]) =
      _$IpamResourceDiscoveryAssociation;

  const IpamResourceDiscoveryAssociation._();

  static const List<_i3.SmithySerializer<IpamResourceDiscoveryAssociation>>
      serializers = [IpamResourceDiscoveryAssociationEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IpamResourceDiscoveryAssociationBuilder b) {
    b.isDefault = false;
  }

  /// The Amazon Web Services account ID of the resource discovery owner.
  String? get ownerId;

  /// The resource discovery association ID.
  String? get ipamResourceDiscoveryAssociationId;

  /// The resource discovery association Amazon Resource Name (ARN).
  String? get ipamResourceDiscoveryAssociationArn;

  /// The resource discovery ID.
  String? get ipamResourceDiscoveryId;

  /// The IPAM ID.
  String? get ipamId;

  /// The IPAM ARN.
  String? get ipamArn;

  /// The IPAM home Region.
  String? get ipamRegion;

  /// Defines if the resource discovery is the default. When you create an IPAM, a default resource discovery is created for your IPAM and it's associated with your IPAM.
  bool get isDefault;

  /// The resource discovery status.
  ///
  /// *   `active` \- Connection or permissions required to read the results of the resource discovery are intact.
  ///
  /// *   `not-found` \- Connection or permissions required to read the results of the resource discovery are broken. This may happen if the owner of the resource discovery stopped sharing it or deleted the resource discovery. Verify the resource discovery still exists and the Amazon Web Services RAM resource share is still intact.
  IpamAssociatedResourceDiscoveryStatus? get resourceDiscoveryStatus;

  /// The lifecycle state of the association when you associate or disassociate a resource discovery.
  ///
  /// *   `associate-in-progress` \- Resource discovery is being associated.
  ///
  /// *   `associate-complete` \- Resource discovery association is complete.
  ///
  /// *   `associate-failed` \- Resource discovery association has failed.
  ///
  /// *   `disassociate-in-progress` \- Resource discovery is being disassociated.
  ///
  /// *   `disassociate-complete` \- Resource discovery disassociation is complete.
  ///
  /// *   `disassociate-failed` \- Resource discovery disassociation has failed.
  ///
  /// *   `isolate-in-progress` \- Amazon Web Services account that created the resource discovery association has been removed and the resource discovery associatation is being isolated.
  ///
  /// *   `isolate-complete` \- Resource discovery isolation is complete..
  ///
  /// *   `restore-in-progress` \- Resource discovery is being restored.
  IpamResourceDiscoveryAssociationState? get state;

  /// A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. You can use tags to search and filter your resources or track your Amazon Web Services costs.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        ownerId,
        ipamResourceDiscoveryAssociationId,
        ipamResourceDiscoveryAssociationArn,
        ipamResourceDiscoveryId,
        ipamId,
        ipamArn,
        ipamRegion,
        isDefault,
        resourceDiscoveryStatus,
        state,
        tags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('IpamResourceDiscoveryAssociation')
          ..add(
            'ownerId',
            ownerId,
          )
          ..add(
            'ipamResourceDiscoveryAssociationId',
            ipamResourceDiscoveryAssociationId,
          )
          ..add(
            'ipamResourceDiscoveryAssociationArn',
            ipamResourceDiscoveryAssociationArn,
          )
          ..add(
            'ipamResourceDiscoveryId',
            ipamResourceDiscoveryId,
          )
          ..add(
            'ipamId',
            ipamId,
          )
          ..add(
            'ipamArn',
            ipamArn,
          )
          ..add(
            'ipamRegion',
            ipamRegion,
          )
          ..add(
            'isDefault',
            isDefault,
          )
          ..add(
            'resourceDiscoveryStatus',
            resourceDiscoveryStatus,
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

class IpamResourceDiscoveryAssociationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<IpamResourceDiscoveryAssociation> {
  const IpamResourceDiscoveryAssociationEc2QuerySerializer()
      : super('IpamResourceDiscoveryAssociation');

  @override
  Iterable<Type> get types => const [
        IpamResourceDiscoveryAssociation,
        _$IpamResourceDiscoveryAssociation,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IpamResourceDiscoveryAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpamResourceDiscoveryAssociationBuilder();
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
        case 'ipamResourceDiscoveryAssociationId':
          result.ipamResourceDiscoveryAssociationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamResourceDiscoveryAssociationArn':
          result.ipamResourceDiscoveryAssociationArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamResourceDiscoveryId':
          result.ipamResourceDiscoveryId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamId':
          result.ipamId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamArn':
          result.ipamArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamRegion':
          result.ipamRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'isDefault':
          result.isDefault = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'resourceDiscoveryStatus':
          result.resourceDiscoveryStatus = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(IpamAssociatedResourceDiscoveryStatus),
          ) as IpamAssociatedResourceDiscoveryStatus);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(IpamResourceDiscoveryAssociationState),
          ) as IpamResourceDiscoveryAssociationState);
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
    IpamResourceDiscoveryAssociation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'IpamResourceDiscoveryAssociationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final IpamResourceDiscoveryAssociation(
      :ownerId,
      :ipamResourceDiscoveryAssociationId,
      :ipamResourceDiscoveryAssociationArn,
      :ipamResourceDiscoveryId,
      :ipamId,
      :ipamArn,
      :ipamRegion,
      :isDefault,
      :resourceDiscoveryStatus,
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
    if (ipamResourceDiscoveryAssociationId != null) {
      result$
        ..add(const _i3.XmlElementName('IpamResourceDiscoveryAssociationId'))
        ..add(serializers.serialize(
          ipamResourceDiscoveryAssociationId,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamResourceDiscoveryAssociationArn != null) {
      result$
        ..add(const _i3.XmlElementName('IpamResourceDiscoveryAssociationArn'))
        ..add(serializers.serialize(
          ipamResourceDiscoveryAssociationArn,
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
    if (ipamId != null) {
      result$
        ..add(const _i3.XmlElementName('IpamId'))
        ..add(serializers.serialize(
          ipamId,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamArn != null) {
      result$
        ..add(const _i3.XmlElementName('IpamArn'))
        ..add(serializers.serialize(
          ipamArn,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamRegion != null) {
      result$
        ..add(const _i3.XmlElementName('IpamRegion'))
        ..add(serializers.serialize(
          ipamRegion,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('IsDefault'))
      ..add(serializers.serialize(
        isDefault,
        specifiedType: const FullType(bool),
      ));
    if (resourceDiscoveryStatus != null) {
      result$
        ..add(const _i3.XmlElementName('ResourceDiscoveryStatus'))
        ..add(serializers.serialize(
          resourceDiscoveryStatus,
          specifiedType:
              const FullType.nullable(IpamAssociatedResourceDiscoveryStatus),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType:
              const FullType.nullable(IpamResourceDiscoveryAssociationState),
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
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
