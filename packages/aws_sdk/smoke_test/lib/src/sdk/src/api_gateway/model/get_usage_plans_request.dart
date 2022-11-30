// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_usage_plans_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_usage_plans_request.g.dart';

/// The GET request to get all the usage plans of the caller's account.
abstract class GetUsagePlansRequest
    with
        _i1.HttpInput<GetUsagePlansRequestPayload>,
        _i2.AWSEquatable<GetUsagePlansRequest>
    implements
        Built<GetUsagePlansRequest, GetUsagePlansRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetUsagePlansRequestPayload> {
  /// The GET request to get all the usage plans of the caller's account.
  factory GetUsagePlansRequest({
    String? keyId,
    int? limit,
    String? position,
  }) {
    return _$GetUsagePlansRequest._(
      keyId: keyId,
      limit: limit,
      position: position,
    );
  }

  /// The GET request to get all the usage plans of the caller's account.
  factory GetUsagePlansRequest.build(
          [void Function(GetUsagePlansRequestBuilder) updates]) =
      _$GetUsagePlansRequest;

  const GetUsagePlansRequest._();

  factory GetUsagePlansRequest.fromRequest(
    GetUsagePlansRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetUsagePlansRequest.build((b) {
        if (request.queryParameters['position'] != null) {
          b.position = request.queryParameters['position']!;
        }
        if (request.queryParameters['keyId'] != null) {
          b.keyId = request.queryParameters['keyId']!;
        }
        if (request.queryParameters['limit'] != null) {
          b.limit = int.parse(request.queryParameters['limit']!);
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetUsagePlansRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetUsagePlansRequestBuilder b) {}

  /// The identifier of the API key associated with the usage plans.
  String? get keyId;

  /// The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
  int? get limit;

  /// The current pagination position in the paged result set.
  String? get position;
  @override
  GetUsagePlansRequestPayload getPayload() => GetUsagePlansRequestPayload();
  @override
  List<Object?> get props => [
        keyId,
        limit,
        position,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetUsagePlansRequest');
    helper.add(
      'keyId',
      keyId,
    );
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'position',
      position,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetUsagePlansRequestPayload
    with _i2.AWSEquatable<GetUsagePlansRequestPayload>
    implements
        Built<GetUsagePlansRequestPayload, GetUsagePlansRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetUsagePlansRequestPayload(
          [void Function(GetUsagePlansRequestPayloadBuilder) updates]) =
      _$GetUsagePlansRequestPayload;

  const GetUsagePlansRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetUsagePlansRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetUsagePlansRequestPayload');
    return helper.toString();
  }
}

class GetUsagePlansRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetUsagePlansRequestPayload> {
  const GetUsagePlansRequestRestJson1Serializer()
      : super('GetUsagePlansRequest');

  @override
  Iterable<Type> get types => const [
        GetUsagePlansRequest,
        _$GetUsagePlansRequest,
        GetUsagePlansRequestPayload,
        _$GetUsagePlansRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetUsagePlansRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetUsagePlansRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
