// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.api_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/api_endpoint_config.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'api_config.g.dart';

abstract class ApiConfig
    with _i1.AWSEquatable<ApiConfig>
    implements Built<ApiConfig, ApiConfigBuilder> {
  factory ApiConfig({required List<_i2.ApiEndpointConfig> endpoints}) {
    return _$ApiConfig._(endpoints: _i3.BuiltList(endpoints));
  }

  factory ApiConfig.build([void Function(ApiConfigBuilder) updates]) =
      _$ApiConfig;

  const ApiConfig._();

  static const List<_i4.SmithySerializer<ApiConfig>> serializers = [
    ApiConfigSerializer()
  ];

  _i3.BuiltList<_i2.ApiEndpointConfig> get endpoints;
  @override
  List<Object?> get props => [endpoints];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ApiConfig')
      ..add(
        'endpoints',
        endpoints,
      );
    return helper.toString();
  }
}

class ApiConfigSerializer extends _i4.StructuredSmithySerializer<ApiConfig> {
  const ApiConfigSerializer() : super('ApiConfig');

  @override
  Iterable<Type> get types => const [
        ApiConfig,
        _$ApiConfig,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  ApiConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiConfigBuilder();
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
              _i3.BuiltList,
              [FullType(_i2.ApiEndpointConfig)],
            ),
          ) as _i3.BuiltList<_i2.ApiEndpointConfig>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ApiConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ApiConfig(:endpoints) = object;
    result$.addAll([
      'endpoints',
      serializers.serialize(
        endpoints,
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(_i2.ApiEndpointConfig)],
        ),
      ),
    ]);
    return result$;
  }
}
