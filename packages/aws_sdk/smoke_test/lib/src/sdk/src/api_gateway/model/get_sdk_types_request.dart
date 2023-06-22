// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.get_sdk_types_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_sdk_types_request.g.dart';

/// Get the SdkTypes collection.
abstract class GetSdkTypesRequest
    with
        _i1.HttpInput<GetSdkTypesRequestPayload>,
        _i2.AWSEquatable<GetSdkTypesRequest>
    implements
        Built<GetSdkTypesRequest, GetSdkTypesRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetSdkTypesRequestPayload> {
  /// Get the SdkTypes collection.
  factory GetSdkTypesRequest({
    String? position,
    int? limit,
  }) {
    return _$GetSdkTypesRequest._(
      position: position,
      limit: limit,
    );
  }

  /// Get the SdkTypes collection.
  factory GetSdkTypesRequest.build(
          [void Function(GetSdkTypesRequestBuilder) updates]) =
      _$GetSdkTypesRequest;

  const GetSdkTypesRequest._();

  factory GetSdkTypesRequest.fromRequest(
    GetSdkTypesRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetSdkTypesRequest.build((b) {
        if (request.queryParameters['position'] != null) {
          b.position = request.queryParameters['position']!;
        }
        if (request.queryParameters['limit'] != null) {
          b.limit = int.parse(request.queryParameters['limit']!);
        }
      });

  static const List<_i1.SmithySerializer<GetSdkTypesRequestPayload>>
      serializers = [GetSdkTypesRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetSdkTypesRequestBuilder b) {}

  /// The current pagination position in the paged result set.
  String? get position;

  /// The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
  int? get limit;
  @override
  GetSdkTypesRequestPayload getPayload() => GetSdkTypesRequestPayload();
  @override
  List<Object?> get props => [
        position,
        limit,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetSdkTypesRequest')
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
abstract class GetSdkTypesRequestPayload
    with _i2.AWSEquatable<GetSdkTypesRequestPayload>
    implements
        Built<GetSdkTypesRequestPayload, GetSdkTypesRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetSdkTypesRequestPayload(
          [void Function(GetSdkTypesRequestPayloadBuilder) updates]) =
      _$GetSdkTypesRequestPayload;

  const GetSdkTypesRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetSdkTypesRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetSdkTypesRequestPayload');
    return helper.toString();
  }
}

class GetSdkTypesRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetSdkTypesRequestPayload> {
  const GetSdkTypesRequestRestJson1Serializer() : super('GetSdkTypesRequest');

  @override
  Iterable<Type> get types => const [
        GetSdkTypesRequest,
        _$GetSdkTypesRequest,
        GetSdkTypesRequestPayload,
        _$GetSdkTypesRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetSdkTypesRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetSdkTypesRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetSdkTypesRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
