// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.network_interface_attachment; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/attachment_ena_srd_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/attachment_status.dart';

part 'network_interface_attachment.g.dart';

/// Describes a network interface attachment.
abstract class NetworkInterfaceAttachment
    with _i1.AWSEquatable<NetworkInterfaceAttachment>
    implements
        Built<NetworkInterfaceAttachment, NetworkInterfaceAttachmentBuilder> {
  /// Describes a network interface attachment.
  factory NetworkInterfaceAttachment({
    DateTime? attachTime,
    String? attachmentId,
    bool? deleteOnTermination,
    int? deviceIndex,
    int? networkCardIndex,
    String? instanceId,
    String? instanceOwnerId,
    AttachmentStatus? status,
    AttachmentEnaSrdSpecification? enaSrdSpecification,
  }) {
    deleteOnTermination ??= false;
    deviceIndex ??= 0;
    networkCardIndex ??= 0;
    return _$NetworkInterfaceAttachment._(
      attachTime: attachTime,
      attachmentId: attachmentId,
      deleteOnTermination: deleteOnTermination,
      deviceIndex: deviceIndex,
      networkCardIndex: networkCardIndex,
      instanceId: instanceId,
      instanceOwnerId: instanceOwnerId,
      status: status,
      enaSrdSpecification: enaSrdSpecification,
    );
  }

  /// Describes a network interface attachment.
  factory NetworkInterfaceAttachment.build(
          [void Function(NetworkInterfaceAttachmentBuilder) updates]) =
      _$NetworkInterfaceAttachment;

  const NetworkInterfaceAttachment._();

  static const List<_i2.SmithySerializer<NetworkInterfaceAttachment>>
      serializers = [NetworkInterfaceAttachmentEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkInterfaceAttachmentBuilder b) {
    b
      ..deleteOnTermination = false
      ..deviceIndex = 0
      ..networkCardIndex = 0;
  }

  /// The timestamp indicating when the attachment initiated.
  DateTime? get attachTime;

  /// The ID of the network interface attachment.
  String? get attachmentId;

  /// Indicates whether the network interface is deleted when the instance is terminated.
  bool get deleteOnTermination;

  /// The device index of the network interface attachment on the instance.
  int get deviceIndex;

  /// The index of the network card.
  int get networkCardIndex;

  /// The ID of the instance.
  String? get instanceId;

  /// The Amazon Web Services account ID of the owner of the instance.
  String? get instanceOwnerId;

  /// The attachment state.
  AttachmentStatus? get status;

  /// Configures ENA Express for the network interface that this action attaches to the instance.
  AttachmentEnaSrdSpecification? get enaSrdSpecification;
  @override
  List<Object?> get props => [
        attachTime,
        attachmentId,
        deleteOnTermination,
        deviceIndex,
        networkCardIndex,
        instanceId,
        instanceOwnerId,
        status,
        enaSrdSpecification,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkInterfaceAttachment')
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
        'networkCardIndex',
        networkCardIndex,
      )
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'instanceOwnerId',
        instanceOwnerId,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'enaSrdSpecification',
        enaSrdSpecification,
      );
    return helper.toString();
  }
}

class NetworkInterfaceAttachmentEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<NetworkInterfaceAttachment> {
  const NetworkInterfaceAttachmentEc2QuerySerializer()
      : super('NetworkInterfaceAttachment');

  @override
  Iterable<Type> get types => const [
        NetworkInterfaceAttachment,
        _$NetworkInterfaceAttachment,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInterfaceAttachment deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInterfaceAttachmentBuilder();
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
        case 'networkCardIndex':
          result.networkCardIndex = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceOwnerId':
          result.instanceOwnerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(AttachmentStatus),
          ) as AttachmentStatus);
        case 'enaSrdSpecification':
          result.enaSrdSpecification.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttachmentEnaSrdSpecification),
          ) as AttachmentEnaSrdSpecification));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NetworkInterfaceAttachment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'NetworkInterfaceAttachmentResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NetworkInterfaceAttachment(
      :attachTime,
      :attachmentId,
      :deleteOnTermination,
      :deviceIndex,
      :networkCardIndex,
      :instanceId,
      :instanceOwnerId,
      :status,
      :enaSrdSpecification
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
    result$
      ..add(const _i2.XmlElementName('NetworkCardIndex'))
      ..add(serializers.serialize(
        networkCardIndex,
        specifiedType: const FullType(int),
      ));
    if (instanceId != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceOwnerId != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceOwnerId'))
        ..add(serializers.serialize(
          instanceOwnerId,
          specifiedType: const FullType(String),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(AttachmentStatus),
        ));
    }
    if (enaSrdSpecification != null) {
      result$
        ..add(const _i2.XmlElementName('EnaSrdSpecification'))
        ..add(serializers.serialize(
          enaSrdSpecification,
          specifiedType: const FullType(AttachmentEnaSrdSpecification),
        ));
    }
    return result$;
  }
}
