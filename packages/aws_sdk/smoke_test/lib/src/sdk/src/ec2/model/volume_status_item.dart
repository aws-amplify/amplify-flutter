// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.volume_status_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_action.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_attachment_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_event.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_info.dart';

part 'volume_status_item.g.dart';

/// Describes the volume status.
abstract class VolumeStatusItem
    with _i1.AWSEquatable<VolumeStatusItem>
    implements Built<VolumeStatusItem, VolumeStatusItemBuilder> {
  /// Describes the volume status.
  factory VolumeStatusItem({
    List<VolumeStatusAction>? actions,
    String? availabilityZone,
    String? outpostArn,
    List<VolumeStatusEvent>? events,
    String? volumeId,
    VolumeStatusInfo? volumeStatus,
    List<VolumeStatusAttachmentStatus>? attachmentStatuses,
  }) {
    return _$VolumeStatusItem._(
      actions: actions == null ? null : _i2.BuiltList(actions),
      availabilityZone: availabilityZone,
      outpostArn: outpostArn,
      events: events == null ? null : _i2.BuiltList(events),
      volumeId: volumeId,
      volumeStatus: volumeStatus,
      attachmentStatuses:
          attachmentStatuses == null ? null : _i2.BuiltList(attachmentStatuses),
    );
  }

  /// Describes the volume status.
  factory VolumeStatusItem.build(
      [void Function(VolumeStatusItemBuilder) updates]) = _$VolumeStatusItem;

  const VolumeStatusItem._();

  static const List<_i3.SmithySerializer<VolumeStatusItem>> serializers = [
    VolumeStatusItemEc2QuerySerializer()
  ];

  /// The details of the operation.
  _i2.BuiltList<VolumeStatusAction>? get actions;

  /// The Availability Zone of the volume.
  String? get availabilityZone;

  /// The Amazon Resource Name (ARN) of the Outpost.
  String? get outpostArn;

  /// A list of events associated with the volume.
  _i2.BuiltList<VolumeStatusEvent>? get events;

  /// The volume ID.
  String? get volumeId;

  /// The volume status.
  VolumeStatusInfo? get volumeStatus;

  /// Information about the instances to which the volume is attached.
  _i2.BuiltList<VolumeStatusAttachmentStatus>? get attachmentStatuses;
  @override
  List<Object?> get props => [
        actions,
        availabilityZone,
        outpostArn,
        events,
        volumeId,
        volumeStatus,
        attachmentStatuses,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VolumeStatusItem')
      ..add(
        'actions',
        actions,
      )
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'outpostArn',
        outpostArn,
      )
      ..add(
        'events',
        events,
      )
      ..add(
        'volumeId',
        volumeId,
      )
      ..add(
        'volumeStatus',
        volumeStatus,
      )
      ..add(
        'attachmentStatuses',
        attachmentStatuses,
      );
    return helper.toString();
  }
}

class VolumeStatusItemEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<VolumeStatusItem> {
  const VolumeStatusItemEc2QuerySerializer() : super('VolumeStatusItem');

  @override
  Iterable<Type> get types => const [
        VolumeStatusItem,
        _$VolumeStatusItem,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VolumeStatusItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VolumeStatusItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'actionsSet':
          result.actions.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(VolumeStatusAction)],
            ),
          ) as _i2.BuiltList<VolumeStatusAction>));
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'outpostArn':
          result.outpostArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'eventsSet':
          result.events.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(VolumeStatusEvent)],
            ),
          ) as _i2.BuiltList<VolumeStatusEvent>));
        case 'volumeId':
          result.volumeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'volumeStatus':
          result.volumeStatus.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VolumeStatusInfo),
          ) as VolumeStatusInfo));
        case 'attachmentStatuses':
          result.attachmentStatuses.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(VolumeStatusAttachmentStatus)],
            ),
          ) as _i2.BuiltList<VolumeStatusAttachmentStatus>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VolumeStatusItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'VolumeStatusItemResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VolumeStatusItem(
      :actions,
      :availabilityZone,
      :outpostArn,
      :events,
      :volumeId,
      :volumeStatus,
      :attachmentStatuses
    ) = object;
    if (actions != null) {
      result$
        ..add(const _i3.XmlElementName('ActionsSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          actions,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(VolumeStatusAction)],
          ),
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
    if (outpostArn != null) {
      result$
        ..add(const _i3.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          outpostArn,
          specifiedType: const FullType(String),
        ));
    }
    if (events != null) {
      result$
        ..add(const _i3.XmlElementName('EventsSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          events,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(VolumeStatusEvent)],
          ),
        ));
    }
    if (volumeId != null) {
      result$
        ..add(const _i3.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          volumeId,
          specifiedType: const FullType(String),
        ));
    }
    if (volumeStatus != null) {
      result$
        ..add(const _i3.XmlElementName('VolumeStatus'))
        ..add(serializers.serialize(
          volumeStatus,
          specifiedType: const FullType(VolumeStatusInfo),
        ));
    }
    if (attachmentStatuses != null) {
      result$
        ..add(const _i3.XmlElementName('AttachmentStatuses'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          attachmentStatuses,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(VolumeStatusAttachmentStatus)],
          ),
        ));
    }
    return result$;
  }
}
