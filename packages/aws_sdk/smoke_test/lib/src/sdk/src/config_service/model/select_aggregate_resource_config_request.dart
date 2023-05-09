// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.select_aggregate_resource_config_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'select_aggregate_resource_config_request.g.dart';

abstract class SelectAggregateResourceConfigRequest
    with
        _i1.HttpInput<SelectAggregateResourceConfigRequest>,
        _i2.AWSEquatable<SelectAggregateResourceConfigRequest>
    implements
        Built<SelectAggregateResourceConfigRequest,
            SelectAggregateResourceConfigRequestBuilder> {
  factory SelectAggregateResourceConfigRequest({
    required String expression,
    required String configurationAggregatorName,
    int? limit,
    int? maxResults,
    String? nextToken,
  }) {
    return _$SelectAggregateResourceConfigRequest._(
      expression: expression,
      configurationAggregatorName: configurationAggregatorName,
      limit: limit,
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory SelectAggregateResourceConfigRequest.build(
      [void Function(SelectAggregateResourceConfigRequestBuilder)
          updates]) = _$SelectAggregateResourceConfigRequest;

  const SelectAggregateResourceConfigRequest._();

  factory SelectAggregateResourceConfigRequest.fromRequest(
    SelectAggregateResourceConfigRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    SelectAggregateResourceConfigRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SelectAggregateResourceConfigRequestBuilder b) {}

  /// The SQL query SELECT command.
  String get expression;

  /// The name of the configuration aggregator.
  String get configurationAggregatorName;

  /// The maximum number of query results returned on each page.
  int? get limit;

  /// The maximum number of query results returned on each page. Config also allows the Limit request parameter.
  int? get maxResults;

  /// The nextToken string returned in a previous request that you use to request the next page of results in a paginated response.
  String? get nextToken;
  @override
  SelectAggregateResourceConfigRequest getPayload() => this;
  @override
  List<Object?> get props => [
        expression,
        configurationAggregatorName,
        limit,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('SelectAggregateResourceConfigRequest');
    helper.add(
      'expression',
      expression,
    );
    helper.add(
      'configurationAggregatorName',
      configurationAggregatorName,
    );
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class SelectAggregateResourceConfigRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<SelectAggregateResourceConfigRequest> {
  const SelectAggregateResourceConfigRequestAwsJson11Serializer()
      : super('SelectAggregateResourceConfigRequest');

  @override
  Iterable<Type> get types => const [
        SelectAggregateResourceConfigRequest,
        _$SelectAggregateResourceConfigRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  SelectAggregateResourceConfigRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SelectAggregateResourceConfigRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Expression':
          result.expression = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConfigurationAggregatorName':
          result.configurationAggregatorName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as SelectAggregateResourceConfigRequest);
    final result = <Object?>[
      'Expression',
      serializers.serialize(
        payload.expression,
        specifiedType: const FullType(String),
      ),
      'ConfigurationAggregatorName',
      serializers.serialize(
        payload.configurationAggregatorName,
        specifiedType: const FullType(String),
      ),
    ];
    final SelectAggregateResourceConfigRequest(
      :limit,
      :maxResults,
      :nextToken
    ) = payload;
    if (limit != null) {
      result
        ..add('Limit')
        ..add(serializers.serialize(
          limit,
          specifiedType: const FullType(int),
        ));
    }
    if (maxResults != null) {
      result
        ..add('MaxResults')
        ..add(serializers.serialize(
          maxResults,
          specifiedType: const FullType(int),
        ));
    }
    if (nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
