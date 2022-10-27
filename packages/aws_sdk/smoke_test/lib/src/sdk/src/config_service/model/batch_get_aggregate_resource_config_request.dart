// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.batch_get_aggregate_resource_config_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_resource_identifier.dart'
    as _i3;

part 'batch_get_aggregate_resource_config_request.g.dart';

abstract class BatchGetAggregateResourceConfigRequest
    with
        _i1.HttpInput<BatchGetAggregateResourceConfigRequest>,
        _i2.AWSEquatable<BatchGetAggregateResourceConfigRequest>
    implements
        Built<BatchGetAggregateResourceConfigRequest,
            BatchGetAggregateResourceConfigRequestBuilder> {
  factory BatchGetAggregateResourceConfigRequest({
    required String configurationAggregatorName,
    required List<_i3.AggregateResourceIdentifier> resourceIdentifiers,
  }) {
    return _$BatchGetAggregateResourceConfigRequest._(
      configurationAggregatorName: configurationAggregatorName,
      resourceIdentifiers: _i4.BuiltList(resourceIdentifiers),
    );
  }

  factory BatchGetAggregateResourceConfigRequest.build(
      [void Function(BatchGetAggregateResourceConfigRequestBuilder)
          updates]) = _$BatchGetAggregateResourceConfigRequest;

  const BatchGetAggregateResourceConfigRequest._();

  factory BatchGetAggregateResourceConfigRequest.fromRequest(
    BatchGetAggregateResourceConfigRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    BatchGetAggregateResourceConfigRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BatchGetAggregateResourceConfigRequestBuilder b) {}

  /// The name of the configuration aggregator.
  String get configurationAggregatorName;

  /// A list of aggregate ResourceIdentifiers objects.
  _i4.BuiltList<_i3.AggregateResourceIdentifier> get resourceIdentifiers;
  @override
  BatchGetAggregateResourceConfigRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configurationAggregatorName,
        resourceIdentifiers,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('BatchGetAggregateResourceConfigRequest');
    helper.add(
      'configurationAggregatorName',
      configurationAggregatorName,
    );
    helper.add(
      'resourceIdentifiers',
      resourceIdentifiers,
    );
    return helper.toString();
  }
}

class BatchGetAggregateResourceConfigRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<BatchGetAggregateResourceConfigRequest> {
  const BatchGetAggregateResourceConfigRequestAwsJson11Serializer()
      : super('BatchGetAggregateResourceConfigRequest');

  @override
  Iterable<Type> get types => const [
        BatchGetAggregateResourceConfigRequest,
        _$BatchGetAggregateResourceConfigRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  BatchGetAggregateResourceConfigRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchGetAggregateResourceConfigRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConfigurationAggregatorName':
          result.configurationAggregatorName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ResourceIdentifiers':
          result.resourceIdentifiers.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.AggregateResourceIdentifier)],
            ),
          ) as _i4.BuiltList<_i3.AggregateResourceIdentifier>));
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
    final payload = (object as BatchGetAggregateResourceConfigRequest);
    final result = <Object?>[
      'ConfigurationAggregatorName',
      serializers.serialize(
        payload.configurationAggregatorName,
        specifiedType: const FullType(String),
      ),
      'ResourceIdentifiers',
      serializers.serialize(
        payload.resourceIdentifiers,
        specifiedType: const FullType(
          _i4.BuiltList,
          [FullType(_i3.AggregateResourceIdentifier)],
        ),
      ),
    ];
    return result;
  }
}
