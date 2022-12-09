// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.describe_retention_configurations_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/retention_configuration.dart'
    as _i2;

part 'describe_retention_configurations_response.g.dart';

abstract class DescribeRetentionConfigurationsResponse
    with
        _i1.AWSEquatable<DescribeRetentionConfigurationsResponse>
    implements
        Built<DescribeRetentionConfigurationsResponse,
            DescribeRetentionConfigurationsResponseBuilder> {
  factory DescribeRetentionConfigurationsResponse({
    String? nextToken,
    List<_i2.RetentionConfiguration>? retentionConfigurations,
  }) {
    return _$DescribeRetentionConfigurationsResponse._(
      nextToken: nextToken,
      retentionConfigurations: retentionConfigurations == null
          ? null
          : _i3.BuiltList(retentionConfigurations),
    );
  }

  factory DescribeRetentionConfigurationsResponse.build(
      [void Function(DescribeRetentionConfigurationsResponseBuilder)
          updates]) = _$DescribeRetentionConfigurationsResponse;

  const DescribeRetentionConfigurationsResponse._();

  /// Constructs a [DescribeRetentionConfigurationsResponse] from a [payload] and [response].
  factory DescribeRetentionConfigurationsResponse.fromResponse(
    DescribeRetentionConfigurationsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeRetentionConfigurationsResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeRetentionConfigurationsResponseBuilder b) {}

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// Returns a retention configuration object.
  _i3.BuiltList<_i2.RetentionConfiguration>? get retentionConfigurations;
  @override
  List<Object?> get props => [
        nextToken,
        retentionConfigurations,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeRetentionConfigurationsResponse');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'retentionConfigurations',
      retentionConfigurations,
    );
    return helper.toString();
  }
}

class DescribeRetentionConfigurationsResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<DescribeRetentionConfigurationsResponse> {
  const DescribeRetentionConfigurationsResponseAwsJson11Serializer()
      : super('DescribeRetentionConfigurationsResponse');

  @override
  Iterable<Type> get types => const [
        DescribeRetentionConfigurationsResponse,
        _$DescribeRetentionConfigurationsResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeRetentionConfigurationsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeRetentionConfigurationsResponseBuilder();
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
        case 'RetentionConfigurations':
          if (value != null) {
            result.retentionConfigurations.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.RetentionConfiguration)],
              ),
            ) as _i3.BuiltList<_i2.RetentionConfiguration>));
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
    final payload = (object as DescribeRetentionConfigurationsResponse);
    final result = <Object?>[];
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.retentionConfigurations != null) {
      result
        ..add('RetentionConfigurations')
        ..add(serializers.serialize(
          payload.retentionConfigurations!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.RetentionConfiguration)],
          ),
        ));
    }
    return result;
  }
}
