// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.describe_configuration_aggregators_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_aggregator.dart'
    as _i2;

part 'describe_configuration_aggregators_response.g.dart';

abstract class DescribeConfigurationAggregatorsResponse
    with
        _i1.AWSEquatable<DescribeConfigurationAggregatorsResponse>
    implements
        Built<DescribeConfigurationAggregatorsResponse,
            DescribeConfigurationAggregatorsResponseBuilder> {
  factory DescribeConfigurationAggregatorsResponse({
    List<_i2.ConfigurationAggregator>? configurationAggregators,
    String? nextToken,
  }) {
    return _$DescribeConfigurationAggregatorsResponse._(
      configurationAggregators: configurationAggregators == null
          ? null
          : _i3.BuiltList(configurationAggregators),
      nextToken: nextToken,
    );
  }

  factory DescribeConfigurationAggregatorsResponse.build(
      [void Function(DescribeConfigurationAggregatorsResponseBuilder)
          updates]) = _$DescribeConfigurationAggregatorsResponse;

  const DescribeConfigurationAggregatorsResponse._();

  /// Constructs a [DescribeConfigurationAggregatorsResponse] from a [payload] and [response].
  factory DescribeConfigurationAggregatorsResponse.fromResponse(
    DescribeConfigurationAggregatorsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeConfigurationAggregatorsResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeConfigurationAggregatorsResponseBuilder b) {}

  /// Returns a ConfigurationAggregators object.
  _i3.BuiltList<_i2.ConfigurationAggregator>? get configurationAggregators;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        configurationAggregators,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeConfigurationAggregatorsResponse');
    helper.add(
      'configurationAggregators',
      configurationAggregators,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeConfigurationAggregatorsResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<DescribeConfigurationAggregatorsResponse> {
  const DescribeConfigurationAggregatorsResponseAwsJson11Serializer()
      : super('DescribeConfigurationAggregatorsResponse');

  @override
  Iterable<Type> get types => const [
        DescribeConfigurationAggregatorsResponse,
        _$DescribeConfigurationAggregatorsResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeConfigurationAggregatorsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeConfigurationAggregatorsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConfigurationAggregators':
          if (value != null) {
            result.configurationAggregators.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ConfigurationAggregator)],
              ),
            ) as _i3.BuiltList<_i2.ConfigurationAggregator>));
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
    final payload = (object as DescribeConfigurationAggregatorsResponse);
    final result = <Object?>[];
    if (payload.configurationAggregators != null) {
      result
        ..add('ConfigurationAggregators')
        ..add(serializers.serialize(
          payload.configurationAggregators!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ConfigurationAggregator)],
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
