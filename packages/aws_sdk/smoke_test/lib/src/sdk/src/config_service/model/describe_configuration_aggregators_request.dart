// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.describe_configuration_aggregators_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_configuration_aggregators_request.g.dart';

abstract class DescribeConfigurationAggregatorsRequest
    with
        _i1.HttpInput<DescribeConfigurationAggregatorsRequest>,
        _i2.AWSEquatable<DescribeConfigurationAggregatorsRequest>
    implements
        Built<DescribeConfigurationAggregatorsRequest,
            DescribeConfigurationAggregatorsRequestBuilder> {
  factory DescribeConfigurationAggregatorsRequest({
    List<String>? configurationAggregatorNames,
    String? nextToken,
    int? limit,
  }) {
    limit ??= 0;
    return _$DescribeConfigurationAggregatorsRequest._(
      configurationAggregatorNames: configurationAggregatorNames == null
          ? null
          : _i3.BuiltList(configurationAggregatorNames),
      nextToken: nextToken,
      limit: limit,
    );
  }

  factory DescribeConfigurationAggregatorsRequest.build(
      [void Function(DescribeConfigurationAggregatorsRequestBuilder)
          updates]) = _$DescribeConfigurationAggregatorsRequest;

  const DescribeConfigurationAggregatorsRequest._();

  factory DescribeConfigurationAggregatorsRequest.fromRequest(
    DescribeConfigurationAggregatorsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeConfigurationAggregatorsRequest>>
      serializers = [
    DescribeConfigurationAggregatorsRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeConfigurationAggregatorsRequestBuilder b) {
    b.limit = 0;
  }

  /// The name of the configuration aggregators.
  _i3.BuiltList<String>? get configurationAggregatorNames;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// The maximum number of configuration aggregators returned on each page. The default is maximum. If you specify 0, Config uses the default.
  int get limit;
  @override
  DescribeConfigurationAggregatorsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configurationAggregatorNames,
        nextToken,
        limit,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeConfigurationAggregatorsRequest')
          ..add(
            'configurationAggregatorNames',
            configurationAggregatorNames,
          )
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'limit',
            limit,
          );
    return helper.toString();
  }
}

class DescribeConfigurationAggregatorsRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<DescribeConfigurationAggregatorsRequest> {
  const DescribeConfigurationAggregatorsRequestAwsJson11Serializer()
      : super('DescribeConfigurationAggregatorsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeConfigurationAggregatorsRequest,
        _$DescribeConfigurationAggregatorsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeConfigurationAggregatorsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeConfigurationAggregatorsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigurationAggregatorNames':
          result.configurationAggregatorNames.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeConfigurationAggregatorsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeConfigurationAggregatorsRequest(
      :configurationAggregatorNames,
      :nextToken,
      :limit
    ) = object;
    result$.addAll([
      'Limit',
      serializers.serialize(
        limit,
        specifiedType: const FullType(int),
      ),
    ]);
    if (configurationAggregatorNames != null) {
      result$
        ..add('ConfigurationAggregatorNames')
        ..add(serializers.serialize(
          configurationAggregatorNames,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
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
