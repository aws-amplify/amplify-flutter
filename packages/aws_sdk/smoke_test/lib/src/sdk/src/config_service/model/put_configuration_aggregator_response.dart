// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.put_configuration_aggregator_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_aggregator.dart'
    as _i2;

part 'put_configuration_aggregator_response.g.dart';

abstract class PutConfigurationAggregatorResponse
    with
        _i1.AWSEquatable<PutConfigurationAggregatorResponse>
    implements
        Built<PutConfigurationAggregatorResponse,
            PutConfigurationAggregatorResponseBuilder> {
  factory PutConfigurationAggregatorResponse(
      {_i2.ConfigurationAggregator? configurationAggregator}) {
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

  static const List<_i3.SmithySerializer> serializers = [
    PutConfigurationAggregatorResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutConfigurationAggregatorResponseBuilder b) {}

  /// Returns a ConfigurationAggregator object.
  _i2.ConfigurationAggregator? get configurationAggregator;
  @override
  List<Object?> get props => [configurationAggregator];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutConfigurationAggregatorResponse');
    helper.add(
      'configurationAggregator',
      configurationAggregator,
    );
    return helper.toString();
  }
}

class PutConfigurationAggregatorResponseAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<PutConfigurationAggregatorResponse> {
  const PutConfigurationAggregatorResponseAwsJson11Serializer()
      : super('PutConfigurationAggregatorResponse');

  @override
  Iterable<Type> get types => const [
        PutConfigurationAggregatorResponse,
        _$PutConfigurationAggregatorResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      switch (key) {
        case 'ConfigurationAggregator':
          if (value != null) {
            result.configurationAggregator.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ConfigurationAggregator),
            ) as _i2.ConfigurationAggregator));
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
    final payload = (object as PutConfigurationAggregatorResponse);
    final result = <Object?>[];
    if (payload.configurationAggregator != null) {
      result
        ..add('ConfigurationAggregator')
        ..add(serializers.serialize(
          payload.configurationAggregator!,
          specifiedType: const FullType(_i2.ConfigurationAggregator),
        ));
    }
    return result;
  }
}
