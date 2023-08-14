// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.volume_attachment; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_attachment_state.dart';

part 'volume_attachment.g.dart';

/// Describes volume attachment details.
abstract class VolumeAttachment
    with _i1.AWSEquatable<VolumeAttachment>
    implements Built<VolumeAttachment, VolumeAttachmentBuilder> {
  /// Describes volume attachment details.
  factory VolumeAttachment({
    DateTime? attachTime,
    String? device,
    String? instanceId,
    VolumeAttachmentState? state,
    String? volumeId,
    bool? deleteOnTermination,
  }) {
    deleteOnTermination ??= false;
    return _$VolumeAttachment._(
      attachTime: attachTime,
      device: device,
      instanceId: instanceId,
      state: state,
      volumeId: volumeId,
      deleteOnTermination: deleteOnTermination,
    );
  }

  /// Describes volume attachment details.
  factory VolumeAttachment.build(
      [void Function(VolumeAttachmentBuilder) updates]) = _$VolumeAttachment;

  const VolumeAttachment._();

  /// Constructs a [VolumeAttachment] from a [payload] and [response].
  factory VolumeAttachment.fromResponse(
    VolumeAttachment payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<VolumeAttachment>> serializers = [
    VolumeAttachmentEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VolumeAttachmentBuilder b) {
    b.deleteOnTermination = false;
  }

  /// The time stamp when the attachment initiated.
  DateTime? get attachTime;

  /// The device name.
  String? get device;

  /// The ID of the instance.
  String? get instanceId;

  /// The attachment state of the volume.
  VolumeAttachmentState? get state;

  /// The ID of the volume.
  String? get volumeId;

  /// Indicates whether the EBS volume is deleted on instance termination.
  bool get deleteOnTermination;
  @override
  List<Object?> get props => [
        attachTime,
        device,
        instanceId,
        state,
        volumeId,
        deleteOnTermination,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VolumeAttachment')
      ..add(
        'attachTime',
        attachTime,
      )
      ..add(
        'device',
        device,
      )
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'volumeId',
        volumeId,
      )
      ..add(
        'deleteOnTermination',
        deleteOnTermination,
      );
    return helper.toString();
  }
}

class VolumeAttachmentEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<VolumeAttachment> {
  const VolumeAttachmentEc2QuerySerializer() : super('VolumeAttachment');

  @override
  Iterable<Type> get types => const [
        VolumeAttachment,
        _$VolumeAttachment,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VolumeAttachment deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VolumeAttachmentBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'attachTime':
          result.attachTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'device':
          result.device = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'status':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(VolumeAttachmentState),
          ) as VolumeAttachmentState);
        case 'volumeId':
          result.volumeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'deleteOnTermination':
          result.deleteOnTermination = (serializers.deserialize(
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
    VolumeAttachment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VolumeAttachmentResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VolumeAttachment(
      :attachTime,
      :device,
      :instanceId,
      :state,
      :volumeId,
      :deleteOnTermination
    ) = object;
    if (attachTime != null) {
      result$
        ..add(const _i2.XmlElementName('AttachTime'))
        ..add(serializers.serialize(
          attachTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (device != null) {
      result$
        ..add(const _i2.XmlElementName('Device'))
        ..add(serializers.serialize(
          device,
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
    if (state != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(VolumeAttachmentState),
        ));
    }
    if (volumeId != null) {
      result$
        ..add(const _i2.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          volumeId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('DeleteOnTermination'))
      ..add(serializers.serialize(
        deleteOnTermination,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
