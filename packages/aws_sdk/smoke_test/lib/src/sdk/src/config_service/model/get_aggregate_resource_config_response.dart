// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.get_aggregate_resource_config_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_item.dart'
    as _i2;

part 'get_aggregate_resource_config_response.g.dart';

abstract class GetAggregateResourceConfigResponse
    with
        _i1.AWSEquatable<GetAggregateResourceConfigResponse>
    implements
        Built<GetAggregateResourceConfigResponse,
            GetAggregateResourceConfigResponseBuilder> {
  factory GetAggregateResourceConfigResponse(
      {_i2.ConfigurationItem? configurationItem}) {
    return _$GetAggregateResourceConfigResponse._(
        configurationItem: configurationItem);
  }

  factory GetAggregateResourceConfigResponse.build(
          [void Function(GetAggregateResourceConfigResponseBuilder) updates]) =
      _$GetAggregateResourceConfigResponse;

  const GetAggregateResourceConfigResponse._();

  /// Constructs a [GetAggregateResourceConfigResponse] from a [payload] and [response].
  factory GetAggregateResourceConfigResponse.fromResponse(
    GetAggregateResourceConfigResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetAggregateResourceConfigResponse>>
      serializers = [GetAggregateResourceConfigResponseAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAggregateResourceConfigResponseBuilder b) {}

  /// Returns a `ConfigurationItem` object.
  _i2.ConfigurationItem? get configurationItem;
  @override
  List<Object?> get props => [configurationItem];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetAggregateResourceConfigResponse')
          ..add(
            'configurationItem',
            configurationItem,
          );
    return helper.toString();
  }
}

class GetAggregateResourceConfigResponseAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<GetAggregateResourceConfigResponse> {
  const GetAggregateResourceConfigResponseAwsJson11Serializer()
      : super('GetAggregateResourceConfigResponse');

  @override
  Iterable<Type> get types => const [
        GetAggregateResourceConfigResponse,
        _$GetAggregateResourceConfigResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetAggregateResourceConfigResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAggregateResourceConfigResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigurationItem':
          result.configurationItem.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ConfigurationItem),
          ) as _i2.ConfigurationItem));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetAggregateResourceConfigResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetAggregateResourceConfigResponse(:configurationItem) = object;
    if (configurationItem != null) {
      result$
        ..add('ConfigurationItem')
        ..add(serializers.serialize(
          configurationItem,
          specifiedType: const FullType(_i2.ConfigurationItem),
        ));
    }
    return result$;
  }
}
