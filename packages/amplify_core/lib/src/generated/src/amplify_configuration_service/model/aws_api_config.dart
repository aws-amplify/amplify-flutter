// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.aws_api_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_api_endpoint_config.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'aws_api_config.g.dart';

abstract class AWSApiConfig
    with _i1.AWSEquatable<AWSApiConfig>
    implements Built<AWSApiConfig, AWSApiConfigBuilder> {
  factory AWSApiConfig(
      {required Map<String, _i2.AWSApiEndpointConfig> endpoints}) {
    return _$AWSApiConfig._(endpoints: _i3.BuiltMap(endpoints));
  }

  factory AWSApiConfig.build([void Function(AWSApiConfigBuilder) updates]) =
      _$AWSApiConfig;

  const AWSApiConfig._();

  static const List<_i4.SmithySerializer<AWSApiConfig>> serializers = [
    AWSApiConfigSerializer()
  ];

  _i3.BuiltMap<String, _i2.AWSApiEndpointConfig> get endpoints;
  @override
  List<Object?> get props => [endpoints];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AWSApiConfig')
      ..add(
        'endpoints',
        endpoints,
      );
    return helper.toString();
  }
}

class AWSApiConfigSerializer
    extends _i4.StructuredSmithySerializer<AWSApiConfig> {
  const AWSApiConfigSerializer() : super('AWSApiConfig');

  @override
  Iterable<Type> get types => const [
        AWSApiConfig,
        _$AWSApiConfig,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSApiConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AWSApiConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'endpoints':
          result.endpoints.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(_i2.AWSApiEndpointConfig),
              ],
            ),
          ) as _i3.BuiltMap<String, _i2.AWSApiEndpointConfig>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AWSApiConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AWSApiConfig(:endpoints) = object;
    result$.addAll([
      'endpoints',
      serializers.serialize(
        endpoints,
        specifiedType: const FullType(
          _i3.BuiltMap,
          [
            FullType(String),
            FullType(_i2.AWSApiEndpointConfig),
          ],
        ),
      ),
    ]);
    return result$;
  }
}
