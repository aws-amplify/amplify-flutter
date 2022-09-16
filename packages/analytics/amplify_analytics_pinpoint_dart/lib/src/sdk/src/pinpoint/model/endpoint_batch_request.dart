// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.endpoint_batch_request;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_batch_item.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'endpoint_batch_request.g.dart';

/// Specifies a batch of endpoints to create or update and the settings and attributes to set or change for each endpoint.
abstract class EndpointBatchRequest
    with _i1.AWSEquatable<EndpointBatchRequest>
    implements Built<EndpointBatchRequest, EndpointBatchRequestBuilder> {
  /// Specifies a batch of endpoints to create or update and the settings and attributes to set or change for each endpoint.
  factory EndpointBatchRequest(
      {required _i2.BuiltList<_i3.EndpointBatchItem> item}) {
    return _$EndpointBatchRequest._(item: item);
  }

  /// Specifies a batch of endpoints to create or update and the settings and attributes to set or change for each endpoint.
  factory EndpointBatchRequest.build(
          [void Function(EndpointBatchRequestBuilder) updates]) =
      _$EndpointBatchRequest;

  const EndpointBatchRequest._();

  static const List<_i4.SmithySerializer> serializers = [
    _EndpointBatchRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EndpointBatchRequestBuilder b) {}

  /// An array that defines the endpoints to create or update and, for each endpoint, the property values to set or change. An array can contain a maximum of 100 items.
  _i2.BuiltList<_i3.EndpointBatchItem> get item;
  @override
  List<Object?> get props => [item];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EndpointBatchRequest');
    helper.add('item', item);
    return helper.toString();
  }
}

class _EndpointBatchRequestRestJson1Serializer
    extends _i4.StructuredSmithySerializer<EndpointBatchRequest> {
  const _EndpointBatchRequestRestJson1Serializer()
      : super('EndpointBatchRequest');

  @override
  Iterable<Type> get types =>
      const [EndpointBatchRequest, _$EndpointBatchRequest];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  EndpointBatchRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = EndpointBatchRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Item':
          result.item.replace((serializers.deserialize(value,
                  specifiedType: const FullType(
                      _i2.BuiltList, [FullType(_i3.EndpointBatchItem)]))
              as _i2.BuiltList<_i3.EndpointBatchItem>));
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as EndpointBatchRequest);
    final result = <Object?>[
      'Item',
      serializers.serialize(payload.item,
          specifiedType:
              const FullType(_i2.BuiltList, [FullType(_i3.EndpointBatchItem)]))
    ];
    return result;
  }
}
