// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.volume_status_action; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'volume_status_action.g.dart';

/// Describes a volume status operation code.
abstract class VolumeStatusAction
    with _i1.AWSEquatable<VolumeStatusAction>
    implements Built<VolumeStatusAction, VolumeStatusActionBuilder> {
  /// Describes a volume status operation code.
  factory VolumeStatusAction({
    String? code,
    String? description,
    String? eventId,
    String? eventType,
  }) {
    return _$VolumeStatusAction._(
      code: code,
      description: description,
      eventId: eventId,
      eventType: eventType,
    );
  }

  /// Describes a volume status operation code.
  factory VolumeStatusAction.build(
          [void Function(VolumeStatusActionBuilder) updates]) =
      _$VolumeStatusAction;

  const VolumeStatusAction._();

  static const List<_i2.SmithySerializer<VolumeStatusAction>> serializers = [
    VolumeStatusActionEc2QuerySerializer()
  ];

  /// The code identifying the operation, for example, `enable-volume-io`.
  String? get code;

  /// A description of the operation.
  String? get description;

  /// The ID of the event associated with this operation.
  String? get eventId;

  /// The event type associated with this operation.
  String? get eventType;
  @override
  List<Object?> get props => [
        code,
        description,
        eventId,
        eventType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VolumeStatusAction')
      ..add(
        'code',
        code,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'eventId',
        eventId,
      )
      ..add(
        'eventType',
        eventType,
      );
    return helper.toString();
  }
}

class VolumeStatusActionEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<VolumeStatusAction> {
  const VolumeStatusActionEc2QuerySerializer() : super('VolumeStatusAction');

  @override
  Iterable<Type> get types => const [
        VolumeStatusAction,
        _$VolumeStatusAction,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VolumeStatusAction deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VolumeStatusActionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'code':
          result.code = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'eventId':
          result.eventId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'eventType':
          result.eventType = (serializers.deserialize(
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
    VolumeStatusAction object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VolumeStatusActionResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VolumeStatusAction(:code, :description, :eventId, :eventType) =
        object;
    if (code != null) {
      result$
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          code,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i2.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (eventId != null) {
      result$
        ..add(const _i2.XmlElementName('EventId'))
        ..add(serializers.serialize(
          eventId,
          specifiedType: const FullType(String),
        ));
    }
    if (eventType != null) {
      result$
        ..add(const _i2.XmlElementName('EventType'))
        ..add(serializers.serialize(
          eventType,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
