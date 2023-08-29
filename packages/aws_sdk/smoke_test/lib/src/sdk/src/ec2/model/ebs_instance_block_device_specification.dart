// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ebs_instance_block_device_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ebs_instance_block_device_specification.g.dart';

/// Describes information used to set up an EBS volume specified in a block device mapping.
abstract class EbsInstanceBlockDeviceSpecification
    with
        _i1.AWSEquatable<EbsInstanceBlockDeviceSpecification>
    implements
        Built<EbsInstanceBlockDeviceSpecification,
            EbsInstanceBlockDeviceSpecificationBuilder> {
  /// Describes information used to set up an EBS volume specified in a block device mapping.
  factory EbsInstanceBlockDeviceSpecification({
    bool? deleteOnTermination,
    String? volumeId,
  }) {
    deleteOnTermination ??= false;
    return _$EbsInstanceBlockDeviceSpecification._(
      deleteOnTermination: deleteOnTermination,
      volumeId: volumeId,
    );
  }

  /// Describes information used to set up an EBS volume specified in a block device mapping.
  factory EbsInstanceBlockDeviceSpecification.build(
          [void Function(EbsInstanceBlockDeviceSpecificationBuilder) updates]) =
      _$EbsInstanceBlockDeviceSpecification;

  const EbsInstanceBlockDeviceSpecification._();

  static const List<_i2.SmithySerializer<EbsInstanceBlockDeviceSpecification>>
      serializers = [EbsInstanceBlockDeviceSpecificationEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EbsInstanceBlockDeviceSpecificationBuilder b) {
    b.deleteOnTermination = false;
  }

  /// Indicates whether the volume is deleted on instance termination.
  bool get deleteOnTermination;

  /// The ID of the EBS volume.
  String? get volumeId;
  @override
  List<Object?> get props => [
        deleteOnTermination,
        volumeId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('EbsInstanceBlockDeviceSpecification')
          ..add(
            'deleteOnTermination',
            deleteOnTermination,
          )
          ..add(
            'volumeId',
            volumeId,
          );
    return helper.toString();
  }
}

class EbsInstanceBlockDeviceSpecificationEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<EbsInstanceBlockDeviceSpecification> {
  const EbsInstanceBlockDeviceSpecificationEc2QuerySerializer()
      : super('EbsInstanceBlockDeviceSpecification');

  @override
  Iterable<Type> get types => const [
        EbsInstanceBlockDeviceSpecification,
        _$EbsInstanceBlockDeviceSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EbsInstanceBlockDeviceSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EbsInstanceBlockDeviceSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'deleteOnTermination':
          result.deleteOnTermination = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'volumeId':
          result.volumeId = (serializers.deserialize(
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
    EbsInstanceBlockDeviceSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'EbsInstanceBlockDeviceSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EbsInstanceBlockDeviceSpecification(:deleteOnTermination, :volumeId) =
        object;
    result$
      ..add(const _i2.XmlElementName('DeleteOnTermination'))
      ..add(serializers.serialize(
        deleteOnTermination,
        specifiedType: const FullType(bool),
      ));
    if (volumeId != null) {
      result$
        ..add(const _i2.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          volumeId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
