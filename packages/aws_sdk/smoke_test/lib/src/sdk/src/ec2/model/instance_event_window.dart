// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_event_window; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_association_target.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_time_range.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'instance_event_window.g.dart';

/// The event window.
abstract class InstanceEventWindow
    with _i1.AWSEquatable<InstanceEventWindow>
    implements Built<InstanceEventWindow, InstanceEventWindowBuilder> {
  /// The event window.
  factory InstanceEventWindow({
    String? instanceEventWindowId,
    List<InstanceEventWindowTimeRange>? timeRanges,
    String? name,
    String? cronExpression,
    InstanceEventWindowAssociationTarget? associationTarget,
    InstanceEventWindowState? state,
    List<Tag>? tags,
  }) {
    return _$InstanceEventWindow._(
      instanceEventWindowId: instanceEventWindowId,
      timeRanges: timeRanges == null ? null : _i2.BuiltList(timeRanges),
      name: name,
      cronExpression: cronExpression,
      associationTarget: associationTarget,
      state: state,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// The event window.
  factory InstanceEventWindow.build(
          [void Function(InstanceEventWindowBuilder) updates]) =
      _$InstanceEventWindow;

  const InstanceEventWindow._();

  static const List<_i3.SmithySerializer<InstanceEventWindow>> serializers = [
    InstanceEventWindowEc2QuerySerializer()
  ];

  /// The ID of the event window.
  String? get instanceEventWindowId;

  /// One or more time ranges defined for the event window.
  _i2.BuiltList<InstanceEventWindowTimeRange>? get timeRanges;

  /// The name of the event window.
  String? get name;

  /// The cron expression defined for the event window.
  String? get cronExpression;

  /// One or more targets associated with the event window.
  InstanceEventWindowAssociationTarget? get associationTarget;

  /// The current state of the event window.
  InstanceEventWindowState? get state;

  /// The instance tags associated with the event window.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        instanceEventWindowId,
        timeRanges,
        name,
        cronExpression,
        associationTarget,
        state,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceEventWindow')
      ..add(
        'instanceEventWindowId',
        instanceEventWindowId,
      )
      ..add(
        'timeRanges',
        timeRanges,
      )
      ..add(
        'name',
        name,
      )
      ..add(
        'cronExpression',
        cronExpression,
      )
      ..add(
        'associationTarget',
        associationTarget,
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

class InstanceEventWindowEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InstanceEventWindow> {
  const InstanceEventWindowEc2QuerySerializer() : super('InstanceEventWindow');

  @override
  Iterable<Type> get types => const [
        InstanceEventWindow,
        _$InstanceEventWindow,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceEventWindow deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceEventWindowBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceEventWindowId':
          result.instanceEventWindowId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'timeRangeSet':
          result.timeRanges.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceEventWindowTimeRange)],
            ),
          ) as _i2.BuiltList<InstanceEventWindowTimeRange>));
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'cronExpression':
          result.cronExpression = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'associationTarget':
          result.associationTarget.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceEventWindowAssociationTarget),
          ) as InstanceEventWindowAssociationTarget));
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceEventWindowState),
          ) as InstanceEventWindowState);
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
    InstanceEventWindow object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'InstanceEventWindowResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceEventWindow(
      :instanceEventWindowId,
      :timeRanges,
      :name,
      :cronExpression,
      :associationTarget,
      :state,
      :tags
    ) = object;
    if (instanceEventWindowId != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceEventWindowId'))
        ..add(serializers.serialize(
          instanceEventWindowId,
          specifiedType: const FullType(String),
        ));
    }
    if (timeRanges != null) {
      result$
        ..add(const _i3.XmlElementName('TimeRangeSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          timeRanges,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(InstanceEventWindowTimeRange)],
          ),
        ));
    }
    if (name != null) {
      result$
        ..add(const _i3.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (cronExpression != null) {
      result$
        ..add(const _i3.XmlElementName('CronExpression'))
        ..add(serializers.serialize(
          cronExpression,
          specifiedType: const FullType(String),
        ));
    }
    if (associationTarget != null) {
      result$
        ..add(const _i3.XmlElementName('AssociationTarget'))
        ..add(serializers.serialize(
          associationTarget,
          specifiedType: const FullType(InstanceEventWindowAssociationTarget),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(InstanceEventWindowState),
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
