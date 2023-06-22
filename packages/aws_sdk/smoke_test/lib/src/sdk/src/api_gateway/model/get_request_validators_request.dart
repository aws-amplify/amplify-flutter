// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.get_request_validators_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_request_validators_request.g.dart';

/// Gets the RequestValidators collection of a given RestApi.
abstract class GetRequestValidatorsRequest
    with
        _i1.HttpInput<GetRequestValidatorsRequestPayload>,
        _i2.AWSEquatable<GetRequestValidatorsRequest>
    implements
        Built<GetRequestValidatorsRequest, GetRequestValidatorsRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetRequestValidatorsRequestPayload> {
  /// Gets the RequestValidators collection of a given RestApi.
  factory GetRequestValidatorsRequest({
    required String restApiId,
    String? position,
    int? limit,
  }) {
    return _$GetRequestValidatorsRequest._(
      restApiId: restApiId,
      position: position,
      limit: limit,
    );
  }

  /// Gets the RequestValidators collection of a given RestApi.
  factory GetRequestValidatorsRequest.build(
          [void Function(GetRequestValidatorsRequestBuilder) updates]) =
      _$GetRequestValidatorsRequest;

  const GetRequestValidatorsRequest._();

  factory GetRequestValidatorsRequest.fromRequest(
    GetRequestValidatorsRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetRequestValidatorsRequest.build((b) {
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

  static const List<_i1.SmithySerializer<GetRequestValidatorsRequestPayload>>
      serializers = [GetRequestValidatorsRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetRequestValidatorsRequestBuilder b) {}

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
  GetRequestValidatorsRequestPayload getPayload() =>
      GetRequestValidatorsRequestPayload();
  @override
  List<Object?> get props => [
        restApiId,
        position,
        limit,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetRequestValidatorsRequest')
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
abstract class GetRequestValidatorsRequestPayload
    with
        _i2.AWSEquatable<GetRequestValidatorsRequestPayload>
    implements
        Built<GetRequestValidatorsRequestPayload,
            GetRequestValidatorsRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetRequestValidatorsRequestPayload(
          [void Function(GetRequestValidatorsRequestPayloadBuilder) updates]) =
      _$GetRequestValidatorsRequestPayload;

  const GetRequestValidatorsRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetRequestValidatorsRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetRequestValidatorsRequestPayload');
    return helper.toString();
  }
}

class GetRequestValidatorsRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetRequestValidatorsRequestPayload> {
  const GetRequestValidatorsRequestRestJson1Serializer()
      : super('GetRequestValidatorsRequest');

  @override
  Iterable<Type> get types => const [
        GetRequestValidatorsRequest,
        _$GetRequestValidatorsRequest,
        GetRequestValidatorsRequestPayload,
        _$GetRequestValidatorsRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetRequestValidatorsRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetRequestValidatorsRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetRequestValidatorsRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
