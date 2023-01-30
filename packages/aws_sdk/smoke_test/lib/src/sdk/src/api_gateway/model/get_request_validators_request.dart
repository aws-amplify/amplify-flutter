// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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
    int? limit,
    String? position,
    required String restApiId,
  }) {
    return _$GetRequestValidatorsRequest._(
      limit: limit,
      position: position,
      restApiId: restApiId,
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

  static const List<_i1.SmithySerializer> serializers = [
    GetRequestValidatorsRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetRequestValidatorsRequestBuilder b) {}

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
  GetRequestValidatorsRequestPayload getPayload() =>
      GetRequestValidatorsRequestPayload();
  @override
  List<Object?> get props => [
        limit,
        position,
        restApiId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetRequestValidatorsRequest');
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
