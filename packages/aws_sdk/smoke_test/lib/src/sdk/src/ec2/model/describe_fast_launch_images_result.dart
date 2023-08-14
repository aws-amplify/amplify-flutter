// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_fast_launch_images_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fast_launch_images_success_item.dart';

part 'describe_fast_launch_images_result.g.dart';

abstract class DescribeFastLaunchImagesResult
    with
        _i1.AWSEquatable<DescribeFastLaunchImagesResult>
    implements
        Built<DescribeFastLaunchImagesResult,
            DescribeFastLaunchImagesResultBuilder> {
  factory DescribeFastLaunchImagesResult({
    List<DescribeFastLaunchImagesSuccessItem>? fastLaunchImages,
    String? nextToken,
  }) {
    return _$DescribeFastLaunchImagesResult._(
      fastLaunchImages:
          fastLaunchImages == null ? null : _i2.BuiltList(fastLaunchImages),
      nextToken: nextToken,
    );
  }

  factory DescribeFastLaunchImagesResult.build(
          [void Function(DescribeFastLaunchImagesResultBuilder) updates]) =
      _$DescribeFastLaunchImagesResult;

  const DescribeFastLaunchImagesResult._();

  /// Constructs a [DescribeFastLaunchImagesResult] from a [payload] and [response].
  factory DescribeFastLaunchImagesResult.fromResponse(
    DescribeFastLaunchImagesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeFastLaunchImagesResult>>
      serializers = [DescribeFastLaunchImagesResultEc2QuerySerializer()];

  /// A collection of details about the fast-launch enabled Windows images that meet the requested criteria.
  _i2.BuiltList<DescribeFastLaunchImagesSuccessItem>? get fastLaunchImages;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        fastLaunchImages,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeFastLaunchImagesResult')
      ..add(
        'fastLaunchImages',
        fastLaunchImages,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeFastLaunchImagesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeFastLaunchImagesResult> {
  const DescribeFastLaunchImagesResultEc2QuerySerializer()
      : super('DescribeFastLaunchImagesResult');

  @override
  Iterable<Type> get types => const [
        DescribeFastLaunchImagesResult,
        _$DescribeFastLaunchImagesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFastLaunchImagesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFastLaunchImagesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'fastLaunchImageSet':
          result.fastLaunchImages.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(DescribeFastLaunchImagesSuccessItem)],
            ),
          ) as _i2.BuiltList<DescribeFastLaunchImagesSuccessItem>));
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
    DescribeFastLaunchImagesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeFastLaunchImagesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeFastLaunchImagesResult(:fastLaunchImages, :nextToken) =
        object;
    if (fastLaunchImages != null) {
      result$
        ..add(const _i3.XmlElementName('FastLaunchImageSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          fastLaunchImages,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(DescribeFastLaunchImagesSuccessItem)],
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
