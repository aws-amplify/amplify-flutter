// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_event_window_disassociation_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'instance_event_window_disassociation_request.g.dart';

/// The targets to disassociate from the specified event window.
abstract class InstanceEventWindowDisassociationRequest
    with
        _i1.AWSEquatable<InstanceEventWindowDisassociationRequest>
    implements
        Built<InstanceEventWindowDisassociationRequest,
            InstanceEventWindowDisassociationRequestBuilder> {
  /// The targets to disassociate from the specified event window.
  factory InstanceEventWindowDisassociationRequest({
    List<String>? instanceIds,
    List<Tag>? instanceTags,
    List<String>? dedicatedHostIds,
  }) {
    return _$InstanceEventWindowDisassociationRequest._(
      instanceIds: instanceIds == null ? null : _i2.BuiltList(instanceIds),
      instanceTags: instanceTags == null ? null : _i2.BuiltList(instanceTags),
      dedicatedHostIds:
          dedicatedHostIds == null ? null : _i2.BuiltList(dedicatedHostIds),
    );
  }

  /// The targets to disassociate from the specified event window.
  factory InstanceEventWindowDisassociationRequest.build(
      [void Function(InstanceEventWindowDisassociationRequestBuilder)
          updates]) = _$InstanceEventWindowDisassociationRequest;

  const InstanceEventWindowDisassociationRequest._();

  static const List<
          _i3.SmithySerializer<InstanceEventWindowDisassociationRequest>>
      serializers = [
    InstanceEventWindowDisassociationRequestEc2QuerySerializer()
  ];

  /// The IDs of the instances to disassociate from the event window.
  _i2.BuiltList<String>? get instanceIds;

  /// The instance tags to disassociate from the event window. Any instances associated with the tags will be disassociated from the event window.
  _i2.BuiltList<Tag>? get instanceTags;

  /// The IDs of the Dedicated Hosts to disassociate from the event window.
  _i2.BuiltList<String>? get dedicatedHostIds;
  @override
  List<Object?> get props => [
        instanceIds,
        instanceTags,
        dedicatedHostIds,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InstanceEventWindowDisassociationRequest')
          ..add(
            'instanceIds',
            instanceIds,
          )
          ..add(
            'instanceTags',
            instanceTags,
          )
          ..add(
            'dedicatedHostIds',
            dedicatedHostIds,
          );
    return helper.toString();
  }
}

class InstanceEventWindowDisassociationRequestEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<InstanceEventWindowDisassociationRequest> {
  const InstanceEventWindowDisassociationRequestEc2QuerySerializer()
      : super('InstanceEventWindowDisassociationRequest');

  @override
  Iterable<Type> get types => const [
        InstanceEventWindowDisassociationRequest,
        _$InstanceEventWindowDisassociationRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceEventWindowDisassociationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceEventWindowDisassociationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'InstanceId':
          result.instanceIds.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'InstanceTag':
          result.instanceTags.replace((const _i3.XmlBuiltListSerializer(
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
        case 'DedicatedHostId':
          result.dedicatedHostIds.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceEventWindowDisassociationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'InstanceEventWindowDisassociationRequestResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceEventWindowDisassociationRequest(
      :instanceIds,
      :instanceTags,
      :dedicatedHostIds
    ) = object;
    if (instanceIds != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceId'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceIds,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (instanceTags != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceTag'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceTags,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    if (dedicatedHostIds != null) {
      result$
        ..add(const _i3.XmlElementName('DedicatedHostId'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          dedicatedHostIds,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
