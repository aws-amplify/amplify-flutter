// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.delete_client_certificate_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_client_certificate_request.g.dart';

/// A request to delete the ClientCertificate resource.
abstract class DeleteClientCertificateRequest
    with
        _i1.HttpInput<DeleteClientCertificateRequestPayload>,
        _i2.AWSEquatable<DeleteClientCertificateRequest>
    implements
        Built<DeleteClientCertificateRequest,
            DeleteClientCertificateRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteClientCertificateRequestPayload> {
  /// A request to delete the ClientCertificate resource.
  factory DeleteClientCertificateRequest(
      {required String clientCertificateId}) {
    return _$DeleteClientCertificateRequest._(
        clientCertificateId: clientCertificateId);
  }

  /// A request to delete the ClientCertificate resource.
  factory DeleteClientCertificateRequest.build(
          [void Function(DeleteClientCertificateRequestBuilder) updates]) =
      _$DeleteClientCertificateRequest;

  const DeleteClientCertificateRequest._();

  factory DeleteClientCertificateRequest.fromRequest(
    DeleteClientCertificateRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteClientCertificateRequest.build((b) {
        if (labels['clientCertificateId'] != null) {
          b.clientCertificateId = labels['clientCertificateId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    DeleteClientCertificateRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteClientCertificateRequestBuilder b) {}

  /// The identifier of the ClientCertificate resource to be deleted.
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
  DeleteClientCertificateRequestPayload getPayload() =>
      DeleteClientCertificateRequestPayload();
  @override
  List<Object?> get props => [clientCertificateId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteClientCertificateRequest');
    helper.add(
      'clientCertificateId',
      clientCertificateId,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteClientCertificateRequestPayload
    with
        _i2.AWSEquatable<DeleteClientCertificateRequestPayload>
    implements
        Built<DeleteClientCertificateRequestPayload,
            DeleteClientCertificateRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteClientCertificateRequestPayload(
      [void Function(DeleteClientCertificateRequestPayloadBuilder)
          updates]) = _$DeleteClientCertificateRequestPayload;

  const DeleteClientCertificateRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteClientCertificateRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteClientCertificateRequestPayload');
    return helper.toString();
  }
}

class DeleteClientCertificateRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<DeleteClientCertificateRequestPayload> {
  const DeleteClientCertificateRequestRestJson1Serializer()
      : super('DeleteClientCertificateRequest');

  @override
  Iterable<Type> get types => const [
        DeleteClientCertificateRequest,
        _$DeleteClientCertificateRequest,
        DeleteClientCertificateRequestPayload,
        _$DeleteClientCertificateRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DeleteClientCertificateRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteClientCertificateRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
