// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.select_resource_config_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/query_info.dart'
    as _i2;

part 'select_resource_config_response.g.dart';

abstract class SelectResourceConfigResponse
    with
        _i1.AWSEquatable<SelectResourceConfigResponse>
    implements
        Built<SelectResourceConfigResponse,
            SelectResourceConfigResponseBuilder> {
  factory SelectResourceConfigResponse({
    List<String>? results,
    _i2.QueryInfo? queryInfo,
    String? nextToken,
  }) {
    return _$SelectResourceConfigResponse._(
      results: results == null ? null : _i3.BuiltList(results),
      queryInfo: queryInfo,
      nextToken: nextToken,
    );
  }

  factory SelectResourceConfigResponse.build(
          [void Function(SelectResourceConfigResponseBuilder) updates]) =
      _$SelectResourceConfigResponse;

  const SelectResourceConfigResponse._();

  /// Constructs a [SelectResourceConfigResponse] from a [payload] and [response].
  factory SelectResourceConfigResponse.fromResponse(
    SelectResourceConfigResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<SelectResourceConfigResponse>>
      serializers = [SelectResourceConfigResponseAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SelectResourceConfigResponseBuilder b) {}

  /// Returns the results for the SQL query.
  _i3.BuiltList<String>? get results;

  /// Returns the `QueryInfo` object.
  _i2.QueryInfo? get queryInfo;

  /// The `nextToken` string returned in a previous request that you use to request the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        results,
        queryInfo,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SelectResourceConfigResponse')
      ..add(
        'results',
        results,
      )
      ..add(
        'queryInfo',
        queryInfo,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class SelectResourceConfigResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<SelectResourceConfigResponse> {
  const SelectResourceConfigResponseAwsJson11Serializer()
      : super('SelectResourceConfigResponse');

  @override
  Iterable<Type> get types => const [
        SelectResourceConfigResponse,
        _$SelectResourceConfigResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  SelectResourceConfigResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SelectResourceConfigResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Results':
          result.results.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'QueryInfo':
          result.queryInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.QueryInfo),
          ) as _i2.QueryInfo));
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
    SelectResourceConfigResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final SelectResourceConfigResponse(:results, :queryInfo, :nextToken) =
        object;
    if (results != null) {
      result$
        ..add('Results')
        ..add(serializers.serialize(
          results,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (queryInfo != null) {
      result$
        ..add('QueryInfo')
        ..add(serializers.serialize(
          queryInfo,
          specifiedType: const FullType(_i2.QueryInfo),
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
