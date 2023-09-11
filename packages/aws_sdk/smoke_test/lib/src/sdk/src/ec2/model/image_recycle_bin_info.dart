// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.image_recycle_bin_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'image_recycle_bin_info.g.dart';

/// Information about an AMI that is currently in the Recycle Bin.
abstract class ImageRecycleBinInfo
    with _i1.AWSEquatable<ImageRecycleBinInfo>
    implements Built<ImageRecycleBinInfo, ImageRecycleBinInfoBuilder> {
  /// Information about an AMI that is currently in the Recycle Bin.
  factory ImageRecycleBinInfo({
    String? imageId,
    String? name,
    String? description,
    DateTime? recycleBinEnterTime,
    DateTime? recycleBinExitTime,
  }) {
    return _$ImageRecycleBinInfo._(
      imageId: imageId,
      name: name,
      description: description,
      recycleBinEnterTime: recycleBinEnterTime,
      recycleBinExitTime: recycleBinExitTime,
    );
  }

  /// Information about an AMI that is currently in the Recycle Bin.
  factory ImageRecycleBinInfo.build(
          [void Function(ImageRecycleBinInfoBuilder) updates]) =
      _$ImageRecycleBinInfo;

  const ImageRecycleBinInfo._();

  static const List<_i2.SmithySerializer<ImageRecycleBinInfo>> serializers = [
    ImageRecycleBinInfoEc2QuerySerializer()
  ];

  /// The ID of the AMI.
  String? get imageId;

  /// The name of the AMI.
  String? get name;

  /// The description of the AMI.
  String? get description;

  /// The date and time when the AMI entered the Recycle Bin.
  DateTime? get recycleBinEnterTime;

  /// The date and time when the AMI is to be permanently deleted from the Recycle Bin.
  DateTime? get recycleBinExitTime;
  @override
  List<Object?> get props => [
        imageId,
        name,
        description,
        recycleBinEnterTime,
        recycleBinExitTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImageRecycleBinInfo')
      ..add(
        'imageId',
        imageId,
      )
      ..add(
        'name',
        name,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'recycleBinEnterTime',
        recycleBinEnterTime,
      )
      ..add(
        'recycleBinExitTime',
        recycleBinExitTime,
      );
    return helper.toString();
  }
}

class ImageRecycleBinInfoEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ImageRecycleBinInfo> {
  const ImageRecycleBinInfoEc2QuerySerializer() : super('ImageRecycleBinInfo');

  @override
  Iterable<Type> get types => const [
        ImageRecycleBinInfo,
        _$ImageRecycleBinInfo,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImageRecycleBinInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImageRecycleBinInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'imageId':
          result.imageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'recycleBinEnterTime':
          result.recycleBinEnterTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'recycleBinExitTime':
          result.recycleBinExitTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ImageRecycleBinInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ImageRecycleBinInfoResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ImageRecycleBinInfo(
      :imageId,
      :name,
      :description,
      :recycleBinEnterTime,
      :recycleBinExitTime
    ) = object;
    if (imageId != null) {
      result$
        ..add(const _i2.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          imageId,
          specifiedType: const FullType(String),
        ));
    }
    if (name != null) {
      result$
        ..add(const _i2.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
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
    if (recycleBinEnterTime != null) {
      result$
        ..add(const _i2.XmlElementName('RecycleBinEnterTime'))
        ..add(serializers.serialize(
          recycleBinEnterTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (recycleBinExitTime != null) {
      result$
        ..add(const _i2.XmlElementName('RecycleBinExitTime'))
        ..add(serializers.serialize(
          recycleBinExitTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
