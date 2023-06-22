// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.batch_get_aggregate_resource_config_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_resource_identifier.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/base_configuration_item.dart'
    as _i2;

part 'batch_get_aggregate_resource_config_response.g.dart';

abstract class BatchGetAggregateResourceConfigResponse
    with
        _i1.AWSEquatable<BatchGetAggregateResourceConfigResponse>
    implements
        Built<BatchGetAggregateResourceConfigResponse,
            BatchGetAggregateResourceConfigResponseBuilder> {
  factory BatchGetAggregateResourceConfigResponse({
    List<_i2.BaseConfigurationItem>? baseConfigurationItems,
    List<_i3.AggregateResourceIdentifier>? unprocessedResourceIdentifiers,
  }) {
    return _$BatchGetAggregateResourceConfigResponse._(
      baseConfigurationItems: baseConfigurationItems == null
          ? null
          : _i4.BuiltList(baseConfigurationItems),
      unprocessedResourceIdentifiers: unprocessedResourceIdentifiers == null
          ? null
          : _i4.BuiltList(unprocessedResourceIdentifiers),
    );
  }

  factory BatchGetAggregateResourceConfigResponse.build(
      [void Function(BatchGetAggregateResourceConfigResponseBuilder)
          updates]) = _$BatchGetAggregateResourceConfigResponse;

  const BatchGetAggregateResourceConfigResponse._();

  /// Constructs a [BatchGetAggregateResourceConfigResponse] from a [payload] and [response].
  factory BatchGetAggregateResourceConfigResponse.fromResponse(
    BatchGetAggregateResourceConfigResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i5.SmithySerializer<BatchGetAggregateResourceConfigResponse>>
      serializers = [
    BatchGetAggregateResourceConfigResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BatchGetAggregateResourceConfigResponseBuilder b) {}

  /// A list that contains the current configuration of one or more resources.
  _i4.BuiltList<_i2.BaseConfigurationItem>? get baseConfigurationItems;

  /// A list of resource identifiers that were not processed with current scope. The list is empty if all the resources are processed.
  _i4.BuiltList<_i3.AggregateResourceIdentifier>?
      get unprocessedResourceIdentifiers;
  @override
  List<Object?> get props => [
        baseConfigurationItems,
        unprocessedResourceIdentifiers,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('BatchGetAggregateResourceConfigResponse')
          ..add(
            'baseConfigurationItems',
            baseConfigurationItems,
          )
          ..add(
            'unprocessedResourceIdentifiers',
            unprocessedResourceIdentifiers,
          );
    return helper.toString();
  }
}

class BatchGetAggregateResourceConfigResponseAwsJson11Serializer extends _i5
    .StructuredSmithySerializer<BatchGetAggregateResourceConfigResponse> {
  const BatchGetAggregateResourceConfigResponseAwsJson11Serializer()
      : super('BatchGetAggregateResourceConfigResponse');

  @override
  Iterable<Type> get types => const [
        BatchGetAggregateResourceConfigResponse,
        _$BatchGetAggregateResourceConfigResponse,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  BatchGetAggregateResourceConfigResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchGetAggregateResourceConfigResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'BaseConfigurationItems':
          result.baseConfigurationItems.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i2.BaseConfigurationItem)],
            ),
          ) as _i4.BuiltList<_i2.BaseConfigurationItem>));
        case 'UnprocessedResourceIdentifiers':
          result.unprocessedResourceIdentifiers
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.AggregateResourceIdentifier)],
            ),
          ) as _i4.BuiltList<_i3.AggregateResourceIdentifier>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BatchGetAggregateResourceConfigResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final BatchGetAggregateResourceConfigResponse(
      :baseConfigurationItems,
      :unprocessedResourceIdentifiers
    ) = object;
    if (baseConfigurationItems != null) {
      result$
        ..add('BaseConfigurationItems')
        ..add(serializers.serialize(
          baseConfigurationItems,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i2.BaseConfigurationItem)],
          ),
        ));
    }
    if (unprocessedResourceIdentifiers != null) {
      result$
        ..add('UnprocessedResourceIdentifiers')
        ..add(serializers.serialize(
          unprocessedResourceIdentifiers,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.AggregateResourceIdentifier)],
          ),
        ));
    }
    return result$;
  }
}
