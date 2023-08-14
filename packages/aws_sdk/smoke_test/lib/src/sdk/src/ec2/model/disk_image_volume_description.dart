// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disk_image_volume_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'disk_image_volume_description.g.dart';

/// Describes a disk image volume.
abstract class DiskImageVolumeDescription
    with _i1.AWSEquatable<DiskImageVolumeDescription>
    implements
        Built<DiskImageVolumeDescription, DiskImageVolumeDescriptionBuilder> {
  /// Describes a disk image volume.
  factory DiskImageVolumeDescription({
    String? id,
    _i2.Int64? size,
  }) {
    size ??= _i2.Int64.ZERO;
    return _$DiskImageVolumeDescription._(
      id: id,
      size: size,
    );
  }

  /// Describes a disk image volume.
  factory DiskImageVolumeDescription.build(
          [void Function(DiskImageVolumeDescriptionBuilder) updates]) =
      _$DiskImageVolumeDescription;

  const DiskImageVolumeDescription._();

  static const List<_i3.SmithySerializer<DiskImageVolumeDescription>>
      serializers = [DiskImageVolumeDescriptionEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DiskImageVolumeDescriptionBuilder b) {
    b.size = _i2.Int64.ZERO;
  }

  /// The volume identifier.
  String? get id;

  /// The size of the volume, in GiB.
  _i2.Int64 get size;
  @override
  List<Object?> get props => [
        id,
        size,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DiskImageVolumeDescription')
      ..add(
        'id',
        id,
      )
      ..add(
        'size',
        size,
      );
    return helper.toString();
  }
}

class DiskImageVolumeDescriptionEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DiskImageVolumeDescription> {
  const DiskImageVolumeDescriptionEc2QuerySerializer()
      : super('DiskImageVolumeDescription');

  @override
  Iterable<Type> get types => const [
        DiskImageVolumeDescription,
        _$DiskImageVolumeDescription,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DiskImageVolumeDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DiskImageVolumeDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'size':
          result.size = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DiskImageVolumeDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DiskImageVolumeDescriptionResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DiskImageVolumeDescription(:id, :size) = object;
    if (id != null) {
      result$
        ..add(const _i3.XmlElementName('Id'))
        ..add(serializers.serialize(
          id,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Size'))
      ..add(serializers.serialize(
        size,
        specifiedType: const FullType(_i2.Int64),
      ));
    return result$;
  }
}
