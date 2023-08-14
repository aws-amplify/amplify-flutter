// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_spot_instance_requests_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_request.dart';

part 'describe_spot_instance_requests_result.g.dart';

/// Contains the output of DescribeSpotInstanceRequests.
abstract class DescribeSpotInstanceRequestsResult
    with
        _i1.AWSEquatable<DescribeSpotInstanceRequestsResult>
    implements
        Built<DescribeSpotInstanceRequestsResult,
            DescribeSpotInstanceRequestsResultBuilder> {
  /// Contains the output of DescribeSpotInstanceRequests.
  factory DescribeSpotInstanceRequestsResult({
    List<SpotInstanceRequest>? spotInstanceRequests,
    String? nextToken,
  }) {
    return _$DescribeSpotInstanceRequestsResult._(
      spotInstanceRequests: spotInstanceRequests == null
          ? null
          : _i2.BuiltList(spotInstanceRequests),
      nextToken: nextToken,
    );
  }

  /// Contains the output of DescribeSpotInstanceRequests.
  factory DescribeSpotInstanceRequestsResult.build(
          [void Function(DescribeSpotInstanceRequestsResultBuilder) updates]) =
      _$DescribeSpotInstanceRequestsResult;

  const DescribeSpotInstanceRequestsResult._();

  /// Constructs a [DescribeSpotInstanceRequestsResult] from a [payload] and [response].
  factory DescribeSpotInstanceRequestsResult.fromResponse(
    DescribeSpotInstanceRequestsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeSpotInstanceRequestsResult>>
      serializers = [DescribeSpotInstanceRequestsResultEc2QuerySerializer()];

  /// The Spot Instance requests.
  _i2.BuiltList<SpotInstanceRequest>? get spotInstanceRequests;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        spotInstanceRequests,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSpotInstanceRequestsResult')
          ..add(
            'spotInstanceRequests',
            spotInstanceRequests,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeSpotInstanceRequestsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeSpotInstanceRequestsResult> {
  const DescribeSpotInstanceRequestsResultEc2QuerySerializer()
      : super('DescribeSpotInstanceRequestsResult');

  @override
  Iterable<Type> get types => const [
        DescribeSpotInstanceRequestsResult,
        _$DescribeSpotInstanceRequestsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSpotInstanceRequestsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSpotInstanceRequestsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'spotInstanceRequestSet':
          result.spotInstanceRequests.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(SpotInstanceRequest)],
            ),
          ) as _i2.BuiltList<SpotInstanceRequest>));
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
    DescribeSpotInstanceRequestsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeSpotInstanceRequestsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeSpotInstanceRequestsResult(
      :spotInstanceRequests,
      :nextToken
    ) = object;
    if (spotInstanceRequests != null) {
      result$
        ..add(const _i3.XmlElementName('SpotInstanceRequestSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          spotInstanceRequests,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(SpotInstanceRequest)],
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
