// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.batch_get_resource_config_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/base_configuration_item.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_key.dart'
    as _i3;

part 'batch_get_resource_config_response.g.dart';

abstract class BatchGetResourceConfigResponse
    with
        _i1.AWSEquatable<BatchGetResourceConfigResponse>
    implements
        Built<BatchGetResourceConfigResponse,
            BatchGetResourceConfigResponseBuilder> {
  factory BatchGetResourceConfigResponse({
    List<_i2.BaseConfigurationItem>? baseConfigurationItems,
    List<_i3.ResourceKey>? unprocessedResourceKeys,
  }) {
    return _$BatchGetResourceConfigResponse._(
      baseConfigurationItems: baseConfigurationItems == null
          ? null
          : _i4.BuiltList(baseConfigurationItems),
      unprocessedResourceKeys: unprocessedResourceKeys == null
          ? null
          : _i4.BuiltList(unprocessedResourceKeys),
    );
  }

  factory BatchGetResourceConfigResponse.build(
          [void Function(BatchGetResourceConfigResponseBuilder) updates]) =
      _$BatchGetResourceConfigResponse;

  const BatchGetResourceConfigResponse._();

  /// Constructs a [BatchGetResourceConfigResponse] from a [payload] and [response].
  factory BatchGetResourceConfigResponse.fromResponse(
    BatchGetResourceConfigResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer<BatchGetResourceConfigResponse>>
      serializers = [BatchGetResourceConfigResponseAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BatchGetResourceConfigResponseBuilder b) {}

  /// A list that contains the current configuration of one or more resources.
  _i4.BuiltList<_i2.BaseConfigurationItem>? get baseConfigurationItems;

  /// A list of resource keys that were not processed with the current response. The unprocessesResourceKeys value is in the same form as ResourceKeys, so the value can be directly provided to a subsequent BatchGetResourceConfig operation. If there are no unprocessed resource keys, the response contains an empty unprocessedResourceKeys list.
  _i4.BuiltList<_i3.ResourceKey>? get unprocessedResourceKeys;
  @override
  List<Object?> get props => [
        baseConfigurationItems,
        unprocessedResourceKeys,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BatchGetResourceConfigResponse')
      ..add(
        'baseConfigurationItems',
        baseConfigurationItems,
      )
      ..add(
        'unprocessedResourceKeys',
        unprocessedResourceKeys,
      );
    return helper.toString();
  }
}

class BatchGetResourceConfigResponseAwsJson11Serializer
    extends _i5.StructuredSmithySerializer<BatchGetResourceConfigResponse> {
  const BatchGetResourceConfigResponseAwsJson11Serializer()
      : super('BatchGetResourceConfigResponse');

  @override
  Iterable<Type> get types => const [
        BatchGetResourceConfigResponse,
        _$BatchGetResourceConfigResponse,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  BatchGetResourceConfigResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchGetResourceConfigResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'baseConfigurationItems':
          result.baseConfigurationItems.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i2.BaseConfigurationItem)],
            ),
          ) as _i4.BuiltList<_i2.BaseConfigurationItem>));
        case 'unprocessedResourceKeys':
          result.unprocessedResourceKeys.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.ResourceKey)],
            ),
          ) as _i4.BuiltList<_i3.ResourceKey>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BatchGetResourceConfigResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final BatchGetResourceConfigResponse(
      :baseConfigurationItems,
      :unprocessedResourceKeys
    ) = object;
    if (baseConfigurationItems != null) {
      result$
        ..add('baseConfigurationItems')
        ..add(serializers.serialize(
          baseConfigurationItems,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i2.BaseConfigurationItem)],
          ),
        ));
    }
    if (unprocessedResourceKeys != null) {
      result$
        ..add('unprocessedResourceKeys')
        ..add(serializers.serialize(
          unprocessedResourceKeys,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.ResourceKey)],
          ),
        ));
    }
    return result$;
  }
}
