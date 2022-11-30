// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_models_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_models_request.g.dart';

/// Request to list existing Models defined for a RestApi resource.
abstract class GetModelsRequest
    with
        _i1.HttpInput<GetModelsRequestPayload>,
        _i2.AWSEquatable<GetModelsRequest>
    implements
        Built<GetModelsRequest, GetModelsRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetModelsRequestPayload> {
  /// Request to list existing Models defined for a RestApi resource.
  factory GetModelsRequest({
    int? limit,
    String? position,
    required String restApiId,
  }) {
    return _$GetModelsRequest._(
      limit: limit,
      position: position,
      restApiId: restApiId,
    );
  }

  /// Request to list existing Models defined for a RestApi resource.
  factory GetModelsRequest.build(
      [void Function(GetModelsRequestBuilder) updates]) = _$GetModelsRequest;

  const GetModelsRequest._();

  factory GetModelsRequest.fromRequest(
    GetModelsRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetModelsRequest.build((b) {
        if (request.queryParameters['position'] != null) {
          b.position = request.queryParameters['position']!;
        }
        if (request.queryParameters['limit'] != null) {
          b.limit = int.parse(request.queryParameters['limit']!);
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetModelsRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetModelsRequestBuilder b) {}

  /// The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
  int? get limit;

  /// The current pagination position in the paged result set.
  String? get position;

  /// The string identifier of the associated RestApi.
  String get restApiId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetModelsRequestPayload getPayload() => GetModelsRequestPayload();
  @override
  List<Object?> get props => [
        limit,
        position,
        restApiId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetModelsRequest');
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'position',
      position,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetModelsRequestPayload
    with _i2.AWSEquatable<GetModelsRequestPayload>
    implements
        Built<GetModelsRequestPayload, GetModelsRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetModelsRequestPayload(
          [void Function(GetModelsRequestPayloadBuilder) updates]) =
      _$GetModelsRequestPayload;

  const GetModelsRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetModelsRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetModelsRequestPayload');
    return helper.toString();
  }
}

class GetModelsRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetModelsRequestPayload> {
  const GetModelsRequestRestJson1Serializer() : super('GetModelsRequest');

  @override
  Iterable<Type> get types => const [
        GetModelsRequest,
        _$GetModelsRequest,
        GetModelsRequestPayload,
        _$GetModelsRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetModelsRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetModelsRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
