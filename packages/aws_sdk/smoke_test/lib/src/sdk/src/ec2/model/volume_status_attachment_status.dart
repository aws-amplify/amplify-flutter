// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.volume_status_attachment_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'volume_status_attachment_status.g.dart';

/// Information about the instances to which the volume is attached.
abstract class VolumeStatusAttachmentStatus
    with
        _i1.AWSEquatable<VolumeStatusAttachmentStatus>
    implements
        Built<VolumeStatusAttachmentStatus,
            VolumeStatusAttachmentStatusBuilder> {
  /// Information about the instances to which the volume is attached.
  factory VolumeStatusAttachmentStatus({
    String? ioPerformance,
    String? instanceId,
  }) {
    return _$VolumeStatusAttachmentStatus._(
      ioPerformance: ioPerformance,
      instanceId: instanceId,
    );
  }

  /// Information about the instances to which the volume is attached.
  factory VolumeStatusAttachmentStatus.build(
          [void Function(VolumeStatusAttachmentStatusBuilder) updates]) =
      _$VolumeStatusAttachmentStatus;

  const VolumeStatusAttachmentStatus._();

  static const List<_i2.SmithySerializer<VolumeStatusAttachmentStatus>>
      serializers = [VolumeStatusAttachmentStatusEc2QuerySerializer()];

  /// The maximum IOPS supported by the attached instance.
  String? get ioPerformance;

  /// The ID of the attached instance.
  String? get instanceId;
  @override
  List<Object?> get props => [
        ioPerformance,
        instanceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VolumeStatusAttachmentStatus')
      ..add(
        'ioPerformance',
        ioPerformance,
      )
      ..add(
        'instanceId',
        instanceId,
      );
    return helper.toString();
  }
}

class VolumeStatusAttachmentStatusEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<VolumeStatusAttachmentStatus> {
  const VolumeStatusAttachmentStatusEc2QuerySerializer()
      : super('VolumeStatusAttachmentStatus');

  @override
  Iterable<Type> get types => const [
        VolumeStatusAttachmentStatus,
        _$VolumeStatusAttachmentStatus,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VolumeStatusAttachmentStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VolumeStatusAttachmentStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ioPerformance':
          result.ioPerformance = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
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
    VolumeStatusAttachmentStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VolumeStatusAttachmentStatusResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VolumeStatusAttachmentStatus(:ioPerformance, :instanceId) = object;
    if (ioPerformance != null) {
      result$
        ..add(const _i2.XmlElementName('IoPerformance'))
        ..add(serializers.serialize(
          ioPerformance,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceId != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
