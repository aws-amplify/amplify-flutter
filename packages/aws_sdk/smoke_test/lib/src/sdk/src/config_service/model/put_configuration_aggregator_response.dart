// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.put_configuration_aggregator_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_aggregator.dart';

part 'put_configuration_aggregator_response.g.dart';

abstract class PutConfigurationAggregatorResponse
    with
        _i1.AWSEquatable<PutConfigurationAggregatorResponse>
    implements
        Built<PutConfigurationAggregatorResponse,
            PutConfigurationAggregatorResponseBuilder> {
  factory PutConfigurationAggregatorResponse(
      {ConfigurationAggregator? configurationAggregator}) {
    return _$PutConfigurationAggregatorResponse._(
        configurationAggregator: configurationAggregator);
  }

  factory PutConfigurationAggregatorResponse.build(
          [void Function(PutConfigurationAggregatorResponseBuilder) updates]) =
      _$PutConfigurationAggregatorResponse;

  const PutConfigurationAggregatorResponse._();

  /// Constructs a [PutConfigurationAggregatorResponse] from a [payload] and [response].
  factory PutConfigurationAggregatorResponse.fromResponse(
    PutConfigurationAggregatorResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<PutConfigurationAggregatorResponse>>
      serializers = [PutConfigurationAggregatorResponseAwsJson11Serializer()];

  /// Returns a ConfigurationAggregator object.
  ConfigurationAggregator? get configurationAggregator;
  @override
  List<Object?> get props => [configurationAggregator];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutConfigurationAggregatorResponse')
          ..add(
            'configurationAggregator',
            configurationAggregator,
          );
    return helper.toString();
  }
}

class PutConfigurationAggregatorResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<PutConfigurationAggregatorResponse> {
  const PutConfigurationAggregatorResponseAwsJson11Serializer()
      : super('PutConfigurationAggregatorResponse');

  @override
  Iterable<Type> get types => const [
        PutConfigurationAggregatorResponse,
        _$PutConfigurationAggregatorResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutConfigurationAggregatorResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutConfigurationAggregatorResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigurationAggregator':
          result.configurationAggregator.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ConfigurationAggregator),
          ) as ConfigurationAggregator));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutConfigurationAggregatorResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutConfigurationAggregatorResponse(:configurationAggregator) = object;
    if (configurationAggregator != null) {
      result$
        ..add('ConfigurationAggregator')
        ..add(serializers.serialize(
          configurationAggregator,
          specifiedType: const FullType(ConfigurationAggregator),
        ));
    }
    return result$;
  }
}
