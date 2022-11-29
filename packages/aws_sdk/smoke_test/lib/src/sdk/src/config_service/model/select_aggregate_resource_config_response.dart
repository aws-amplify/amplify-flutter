// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.select_aggregate_resource_config_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/query_info.dart'
    as _i2;

part 'select_aggregate_resource_config_response.g.dart';

abstract class SelectAggregateResourceConfigResponse
    with
        _i1.AWSEquatable<SelectAggregateResourceConfigResponse>
    implements
        Built<SelectAggregateResourceConfigResponse,
            SelectAggregateResourceConfigResponseBuilder> {
  factory SelectAggregateResourceConfigResponse({
    String? nextToken,
    _i2.QueryInfo? queryInfo,
    List<String>? results,
  }) {
    return _$SelectAggregateResourceConfigResponse._(
      nextToken: nextToken,
      queryInfo: queryInfo,
      results: results == null ? null : _i3.BuiltList(results),
    );
  }

  factory SelectAggregateResourceConfigResponse.build(
      [void Function(SelectAggregateResourceConfigResponseBuilder)
          updates]) = _$SelectAggregateResourceConfigResponse;

  const SelectAggregateResourceConfigResponse._();

  /// Constructs a [SelectAggregateResourceConfigResponse] from a [payload] and [response].
  factory SelectAggregateResourceConfigResponse.fromResponse(
    SelectAggregateResourceConfigResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    SelectAggregateResourceConfigResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SelectAggregateResourceConfigResponseBuilder b) {}

  /// The nextToken string returned in a previous request that you use to request the next page of results in a paginated response.
  String? get nextToken;

  /// Details about the query.
  _i2.QueryInfo? get queryInfo;

  /// Returns the results for the SQL query.
  _i3.BuiltList<String>? get results;
  @override
  List<Object?> get props => [
        nextToken,
        queryInfo,
        results,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('SelectAggregateResourceConfigResponse');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'queryInfo',
      queryInfo,
    );
    helper.add(
      'results',
      results,
    );
    return helper.toString();
  }
}

class SelectAggregateResourceConfigResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<SelectAggregateResourceConfigResponse> {
  const SelectAggregateResourceConfigResponseAwsJson11Serializer()
      : super('SelectAggregateResourceConfigResponse');

  @override
  Iterable<Type> get types => const [
        SelectAggregateResourceConfigResponse,
        _$SelectAggregateResourceConfigResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  SelectAggregateResourceConfigResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SelectAggregateResourceConfigResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'QueryInfo':
          if (value != null) {
            result.queryInfo.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.QueryInfo),
            ) as _i2.QueryInfo));
          }
          break;
        case 'Results':
          if (value != null) {
            result.results.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
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
    final payload = (object as SelectAggregateResourceConfigResponse);
    final result = <Object?>[];
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.queryInfo != null) {
      result
        ..add('QueryInfo')
        ..add(serializers.serialize(
          payload.queryInfo!,
          specifiedType: const FullType(_i2.QueryInfo),
        ));
    }
    if (payload.results != null) {
      result
        ..add('Results')
        ..add(serializers.serialize(
          payload.results!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
