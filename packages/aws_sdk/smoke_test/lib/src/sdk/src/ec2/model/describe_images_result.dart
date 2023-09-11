// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_images_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/image.dart';

part 'describe_images_result.g.dart';

abstract class DescribeImagesResult
    with _i1.AWSEquatable<DescribeImagesResult>
    implements Built<DescribeImagesResult, DescribeImagesResultBuilder> {
  factory DescribeImagesResult({
    List<Image>? images,
    String? nextToken,
  }) {
    return _$DescribeImagesResult._(
      images: images == null ? null : _i2.BuiltList(images),
      nextToken: nextToken,
    );
  }

  factory DescribeImagesResult.build(
          [void Function(DescribeImagesResultBuilder) updates]) =
      _$DescribeImagesResult;

  const DescribeImagesResult._();

  /// Constructs a [DescribeImagesResult] from a [payload] and [response].
  factory DescribeImagesResult.fromResponse(
    DescribeImagesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeImagesResult>> serializers = [
    DescribeImagesResultEc2QuerySerializer()
  ];

  /// Information about the images.
  _i2.BuiltList<Image>? get images;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        images,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeImagesResult')
      ..add(
        'images',
        images,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeImagesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeImagesResult> {
  const DescribeImagesResultEc2QuerySerializer()
      : super('DescribeImagesResult');

  @override
  Iterable<Type> get types => const [
        DescribeImagesResult,
        _$DescribeImagesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeImagesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeImagesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'imagesSet':
          result.images.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Image)],
            ),
          ) as _i2.BuiltList<Image>));
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
    DescribeImagesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeImagesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeImagesResult(:images, :nextToken) = object;
    if (images != null) {
      result$
        ..add(const _i3.XmlElementName('ImagesSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          images,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Image)],
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
