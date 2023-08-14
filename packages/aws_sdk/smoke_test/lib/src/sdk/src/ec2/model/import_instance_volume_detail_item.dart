// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.import_instance_volume_detail_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_description.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_volume_description.dart';

part 'import_instance_volume_detail_item.g.dart';

/// Describes an import volume task.
abstract class ImportInstanceVolumeDetailItem
    with
        _i1.AWSEquatable<ImportInstanceVolumeDetailItem>
    implements
        Built<ImportInstanceVolumeDetailItem,
            ImportInstanceVolumeDetailItemBuilder> {
  /// Describes an import volume task.
  factory ImportInstanceVolumeDetailItem({
    String? availabilityZone,
    _i2.Int64? bytesConverted,
    String? description,
    DiskImageDescription? image,
    String? status,
    String? statusMessage,
    DiskImageVolumeDescription? volume,
  }) {
    bytesConverted ??= _i2.Int64.ZERO;
    return _$ImportInstanceVolumeDetailItem._(
      availabilityZone: availabilityZone,
      bytesConverted: bytesConverted,
      description: description,
      image: image,
      status: status,
      statusMessage: statusMessage,
      volume: volume,
    );
  }

  /// Describes an import volume task.
  factory ImportInstanceVolumeDetailItem.build(
          [void Function(ImportInstanceVolumeDetailItemBuilder) updates]) =
      _$ImportInstanceVolumeDetailItem;

  const ImportInstanceVolumeDetailItem._();

  static const List<_i3.SmithySerializer<ImportInstanceVolumeDetailItem>>
      serializers = [ImportInstanceVolumeDetailItemEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportInstanceVolumeDetailItemBuilder b) {
    b.bytesConverted = _i2.Int64.ZERO;
  }

  /// The Availability Zone where the resulting instance will reside.
  String? get availabilityZone;

  /// The number of bytes converted so far.
  _i2.Int64 get bytesConverted;

  /// A description of the task.
  String? get description;

  /// The image.
  DiskImageDescription? get image;

  /// The status of the import of this particular disk image.
  String? get status;

  /// The status information or errors related to the disk image.
  String? get statusMessage;

  /// The volume.
  DiskImageVolumeDescription? get volume;
  @override
  List<Object?> get props => [
        availabilityZone,
        bytesConverted,
        description,
        image,
        status,
        statusMessage,
        volume,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportInstanceVolumeDetailItem')
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'bytesConverted',
        bytesConverted,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'image',
        image,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'statusMessage',
        statusMessage,
      )
      ..add(
        'volume',
        volume,
      );
    return helper.toString();
  }
}

class ImportInstanceVolumeDetailItemEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ImportInstanceVolumeDetailItem> {
  const ImportInstanceVolumeDetailItemEc2QuerySerializer()
      : super('ImportInstanceVolumeDetailItem');

  @override
  Iterable<Type> get types => const [
        ImportInstanceVolumeDetailItem,
        _$ImportInstanceVolumeDetailItem,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportInstanceVolumeDetailItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportInstanceVolumeDetailItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'bytesConverted':
          result.bytesConverted = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'image':
          result.image.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(DiskImageDescription),
          ) as DiskImageDescription));
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'statusMessage':
          result.statusMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'volume':
          result.volume.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(DiskImageVolumeDescription),
          ) as DiskImageVolumeDescription));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ImportInstanceVolumeDetailItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ImportInstanceVolumeDetailItemResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ImportInstanceVolumeDetailItem(
      :availabilityZone,
      :bytesConverted,
      :description,
      :image,
      :status,
      :statusMessage,
      :volume
    ) = object;
    if (availabilityZone != null) {
      result$
        ..add(const _i3.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('BytesConverted'))
      ..add(serializers.serialize(
        bytesConverted,
        specifiedType: const FullType(_i2.Int64),
      ));
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (image != null) {
      result$
        ..add(const _i3.XmlElementName('Image'))
        ..add(serializers.serialize(
          image,
          specifiedType: const FullType(DiskImageDescription),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(String),
        ));
    }
    if (statusMessage != null) {
      result$
        ..add(const _i3.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          statusMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (volume != null) {
      result$
        ..add(const _i3.XmlElementName('Volume'))
        ..add(serializers.serialize(
          volume,
          specifiedType: const FullType(DiskImageVolumeDescription),
        ));
    }
    return result$;
  }
}
