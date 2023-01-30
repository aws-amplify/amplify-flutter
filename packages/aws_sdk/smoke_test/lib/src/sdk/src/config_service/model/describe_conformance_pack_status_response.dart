// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.describe_conformance_pack_status_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_status_detail.dart'
    as _i2;

part 'describe_conformance_pack_status_response.g.dart';

abstract class DescribeConformancePackStatusResponse
    with
        _i1.AWSEquatable<DescribeConformancePackStatusResponse>
    implements
        Built<DescribeConformancePackStatusResponse,
            DescribeConformancePackStatusResponseBuilder> {
  factory DescribeConformancePackStatusResponse({
    List<_i2.ConformancePackStatusDetail>? conformancePackStatusDetails,
    String? nextToken,
  }) {
    return _$DescribeConformancePackStatusResponse._(
      conformancePackStatusDetails: conformancePackStatusDetails == null
          ? null
          : _i3.BuiltList(conformancePackStatusDetails),
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

  static const List<_i4.SmithySerializer> serializers = [
    DescribeConformancePackStatusResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeConformancePackStatusResponseBuilder b) {}

  /// A list of `ConformancePackStatusDetail` objects.
  _i3.BuiltList<_i2.ConformancePackStatusDetail>?
      get conformancePackStatusDetails;

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
        newBuiltValueToStringHelper('DescribeConformancePackStatusResponse');
    helper.add(
      'conformancePackStatusDetails',
      conformancePackStatusDetails,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeConformancePackStatusResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<DescribeConformancePackStatusResponse> {
  const DescribeConformancePackStatusResponseAwsJson11Serializer()
      : super('DescribeConformancePackStatusResponse');

  @override
  Iterable<Type> get types => const [
        DescribeConformancePackStatusResponse,
        _$DescribeConformancePackStatusResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
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
      switch (key) {
        case 'ConformancePackStatusDetails':
          if (value != null) {
            result.conformancePackStatusDetails
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ConformancePackStatusDetail)],
              ),
            ) as _i3.BuiltList<_i2.ConformancePackStatusDetail>));
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as DescribeConformancePackStatusResponse);
    final result = <Object?>[];
    if (payload.conformancePackStatusDetails != null) {
      result
        ..add('ConformancePackStatusDetails')
        ..add(serializers.serialize(
          payload.conformancePackStatusDetails!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ConformancePackStatusDetail)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
