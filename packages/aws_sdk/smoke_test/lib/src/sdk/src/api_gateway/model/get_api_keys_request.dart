// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_api_keys_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_api_keys_request.g.dart';

/// A request to get information about the current ApiKeys resource.
abstract class GetApiKeysRequest
    with
        _i1.HttpInput<GetApiKeysRequestPayload>,
        _i2.AWSEquatable<GetApiKeysRequest>
    implements
        Built<GetApiKeysRequest, GetApiKeysRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetApiKeysRequestPayload> {
  /// A request to get information about the current ApiKeys resource.
  factory GetApiKeysRequest({
    String? customerId,
    bool? includeValues,
    int? limit,
    String? nameQuery,
    String? position,
  }) {
    return _$GetApiKeysRequest._(
      customerId: customerId,
      includeValues: includeValues,
      limit: limit,
      nameQuery: nameQuery,
      position: position,
    );
  }

  /// A request to get information about the current ApiKeys resource.
  factory GetApiKeysRequest.build(
      [void Function(GetApiKeysRequestBuilder) updates]) = _$GetApiKeysRequest;

  const GetApiKeysRequest._();

  factory GetApiKeysRequest.fromRequest(
    GetApiKeysRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetApiKeysRequest.build((b) {
        if (request.queryParameters['position'] != null) {
          b.position = request.queryParameters['position']!;
        }
        if (request.queryParameters['limit'] != null) {
          b.limit = int.parse(request.queryParameters['limit']!);
        }
        if (request.queryParameters['name'] != null) {
          b.nameQuery = request.queryParameters['name']!;
        }
        if (request.queryParameters['customerId'] != null) {
          b.customerId = request.queryParameters['customerId']!;
        }
        if (request.queryParameters['includeValues'] != null) {
          b.includeValues = request.queryParameters['includeValues']! == 'true';
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetApiKeysRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetApiKeysRequestBuilder b) {}

  /// The identifier of a customer in AWS Marketplace or an external system, such as a developer portal.
  String? get customerId;

  /// A boolean flag to specify whether (`true`) or not (`false`) the result contains key values.
  bool? get includeValues;

  /// The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
  int? get limit;

  /// The name of queried API keys.
  String? get nameQuery;

  /// The current pagination position in the paged result set.
  String? get position;
  @override
  GetApiKeysRequestPayload getPayload() => GetApiKeysRequestPayload();
  @override
  List<Object?> get props => [
        customerId,
        includeValues,
        limit,
        nameQuery,
        position,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetApiKeysRequest');
    helper.add(
      'customerId',
      customerId,
    );
    helper.add(
      'includeValues',
      includeValues,
    );
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'nameQuery',
      nameQuery,
    );
    helper.add(
      'position',
      position,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetApiKeysRequestPayload
    with _i2.AWSEquatable<GetApiKeysRequestPayload>
    implements
        Built<GetApiKeysRequestPayload, GetApiKeysRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetApiKeysRequestPayload(
          [void Function(GetApiKeysRequestPayloadBuilder) updates]) =
      _$GetApiKeysRequestPayload;

  const GetApiKeysRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetApiKeysRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetApiKeysRequestPayload');
    return helper.toString();
  }
}

class GetApiKeysRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetApiKeysRequestPayload> {
  const GetApiKeysRequestRestJson1Serializer() : super('GetApiKeysRequest');

  @override
  Iterable<Type> get types => const [
        GetApiKeysRequest,
        _$GetApiKeysRequest,
        GetApiKeysRequestPayload,
        _$GetApiKeysRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetApiKeysRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetApiKeysRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
