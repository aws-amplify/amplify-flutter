// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_client_certificate_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_client_certificate_request.g.dart';

/// A request to get information about the current ClientCertificate resource.
abstract class GetClientCertificateRequest
    with
        _i1.HttpInput<GetClientCertificateRequestPayload>,
        _i2.AWSEquatable<GetClientCertificateRequest>
    implements
        Built<GetClientCertificateRequest, GetClientCertificateRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetClientCertificateRequestPayload> {
  /// A request to get information about the current ClientCertificate resource.
  factory GetClientCertificateRequest({required String clientCertificateId}) {
    return _$GetClientCertificateRequest._(
        clientCertificateId: clientCertificateId);
  }

  /// A request to get information about the current ClientCertificate resource.
  factory GetClientCertificateRequest.build(
          [void Function(GetClientCertificateRequestBuilder) updates]) =
      _$GetClientCertificateRequest;

  const GetClientCertificateRequest._();

  factory GetClientCertificateRequest.fromRequest(
    GetClientCertificateRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetClientCertificateRequest.build((b) {
        if (labels['clientCertificateId'] != null) {
          b.clientCertificateId = labels['clientCertificateId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetClientCertificateRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetClientCertificateRequestBuilder b) {}

  /// The identifier of the ClientCertificate resource to be described.
  String get clientCertificateId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'clientCertificateId':
        return clientCertificateId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetClientCertificateRequestPayload getPayload() =>
      GetClientCertificateRequestPayload();
  @override
  List<Object?> get props => [clientCertificateId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetClientCertificateRequest');
    helper.add(
      'clientCertificateId',
      clientCertificateId,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetClientCertificateRequestPayload
    with
        _i2.AWSEquatable<GetClientCertificateRequestPayload>
    implements
        Built<GetClientCertificateRequestPayload,
            GetClientCertificateRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetClientCertificateRequestPayload(
          [void Function(GetClientCertificateRequestPayloadBuilder) updates]) =
      _$GetClientCertificateRequestPayload;

  const GetClientCertificateRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetClientCertificateRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetClientCertificateRequestPayload');
    return helper.toString();
  }
}

class GetClientCertificateRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetClientCertificateRequestPayload> {
  const GetClientCertificateRequestRestJson1Serializer()
      : super('GetClientCertificateRequest');

  @override
  Iterable<Type> get types => const [
        GetClientCertificateRequest,
        _$GetClientCertificateRequest,
        GetClientCertificateRequestPayload,
        _$GetClientCertificateRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetClientCertificateRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetClientCertificateRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
