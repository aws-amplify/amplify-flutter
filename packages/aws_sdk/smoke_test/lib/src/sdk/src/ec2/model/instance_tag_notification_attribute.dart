// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_tag_notification_attribute; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'instance_tag_notification_attribute.g.dart';

/// Describes the registered tag keys for the current Region.
abstract class InstanceTagNotificationAttribute
    with
        _i1.AWSEquatable<InstanceTagNotificationAttribute>
    implements
        Built<InstanceTagNotificationAttribute,
            InstanceTagNotificationAttributeBuilder> {
  /// Describes the registered tag keys for the current Region.
  factory InstanceTagNotificationAttribute({
    List<String>? instanceTagKeys,
    bool? includeAllTagsOfInstance,
  }) {
    includeAllTagsOfInstance ??= false;
    return _$InstanceTagNotificationAttribute._(
      instanceTagKeys:
          instanceTagKeys == null ? null : _i2.BuiltList(instanceTagKeys),
      includeAllTagsOfInstance: includeAllTagsOfInstance,
    );
  }

  /// Describes the registered tag keys for the current Region.
  factory InstanceTagNotificationAttribute.build(
          [void Function(InstanceTagNotificationAttributeBuilder) updates]) =
      _$InstanceTagNotificationAttribute;

  const InstanceTagNotificationAttribute._();

  static const List<_i3.SmithySerializer<InstanceTagNotificationAttribute>>
      serializers = [InstanceTagNotificationAttributeEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceTagNotificationAttributeBuilder b) {
    b.includeAllTagsOfInstance = false;
  }

  /// The registered tag keys.
  _i2.BuiltList<String>? get instanceTagKeys;

  /// Indicates wheter all tag keys in the current Region are registered to appear in scheduled event notifications. `true` indicates that all tag keys in the current Region are registered.
  bool get includeAllTagsOfInstance;
  @override
  List<Object?> get props => [
        instanceTagKeys,
        includeAllTagsOfInstance,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InstanceTagNotificationAttribute')
          ..add(
            'instanceTagKeys',
            instanceTagKeys,
          )
          ..add(
            'includeAllTagsOfInstance',
            includeAllTagsOfInstance,
          );
    return helper.toString();
  }
}

class InstanceTagNotificationAttributeEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InstanceTagNotificationAttribute> {
  const InstanceTagNotificationAttributeEc2QuerySerializer()
      : super('InstanceTagNotificationAttribute');

  @override
  Iterable<Type> get types => const [
        InstanceTagNotificationAttribute,
        _$InstanceTagNotificationAttribute,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceTagNotificationAttribute deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceTagNotificationAttributeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceTagKeySet':
          result.instanceTagKeys.replace((const _i3.XmlBuiltListSerializer(
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
        case 'includeAllTagsOfInstance':
          result.includeAllTagsOfInstance = (serializers.deserialize(
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
    InstanceTagNotificationAttribute object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'InstanceTagNotificationAttributeResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceTagNotificationAttribute(
      :instanceTagKeys,
      :includeAllTagsOfInstance
    ) = object;
    if (instanceTagKeys != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceTagKeySet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceTagKeys,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('IncludeAllTagsOfInstance'))
      ..add(serializers.serialize(
        includeAllTagsOfInstance,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
