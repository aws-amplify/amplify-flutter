// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.describe_conformance_packs_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_conformance_packs_request.g.dart';

abstract class DescribeConformancePacksRequest
    with
        _i1.HttpInput<DescribeConformancePacksRequest>,
        _i2.AWSEquatable<DescribeConformancePacksRequest>
    implements
        Built<DescribeConformancePacksRequest,
            DescribeConformancePacksRequestBuilder> {
  factory DescribeConformancePacksRequest({
    List<String>? conformancePackNames,
    int? limit,
    String? nextToken,
  }) {
    return _$DescribeConformancePacksRequest._(
      conformancePackNames: conformancePackNames == null
          ? null
          : _i3.BuiltList(conformancePackNames),
      limit: limit,
      nextToken: nextToken,
    );
  }

  factory DescribeConformancePacksRequest.build(
          [void Function(DescribeConformancePacksRequestBuilder) updates]) =
      _$DescribeConformancePacksRequest;

  const DescribeConformancePacksRequest._();

  factory DescribeConformancePacksRequest.fromRequest(
    DescribeConformancePacksRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeConformancePacksRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeConformancePacksRequestBuilder b) {}

  /// Comma-separated list of conformance pack names for which you want details. If you do not specify any names, Config returns details for all your conformance packs.
  _i3.BuiltList<String>? get conformancePackNames;

  /// The maximum number of conformance packs returned on each page.
  int? get limit;

  /// The `nextToken` string returned in a previous request that you use to request the next page of results in a paginated response.
  String? get nextToken;
  @override
  DescribeConformancePacksRequest getPayload() => this;
  @override
  List<Object?> get props => [
        conformancePackNames,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeConformancePacksRequest');
    helper.add(
      'conformancePackNames',
      conformancePackNames,
    );
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeConformancePacksRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<DescribeConformancePacksRequest> {
  const DescribeConformancePacksRequestAwsJson11Serializer()
      : super('DescribeConformancePacksRequest');

  @override
  Iterable<Type> get types => const [
        DescribeConformancePacksRequest,
        _$DescribeConformancePacksRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeConformancePacksRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeConformancePacksRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConformancePackNames':
          if (value != null) {
            result.conformancePackNames.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
          }
          break;
        case 'Limit':
          if (value != null) {
            result.limit = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as DescribeConformancePacksRequest);
    final result = <Object?>[];
    if (payload.conformancePackNames != null) {
      result
        ..add('ConformancePackNames')
        ..add(serializers.serialize(
          payload.conformancePackNames!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.limit != null) {
      result
        ..add('Limit')
        ..add(serializers.serialize(
          payload.limit!,
          specifiedType: const FullType(int),
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
