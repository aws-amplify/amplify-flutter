// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.batch_get_resource_config_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_key.dart'
    as _i3;

part 'batch_get_resource_config_request.g.dart';

abstract class BatchGetResourceConfigRequest
    with
        _i1.HttpInput<BatchGetResourceConfigRequest>,
        _i2.AWSEquatable<BatchGetResourceConfigRequest>
    implements
        Built<BatchGetResourceConfigRequest,
            BatchGetResourceConfigRequestBuilder> {
  factory BatchGetResourceConfigRequest(
      {required List<_i3.ResourceKey> resourceKeys}) {
    return _$BatchGetResourceConfigRequest._(
        resourceKeys: _i4.BuiltList(resourceKeys));
  }

  factory BatchGetResourceConfigRequest.build(
          [void Function(BatchGetResourceConfigRequestBuilder) updates]) =
      _$BatchGetResourceConfigRequest;

  const BatchGetResourceConfigRequest._();

  factory BatchGetResourceConfigRequest.fromRequest(
    BatchGetResourceConfigRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    BatchGetResourceConfigRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BatchGetResourceConfigRequestBuilder b) {}

  /// A list of resource keys to be processed with the current request. Each element in the list consists of the resource type and resource ID.
  _i4.BuiltList<_i3.ResourceKey> get resourceKeys;
  @override
  BatchGetResourceConfigRequest getPayload() => this;
  @override
  List<Object?> get props => [resourceKeys];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BatchGetResourceConfigRequest');
    helper.add(
      'resourceKeys',
      resourceKeys,
    );
    return helper.toString();
  }
}

class BatchGetResourceConfigRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<BatchGetResourceConfigRequest> {
  const BatchGetResourceConfigRequestAwsJson11Serializer()
      : super('BatchGetResourceConfigRequest');

  @override
  Iterable<Type> get types => const [
        BatchGetResourceConfigRequest,
        _$BatchGetResourceConfigRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  BatchGetResourceConfigRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchGetResourceConfigRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'resourceKeys':
          result.resourceKeys.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.ResourceKey)],
            ),
          ) as _i4.BuiltList<_i3.ResourceKey>));
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
    final payload = (object as BatchGetResourceConfigRequest);
    final result = <Object?>[
      'resourceKeys',
      serializers.serialize(
        payload.resourceKeys,
        specifiedType: const FullType(
          _i4.BuiltList,
          [FullType(_i3.ResourceKey)],
        ),
      ),
    ];
    return result;
  }
}
