// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_volume_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_modification.dart';

part 'modify_volume_result.g.dart';

abstract class ModifyVolumeResult
    with _i1.AWSEquatable<ModifyVolumeResult>
    implements Built<ModifyVolumeResult, ModifyVolumeResultBuilder> {
  factory ModifyVolumeResult({VolumeModification? volumeModification}) {
    return _$ModifyVolumeResult._(volumeModification: volumeModification);
  }

  factory ModifyVolumeResult.build(
          [void Function(ModifyVolumeResultBuilder) updates]) =
      _$ModifyVolumeResult;

  const ModifyVolumeResult._();

  /// Constructs a [ModifyVolumeResult] from a [payload] and [response].
  factory ModifyVolumeResult.fromResponse(
    ModifyVolumeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifyVolumeResult>> serializers = [
    ModifyVolumeResultEc2QuerySerializer()
  ];

  /// Information about the volume modification.
  VolumeModification? get volumeModification;
  @override
  List<Object?> get props => [volumeModification];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyVolumeResult')
      ..add(
        'volumeModification',
        volumeModification,
      );
    return helper.toString();
  }
}

class ModifyVolumeResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifyVolumeResult> {
  const ModifyVolumeResultEc2QuerySerializer() : super('ModifyVolumeResult');

  @override
  Iterable<Type> get types => const [
        ModifyVolumeResult,
        _$ModifyVolumeResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVolumeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVolumeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'volumeModification':
          result.volumeModification.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VolumeModification),
          ) as VolumeModification));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyVolumeResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyVolumeResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVolumeResult(:volumeModification) = object;
    if (volumeModification != null) {
      result$
        ..add(const _i2.XmlElementName('VolumeModification'))
        ..add(serializers.serialize(
          volumeModification,
          specifiedType: const FullType(VolumeModification),
        ));
    }
    return result$;
  }
}
