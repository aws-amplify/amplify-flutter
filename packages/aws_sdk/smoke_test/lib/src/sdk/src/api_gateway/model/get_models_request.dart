// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required String restApiId,
    String? position,
    int? limit,
  }) {
    return _$GetModelsRequest._(
      restApiId: restApiId,
      position: position,
      limit: limit,
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

  static const List<_i1.SmithySerializer<GetModelsRequestPayload>> serializers =
      [GetModelsRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetModelsRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The current pagination position in the paged result set.
  String? get position;

  /// The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
  int? get limit;
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
        restApiId,
        position,
        limit,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetModelsRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'position',
        position,
      )
      ..add(
        'limit',
        limit,
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
    GetModelsRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
