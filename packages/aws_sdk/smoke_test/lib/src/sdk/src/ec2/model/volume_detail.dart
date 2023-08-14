// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.volume_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'volume_detail.g.dart';

/// Describes an EBS volume.
abstract class VolumeDetail
    with _i1.AWSEquatable<VolumeDetail>
    implements Built<VolumeDetail, VolumeDetailBuilder> {
  /// Describes an EBS volume.
  factory VolumeDetail({_i2.Int64? size}) {
    size ??= _i2.Int64.ZERO;
    return _$VolumeDetail._(size: size);
  }

  /// Describes an EBS volume.
  factory VolumeDetail.build([void Function(VolumeDetailBuilder) updates]) =
      _$VolumeDetail;

  const VolumeDetail._();

  static const List<_i3.SmithySerializer<VolumeDetail>> serializers = [
    VolumeDetailEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VolumeDetailBuilder b) {
    b.size = _i2.Int64.ZERO;
  }

  /// The size of the volume, in GiB.
  _i2.Int64 get size;
  @override
  List<Object?> get props => [size];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VolumeDetail')
      ..add(
        'size',
        size,
      );
    return helper.toString();
  }
}

class VolumeDetailEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<VolumeDetail> {
  const VolumeDetailEc2QuerySerializer() : super('VolumeDetail');

  @override
  Iterable<Type> get types => const [
        VolumeDetail,
        _$VolumeDetail,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VolumeDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VolumeDetailBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
    VolumeDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'VolumeDetailResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VolumeDetail(:size) = object;
    result$
      ..add(const _i3.XmlElementName('Size'))
      ..add(serializers.serialize(
        size,
        specifiedType: const FullType(_i2.Int64),
      ));
    return result$;
  }
}
