// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_event_window_association_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'instance_event_window_association_request.g.dart';

/// One or more targets associated with the specified event window. Only one _type_ of target (instance ID, instance tag, or Dedicated Host ID) can be associated with an event window.
abstract class InstanceEventWindowAssociationRequest
    with
        _i1.AWSEquatable<InstanceEventWindowAssociationRequest>
    implements
        Built<InstanceEventWindowAssociationRequest,
            InstanceEventWindowAssociationRequestBuilder> {
  /// One or more targets associated with the specified event window. Only one _type_ of target (instance ID, instance tag, or Dedicated Host ID) can be associated with an event window.
  factory InstanceEventWindowAssociationRequest({
    List<String>? instanceIds,
    List<Tag>? instanceTags,
    List<String>? dedicatedHostIds,
  }) {
    return _$InstanceEventWindowAssociationRequest._(
      instanceIds: instanceIds == null ? null : _i2.BuiltList(instanceIds),
      instanceTags: instanceTags == null ? null : _i2.BuiltList(instanceTags),
      dedicatedHostIds:
          dedicatedHostIds == null ? null : _i2.BuiltList(dedicatedHostIds),
    );
  }

  /// One or more targets associated with the specified event window. Only one _type_ of target (instance ID, instance tag, or Dedicated Host ID) can be associated with an event window.
  factory InstanceEventWindowAssociationRequest.build(
      [void Function(InstanceEventWindowAssociationRequestBuilder)
          updates]) = _$InstanceEventWindowAssociationRequest;

  const InstanceEventWindowAssociationRequest._();

  static const List<_i3.SmithySerializer<InstanceEventWindowAssociationRequest>>
      serializers = [InstanceEventWindowAssociationRequestEc2QuerySerializer()];

  /// The IDs of the instances to associate with the event window. If the instance is on a Dedicated Host, you can't specify the Instance ID parameter; you must use the Dedicated Host ID parameter.
  _i2.BuiltList<String>? get instanceIds;

  /// The instance tags to associate with the event window. Any instances associated with the tags will be associated with the event window.
  _i2.BuiltList<Tag>? get instanceTags;

  /// The IDs of the Dedicated Hosts to associate with the event window.
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
        newBuiltValueToStringHelper('InstanceEventWindowAssociationRequest')
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

class InstanceEventWindowAssociationRequestEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<InstanceEventWindowAssociationRequest> {
  const InstanceEventWindowAssociationRequestEc2QuerySerializer()
      : super('InstanceEventWindowAssociationRequest');

  @override
  Iterable<Type> get types => const [
        InstanceEventWindowAssociationRequest,
        _$InstanceEventWindowAssociationRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceEventWindowAssociationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceEventWindowAssociationRequestBuilder();
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
    InstanceEventWindowAssociationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'InstanceEventWindowAssociationRequestResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceEventWindowAssociationRequest(
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
