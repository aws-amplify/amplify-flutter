// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_fpga_images_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_image.dart';

part 'describe_fpga_images_result.g.dart';

abstract class DescribeFpgaImagesResult
    with _i1.AWSEquatable<DescribeFpgaImagesResult>
    implements
        Built<DescribeFpgaImagesResult, DescribeFpgaImagesResultBuilder> {
  factory DescribeFpgaImagesResult({
    List<FpgaImage>? fpgaImages,
    String? nextToken,
  }) {
    return _$DescribeFpgaImagesResult._(
      fpgaImages: fpgaImages == null ? null : _i2.BuiltList(fpgaImages),
      nextToken: nextToken,
    );
  }

  factory DescribeFpgaImagesResult.build(
          [void Function(DescribeFpgaImagesResultBuilder) updates]) =
      _$DescribeFpgaImagesResult;

  const DescribeFpgaImagesResult._();

  /// Constructs a [DescribeFpgaImagesResult] from a [payload] and [response].
  factory DescribeFpgaImagesResult.fromResponse(
    DescribeFpgaImagesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeFpgaImagesResult>>
      serializers = [DescribeFpgaImagesResultEc2QuerySerializer()];

  /// Information about the FPGA images.
  _i2.BuiltList<FpgaImage>? get fpgaImages;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        fpgaImages,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeFpgaImagesResult')
      ..add(
        'fpgaImages',
        fpgaImages,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeFpgaImagesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeFpgaImagesResult> {
  const DescribeFpgaImagesResultEc2QuerySerializer()
      : super('DescribeFpgaImagesResult');

  @override
  Iterable<Type> get types => const [
        DescribeFpgaImagesResult,
        _$DescribeFpgaImagesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFpgaImagesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFpgaImagesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'fpgaImageSet':
          result.fpgaImages.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(FpgaImage)],
            ),
          ) as _i2.BuiltList<FpgaImage>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
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
    DescribeFpgaImagesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeFpgaImagesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeFpgaImagesResult(:fpgaImages, :nextToken) = object;
    if (fpgaImages != null) {
      result$
        ..add(const _i3.XmlElementName('FpgaImageSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          fpgaImages,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(FpgaImage)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
