// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_usage_plan_keys_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_usage_plan_keys_request.g.dart';

/// The GET request to get all the usage plan keys representing the API keys added to a specified usage plan.
abstract class GetUsagePlanKeysRequest
    with
        _i1.HttpInput<GetUsagePlanKeysRequestPayload>,
        _i2.AWSEquatable<GetUsagePlanKeysRequest>
    implements
        Built<GetUsagePlanKeysRequest, GetUsagePlanKeysRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetUsagePlanKeysRequestPayload> {
  /// The GET request to get all the usage plan keys representing the API keys added to a specified usage plan.
  factory GetUsagePlanKeysRequest({
    int? limit,
    String? nameQuery,
    String? position,
    required String usagePlanId,
  }) {
    return _$GetUsagePlanKeysRequest._(
      limit: limit,
      nameQuery: nameQuery,
      position: position,
      usagePlanId: usagePlanId,
    );
  }

  /// The GET request to get all the usage plan keys representing the API keys added to a specified usage plan.
  factory GetUsagePlanKeysRequest.build(
          [void Function(GetUsagePlanKeysRequestBuilder) updates]) =
      _$GetUsagePlanKeysRequest;

  const GetUsagePlanKeysRequest._();

  factory GetUsagePlanKeysRequest.fromRequest(
    GetUsagePlanKeysRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetUsagePlanKeysRequest.build((b) {
        if (request.queryParameters['position'] != null) {
          b.position = request.queryParameters['position']!;
        }
        if (request.queryParameters['limit'] != null) {
          b.limit = int.parse(request.queryParameters['limit']!);
        }
        if (request.queryParameters['name'] != null) {
          b.nameQuery = request.queryParameters['name']!;
        }
        if (labels['usagePlanId'] != null) {
          b.usagePlanId = labels['usagePlanId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetUsagePlanKeysRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetUsagePlanKeysRequestBuilder b) {}

  /// The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
  int? get limit;

  /// A query parameter specifying the name of the to-be-returned usage plan keys.
  String? get nameQuery;

  /// The current pagination position in the paged result set.
  String? get position;

  /// The Id of the UsagePlan resource representing the usage plan containing the to-be-retrieved UsagePlanKey resource representing a plan customer.
  String get usagePlanId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'usagePlanId':
        return usagePlanId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetUsagePlanKeysRequestPayload getPayload() =>
      GetUsagePlanKeysRequestPayload();
  @override
  List<Object?> get props => [
        limit,
        nameQuery,
        position,
        usagePlanId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetUsagePlanKeysRequest');
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
    helper.add(
      'usagePlanId',
      usagePlanId,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetUsagePlanKeysRequestPayload
    with
        _i2.AWSEquatable<GetUsagePlanKeysRequestPayload>
    implements
        Built<GetUsagePlanKeysRequestPayload,
            GetUsagePlanKeysRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetUsagePlanKeysRequestPayload(
          [void Function(GetUsagePlanKeysRequestPayloadBuilder) updates]) =
      _$GetUsagePlanKeysRequestPayload;

  const GetUsagePlanKeysRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetUsagePlanKeysRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetUsagePlanKeysRequestPayload');
    return helper.toString();
  }
}

class GetUsagePlanKeysRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetUsagePlanKeysRequestPayload> {
  const GetUsagePlanKeysRequestRestJson1Serializer()
      : super('GetUsagePlanKeysRequest');

  @override
  Iterable<Type> get types => const [
        GetUsagePlanKeysRequest,
        _$GetUsagePlanKeysRequest,
        GetUsagePlanKeysRequestPayload,
        _$GetUsagePlanKeysRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetUsagePlanKeysRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetUsagePlanKeysRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
