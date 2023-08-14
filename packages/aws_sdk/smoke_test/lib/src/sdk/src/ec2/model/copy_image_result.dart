// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.copy_image_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'copy_image_result.g.dart';

/// Contains the output of CopyImage.
abstract class CopyImageResult
    with _i1.AWSEquatable<CopyImageResult>
    implements Built<CopyImageResult, CopyImageResultBuilder> {
  /// Contains the output of CopyImage.
  factory CopyImageResult({String? imageId}) {
    return _$CopyImageResult._(imageId: imageId);
  }

  /// Contains the output of CopyImage.
  factory CopyImageResult.build(
      [void Function(CopyImageResultBuilder) updates]) = _$CopyImageResult;

  const CopyImageResult._();

  /// Constructs a [CopyImageResult] from a [payload] and [response].
  factory CopyImageResult.fromResponse(
    CopyImageResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CopyImageResult>> serializers = [
    CopyImageResultEc2QuerySerializer()
  ];

  /// The ID of the new AMI.
  String? get imageId;
  @override
  List<Object?> get props => [imageId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CopyImageResult')
      ..add(
        'imageId',
        imageId,
      );
    return helper.toString();
  }
}

class CopyImageResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CopyImageResult> {
  const CopyImageResultEc2QuerySerializer() : super('CopyImageResult');

  @override
  Iterable<Type> get types => const [
        CopyImageResult,
        _$CopyImageResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CopyImageResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CopyImageResultBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CopyImageResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CopyImageResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CopyImageResult(:imageId) = object;
    if (imageId != null) {
      result$
        ..add(const _i2.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          imageId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
