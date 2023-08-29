// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.describe_conformance_pack_status_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_status_detail.dart';

part 'describe_conformance_pack_status_response.g.dart';

abstract class DescribeConformancePackStatusResponse
    with
        _i1.AWSEquatable<DescribeConformancePackStatusResponse>
    implements
        Built<DescribeConformancePackStatusResponse,
            DescribeConformancePackStatusResponseBuilder> {
  factory DescribeConformancePackStatusResponse({
    List<ConformancePackStatusDetail>? conformancePackStatusDetails,
    String? nextToken,
  }) {
    return _$DescribeConformancePackStatusResponse._(
      conformancePackStatusDetails: conformancePackStatusDetails == null
          ? null
          : _i2.BuiltList(conformancePackStatusDetails),
      nextToken: nextToken,
    );
  }

  factory DescribeConformancePackStatusResponse.build(
      [void Function(DescribeConformancePackStatusResponseBuilder)
          updates]) = _$DescribeConformancePackStatusResponse;

  const DescribeConformancePackStatusResponse._();

  /// Constructs a [DescribeConformancePackStatusResponse] from a [payload] and [response].
  factory DescribeConformancePackStatusResponse.fromResponse(
    DescribeConformancePackStatusResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeConformancePackStatusResponse>>
      serializers = [
    DescribeConformancePackStatusResponseAwsJson11Serializer()
  ];

  /// A list of `ConformancePackStatusDetail` objects.
  _i2.BuiltList<ConformancePackStatusDetail>? get conformancePackStatusDetails;

  /// The `nextToken` string returned in a previous request that you use to request the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        conformancePackStatusDetails,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeConformancePackStatusResponse')
          ..add(
            'conformancePackStatusDetails',
            conformancePackStatusDetails,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeConformancePackStatusResponseAwsJson11Serializer extends _i3
    .StructuredSmithySerializer<DescribeConformancePackStatusResponse> {
  const DescribeConformancePackStatusResponseAwsJson11Serializer()
      : super('DescribeConformancePackStatusResponse');

  @override
  Iterable<Type> get types => const [
        DescribeConformancePackStatusResponse,
        _$DescribeConformancePackStatusResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeConformancePackStatusResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeConformancePackStatusResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConformancePackStatusDetails':
          result.conformancePackStatusDetails.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ConformancePackStatusDetail)],
            ),
          ) as _i2.BuiltList<ConformancePackStatusDetail>));
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
    DescribeConformancePackStatusResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeConformancePackStatusResponse(
      :conformancePackStatusDetails,
      :nextToken
    ) = object;
    if (conformancePackStatusDetails != null) {
      result$
        ..add('ConformancePackStatusDetails')
        ..add(serializers.serialize(
          conformancePackStatusDetails,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ConformancePackStatusDetail)],
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
