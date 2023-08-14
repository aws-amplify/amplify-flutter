// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_instance_type_offerings_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type_offering.dart';

part 'describe_instance_type_offerings_result.g.dart';

abstract class DescribeInstanceTypeOfferingsResult
    with
        _i1.AWSEquatable<DescribeInstanceTypeOfferingsResult>
    implements
        Built<DescribeInstanceTypeOfferingsResult,
            DescribeInstanceTypeOfferingsResultBuilder> {
  factory DescribeInstanceTypeOfferingsResult({
    List<InstanceTypeOffering>? instanceTypeOfferings,
    String? nextToken,
  }) {
    return _$DescribeInstanceTypeOfferingsResult._(
      instanceTypeOfferings: instanceTypeOfferings == null
          ? null
          : _i2.BuiltList(instanceTypeOfferings),
      nextToken: nextToken,
    );
  }

  factory DescribeInstanceTypeOfferingsResult.build(
          [void Function(DescribeInstanceTypeOfferingsResultBuilder) updates]) =
      _$DescribeInstanceTypeOfferingsResult;

  const DescribeInstanceTypeOfferingsResult._();

  /// Constructs a [DescribeInstanceTypeOfferingsResult] from a [payload] and [response].
  factory DescribeInstanceTypeOfferingsResult.fromResponse(
    DescribeInstanceTypeOfferingsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeInstanceTypeOfferingsResult>>
      serializers = [DescribeInstanceTypeOfferingsResultEc2QuerySerializer()];

  /// The instance types offered.
  _i2.BuiltList<InstanceTypeOffering>? get instanceTypeOfferings;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        instanceTypeOfferings,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeInstanceTypeOfferingsResult')
          ..add(
            'instanceTypeOfferings',
            instanceTypeOfferings,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeInstanceTypeOfferingsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeInstanceTypeOfferingsResult> {
  const DescribeInstanceTypeOfferingsResultEc2QuerySerializer()
      : super('DescribeInstanceTypeOfferingsResult');

  @override
  Iterable<Type> get types => const [
        DescribeInstanceTypeOfferingsResult,
        _$DescribeInstanceTypeOfferingsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstanceTypeOfferingsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstanceTypeOfferingsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceTypeOfferingSet':
          result.instanceTypeOfferings
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceTypeOffering)],
            ),
          ) as _i2.BuiltList<InstanceTypeOffering>));
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
    DescribeInstanceTypeOfferingsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeInstanceTypeOfferingsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeInstanceTypeOfferingsResult(
      :instanceTypeOfferings,
      :nextToken
    ) = object;
    if (instanceTypeOfferings != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceTypeOfferingSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceTypeOfferings,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(InstanceTypeOffering)],
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
