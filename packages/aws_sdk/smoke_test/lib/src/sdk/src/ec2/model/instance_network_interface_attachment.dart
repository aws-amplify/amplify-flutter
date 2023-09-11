// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_network_interface_attachment; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/attachment_status.dart';

part 'instance_network_interface_attachment.g.dart';

/// Describes a network interface attachment.
abstract class InstanceNetworkInterfaceAttachment
    with
        _i1.AWSEquatable<InstanceNetworkInterfaceAttachment>
    implements
        Built<InstanceNetworkInterfaceAttachment,
            InstanceNetworkInterfaceAttachmentBuilder> {
  /// Describes a network interface attachment.
  factory InstanceNetworkInterfaceAttachment({
    DateTime? attachTime,
    String? attachmentId,
    bool? deleteOnTermination,
    int? deviceIndex,
    AttachmentStatus? status,
    int? networkCardIndex,
  }) {
    deleteOnTermination ??= false;
    deviceIndex ??= 0;
    networkCardIndex ??= 0;
    return _$InstanceNetworkInterfaceAttachment._(
      attachTime: attachTime,
      attachmentId: attachmentId,
      deleteOnTermination: deleteOnTermination,
      deviceIndex: deviceIndex,
      status: status,
      networkCardIndex: networkCardIndex,
    );
  }

  /// Describes a network interface attachment.
  factory InstanceNetworkInterfaceAttachment.build(
          [void Function(InstanceNetworkInterfaceAttachmentBuilder) updates]) =
      _$InstanceNetworkInterfaceAttachment;

  const InstanceNetworkInterfaceAttachment._();

  static const List<_i2.SmithySerializer<InstanceNetworkInterfaceAttachment>>
      serializers = [InstanceNetworkInterfaceAttachmentEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceNetworkInterfaceAttachmentBuilder b) {
    b
      ..deleteOnTermination = false
      ..deviceIndex = 0
      ..networkCardIndex = 0;
  }

  /// The time stamp when the attachment initiated.
  DateTime? get attachTime;

  /// The ID of the network interface attachment.
  String? get attachmentId;

  /// Indicates whether the network interface is deleted when the instance is terminated.
  bool get deleteOnTermination;

  /// The index of the device on the instance for the network interface attachment.
  int get deviceIndex;

  /// The attachment state.
  AttachmentStatus? get status;

  /// The index of the network card.
  int get networkCardIndex;
  @override
  List<Object?> get props => [
        attachTime,
        attachmentId,
        deleteOnTermination,
        deviceIndex,
        status,
        networkCardIndex,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InstanceNetworkInterfaceAttachment')
          ..add(
            'attachTime',
            attachTime,
          )
          ..add(
            'attachmentId',
            attachmentId,
          )
          ..add(
            'deleteOnTermination',
            deleteOnTermination,
          )
          ..add(
            'deviceIndex',
            deviceIndex,
          )
          ..add(
            'status',
            status,
          )
          ..add(
            'networkCardIndex',
            networkCardIndex,
          );
    return helper.toString();
  }
}

class InstanceNetworkInterfaceAttachmentEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<InstanceNetworkInterfaceAttachment> {
  const InstanceNetworkInterfaceAttachmentEc2QuerySerializer()
      : super('InstanceNetworkInterfaceAttachment');

  @override
  Iterable<Type> get types => const [
        InstanceNetworkInterfaceAttachment,
        _$InstanceNetworkInterfaceAttachment,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceNetworkInterfaceAttachment deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceNetworkInterfaceAttachmentBuilder();
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
        case 'attachmentId':
          result.attachmentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'deleteOnTermination':
          result.deleteOnTermination = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'deviceIndex':
          result.deviceIndex = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(AttachmentStatus),
          ) as AttachmentStatus);
        case 'networkCardIndex':
          result.networkCardIndex = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceNetworkInterfaceAttachment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InstanceNetworkInterfaceAttachmentResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceNetworkInterfaceAttachment(
      :attachTime,
      :attachmentId,
      :deleteOnTermination,
      :deviceIndex,
      :status,
      :networkCardIndex
    ) = object;
    if (attachTime != null) {
      result$
        ..add(const _i2.XmlElementName('AttachTime'))
        ..add(serializers.serialize(
          attachTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (attachmentId != null) {
      result$
        ..add(const _i2.XmlElementName('AttachmentId'))
        ..add(serializers.serialize(
          attachmentId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('DeleteOnTermination'))
      ..add(serializers.serialize(
        deleteOnTermination,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i2.XmlElementName('DeviceIndex'))
      ..add(serializers.serialize(
        deviceIndex,
        specifiedType: const FullType(int),
      ));
    if (status != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(AttachmentStatus),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('NetworkCardIndex'))
      ..add(serializers.serialize(
        networkCardIndex,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
