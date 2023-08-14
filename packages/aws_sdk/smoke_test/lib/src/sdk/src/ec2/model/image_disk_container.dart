// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.image_disk_container; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/user_bucket.dart';

part 'image_disk_container.g.dart';

/// Describes the disk container object for an import image task.
abstract class ImageDiskContainer
    with _i1.AWSEquatable<ImageDiskContainer>
    implements Built<ImageDiskContainer, ImageDiskContainerBuilder> {
  /// Describes the disk container object for an import image task.
  factory ImageDiskContainer({
    String? description,
    String? deviceName,
    String? format,
    String? snapshotId,
    String? url,
    UserBucket? userBucket,
  }) {
    return _$ImageDiskContainer._(
      description: description,
      deviceName: deviceName,
      format: format,
      snapshotId: snapshotId,
      url: url,
      userBucket: userBucket,
    );
  }

  /// Describes the disk container object for an import image task.
  factory ImageDiskContainer.build(
          [void Function(ImageDiskContainerBuilder) updates]) =
      _$ImageDiskContainer;

  const ImageDiskContainer._();

  static const List<_i2.SmithySerializer<ImageDiskContainer>> serializers = [
    ImageDiskContainerEc2QuerySerializer()
  ];

  /// The description of the disk image.
  String? get description;

  /// The block device mapping for the disk.
  String? get deviceName;

  /// The format of the disk image being imported.
  ///
  /// Valid values: `OVA` | `VHD` | `VHDX` | `VMDK` | `RAW`
  String? get format;

  /// The ID of the EBS snapshot to be used for importing the snapshot.
  String? get snapshotId;

  /// The URL to the Amazon S3-based disk image being imported. The URL can either be a https URL (https://..) or an Amazon S3 URL (s3://..)
  String? get url;

  /// The S3 bucket for the disk image.
  UserBucket? get userBucket;
  @override
  List<Object?> get props => [
        description,
        deviceName,
        format,
        snapshotId,
        url,
        userBucket,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImageDiskContainer')
      ..add(
        'description',
        description,
      )
      ..add(
        'deviceName',
        deviceName,
      )
      ..add(
        'format',
        format,
      )
      ..add(
        'snapshotId',
        snapshotId,
      )
      ..add(
        'url',
        '***SENSITIVE***',
      )
      ..add(
        'userBucket',
        userBucket,
      );
    return helper.toString();
  }
}

class ImageDiskContainerEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ImageDiskContainer> {
  const ImageDiskContainerEc2QuerySerializer() : super('ImageDiskContainer');

  @override
  Iterable<Type> get types => const [
        ImageDiskContainer,
        _$ImageDiskContainer,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImageDiskContainer deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImageDiskContainerBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DeviceName':
          result.deviceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Format':
          result.format = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SnapshotId':
          result.snapshotId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Url':
          result.url = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'UserBucket':
          result.userBucket.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(UserBucket),
          ) as UserBucket));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ImageDiskContainer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ImageDiskContainerResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ImageDiskContainer(
      :description,
      :deviceName,
      :format,
      :snapshotId,
      :url,
      :userBucket
    ) = object;
    if (description != null) {
      result$
        ..add(const _i2.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (deviceName != null) {
      result$
        ..add(const _i2.XmlElementName('DeviceName'))
        ..add(serializers.serialize(
          deviceName,
          specifiedType: const FullType(String),
        ));
    }
    if (format != null) {
      result$
        ..add(const _i2.XmlElementName('Format'))
        ..add(serializers.serialize(
          format,
          specifiedType: const FullType(String),
        ));
    }
    if (snapshotId != null) {
      result$
        ..add(const _i2.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          snapshotId,
          specifiedType: const FullType(String),
        ));
    }
    if (url != null) {
      result$
        ..add(const _i2.XmlElementName('Url'))
        ..add(serializers.serialize(
          url,
          specifiedType: const FullType(String),
        ));
    }
    if (userBucket != null) {
      result$
        ..add(const _i2.XmlElementName('UserBucket'))
        ..add(serializers.serialize(
          userBucket,
          specifiedType: const FullType(UserBucket),
        ));
    }
    return result$;
  }
}
