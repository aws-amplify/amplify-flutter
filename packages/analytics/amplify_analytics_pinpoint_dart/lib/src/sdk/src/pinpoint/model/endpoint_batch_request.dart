// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_analytics_pinpoint_dart.pinpoint.model.endpoint_batch_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_batch_item.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'endpoint_batch_request.g.dart';

/// Specifies a batch of endpoints to create or update and the settings and attributes to set or change for each endpoint.
abstract class EndpointBatchRequest
    with _i1.AWSEquatable<EndpointBatchRequest>
    implements Built<EndpointBatchRequest, EndpointBatchRequestBuilder> {
  /// Specifies a batch of endpoints to create or update and the settings and attributes to set or change for each endpoint.
  factory EndpointBatchRequest({required List<EndpointBatchItem> item}) {
    return _$EndpointBatchRequest._(item: _i2.BuiltList(item));
  }

  /// Specifies a batch of endpoints to create or update and the settings and attributes to set or change for each endpoint.
  factory EndpointBatchRequest.build(
          [void Function(EndpointBatchRequestBuilder) updates]) =
      _$EndpointBatchRequest;

  const EndpointBatchRequest._();

  static const List<_i3.SmithySerializer<EndpointBatchRequest>> serializers = [
    EndpointBatchRequestRestJson1Serializer()
  ];

  /// An array that defines the endpoints to create or update and, for each endpoint, the property values to set or change. An array can contain a maximum of 100 items.
  _i2.BuiltList<EndpointBatchItem> get item;
  @override
  List<Object?> get props => [item];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EndpointBatchRequest')
      ..add(
        'item',
        item,
      );
    return helper.toString();
  }
}

class EndpointBatchRequestRestJson1Serializer
    extends _i3.StructuredSmithySerializer<EndpointBatchRequest> {
  const EndpointBatchRequestRestJson1Serializer()
      : super('EndpointBatchRequest');

  @override
  Iterable<Type> get types => const [
        EndpointBatchRequest,
        _$EndpointBatchRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  EndpointBatchRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EndpointBatchRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Item':
          result.item.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(EndpointBatchItem)],
            ),
          ) as _i2.BuiltList<EndpointBatchItem>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EndpointBatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final EndpointBatchRequest(:item) = object;
    result$.addAll([
      'Item',
      serializers.serialize(
        item,
        specifiedType: const FullType(
          _i2.BuiltList,
          [FullType(EndpointBatchItem)],
        ),
      ),
    ]);
    return result$;
  }
}
