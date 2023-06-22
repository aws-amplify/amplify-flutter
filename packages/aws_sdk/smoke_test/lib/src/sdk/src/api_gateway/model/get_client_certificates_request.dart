// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.get_client_certificates_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_client_certificates_request.g.dart';

/// A request to get information about a collection of ClientCertificate resources.
abstract class GetClientCertificatesRequest
    with
        _i1.HttpInput<GetClientCertificatesRequestPayload>,
        _i2.AWSEquatable<GetClientCertificatesRequest>
    implements
        Built<GetClientCertificatesRequest,
            GetClientCertificatesRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetClientCertificatesRequestPayload> {
  /// A request to get information about a collection of ClientCertificate resources.
  factory GetClientCertificatesRequest({
    String? position,
    int? limit,
  }) {
    return _$GetClientCertificatesRequest._(
      position: position,
      limit: limit,
    );
  }

  /// A request to get information about a collection of ClientCertificate resources.
  factory GetClientCertificatesRequest.build(
          [void Function(GetClientCertificatesRequestBuilder) updates]) =
      _$GetClientCertificatesRequest;

  const GetClientCertificatesRequest._();

  factory GetClientCertificatesRequest.fromRequest(
    GetClientCertificatesRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetClientCertificatesRequest.build((b) {
        if (request.queryParameters['position'] != null) {
          b.position = request.queryParameters['position']!;
        }
        if (request.queryParameters['limit'] != null) {
          b.limit = int.parse(request.queryParameters['limit']!);
        }
      });

  static const List<_i1.SmithySerializer<GetClientCertificatesRequestPayload>>
      serializers = [GetClientCertificatesRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetClientCertificatesRequestBuilder b) {}

  /// The current pagination position in the paged result set.
  String? get position;

  /// The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
  int? get limit;
  @override
  GetClientCertificatesRequestPayload getPayload() =>
      GetClientCertificatesRequestPayload();
  @override
  List<Object?> get props => [
        position,
        limit,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetClientCertificatesRequest')
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
abstract class GetClientCertificatesRequestPayload
    with
        _i2.AWSEquatable<GetClientCertificatesRequestPayload>
    implements
        Built<GetClientCertificatesRequestPayload,
            GetClientCertificatesRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetClientCertificatesRequestPayload(
          [void Function(GetClientCertificatesRequestPayloadBuilder) updates]) =
      _$GetClientCertificatesRequestPayload;

  const GetClientCertificatesRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetClientCertificatesRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetClientCertificatesRequestPayload');
    return helper.toString();
  }
}

class GetClientCertificatesRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<GetClientCertificatesRequestPayload> {
  const GetClientCertificatesRequestRestJson1Serializer()
      : super('GetClientCertificatesRequest');

  @override
  Iterable<Type> get types => const [
        GetClientCertificatesRequest,
        _$GetClientCertificatesRequest,
        GetClientCertificatesRequestPayload,
        _$GetClientCertificatesRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetClientCertificatesRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetClientCertificatesRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetClientCertificatesRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
