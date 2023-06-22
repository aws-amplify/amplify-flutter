// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.describe_conformance_packs_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_detail.dart'
    as _i2;

part 'describe_conformance_packs_response.g.dart';

abstract class DescribeConformancePacksResponse
    with
        _i1.AWSEquatable<DescribeConformancePacksResponse>
    implements
        Built<DescribeConformancePacksResponse,
            DescribeConformancePacksResponseBuilder> {
  factory DescribeConformancePacksResponse({
    List<_i2.ConformancePackDetail>? conformancePackDetails,
    String? nextToken,
  }) {
    return _$DescribeConformancePacksResponse._(
      conformancePackDetails: conformancePackDetails == null
          ? null
          : _i3.BuiltList(conformancePackDetails),
      nextToken: nextToken,
    );
  }

  factory DescribeConformancePacksResponse.build(
          [void Function(DescribeConformancePacksResponseBuilder) updates]) =
      _$DescribeConformancePacksResponse;

  const DescribeConformancePacksResponse._();

  /// Constructs a [DescribeConformancePacksResponse] from a [payload] and [response].
  factory DescribeConformancePacksResponse.fromResponse(
    DescribeConformancePacksResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<DescribeConformancePacksResponse>>
      serializers = [DescribeConformancePacksResponseAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeConformancePacksResponseBuilder b) {}

  /// Returns a list of `ConformancePackDetail` objects.
  _i3.BuiltList<_i2.ConformancePackDetail>? get conformancePackDetails;

  /// The `nextToken` string returned in a previous request that you use to request the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        conformancePackDetails,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeConformancePacksResponse')
          ..add(
            'conformancePackDetails',
            conformancePackDetails,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeConformancePacksResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<DescribeConformancePacksResponse> {
  const DescribeConformancePacksResponseAwsJson11Serializer()
      : super('DescribeConformancePacksResponse');

  @override
  Iterable<Type> get types => const [
        DescribeConformancePacksResponse,
        _$DescribeConformancePacksResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeConformancePacksResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeConformancePacksResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConformancePackDetails':
          result.conformancePackDetails.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.ConformancePackDetail)],
            ),
          ) as _i3.BuiltList<_i2.ConformancePackDetail>));
        case 'NextToken':
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
    DescribeConformancePacksResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeConformancePacksResponse(
      :conformancePackDetails,
      :nextToken
    ) = object;
    if (conformancePackDetails != null) {
      result$
        ..add('ConformancePackDetails')
        ..add(serializers.serialize(
          conformancePackDetails,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ConformancePackDetail)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add('NextToken')
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
