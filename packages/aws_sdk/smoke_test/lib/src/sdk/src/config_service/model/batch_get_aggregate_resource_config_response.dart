// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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

  static const List<_i5.SmithySerializer> serializers = [
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
        newBuiltValueToStringHelper('BatchGetAggregateResourceConfigResponse');
    helper.add(
      'baseConfigurationItems',
      baseConfigurationItems,
    );
    helper.add(
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
      switch (key) {
        case 'BaseConfigurationItems':
          if (value != null) {
            result.baseConfigurationItems.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.BaseConfigurationItem)],
              ),
            ) as _i4.BuiltList<_i2.BaseConfigurationItem>));
          }
          break;
        case 'UnprocessedResourceIdentifiers':
          if (value != null) {
            result.unprocessedResourceIdentifiers
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.AggregateResourceIdentifier)],
              ),
            ) as _i4.BuiltList<_i3.AggregateResourceIdentifier>));
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
    final payload = (object as BatchGetAggregateResourceConfigResponse);
    final result = <Object?>[];
    if (payload.baseConfigurationItems != null) {
      result
        ..add('BaseConfigurationItems')
        ..add(serializers.serialize(
          payload.baseConfigurationItems!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i2.BaseConfigurationItem)],
          ),
        ));
    }
    if (payload.unprocessedResourceIdentifiers != null) {
      result
        ..add('UnprocessedResourceIdentifiers')
        ..add(serializers.serialize(
          payload.unprocessedResourceIdentifiers!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.AggregateResourceIdentifier)],
          ),
        ));
    }
    return result;
  }
}
