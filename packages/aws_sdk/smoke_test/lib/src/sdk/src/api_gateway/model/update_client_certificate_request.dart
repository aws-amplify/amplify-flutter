// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.update_client_certificate_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart'
    as _i3;

part 'update_client_certificate_request.g.dart';

/// A request to change information about an ClientCertificate resource.
abstract class UpdateClientCertificateRequest
    with
        _i1.HttpInput<UpdateClientCertificateRequestPayload>,
        _i2.AWSEquatable<UpdateClientCertificateRequest>
    implements
        Built<UpdateClientCertificateRequest,
            UpdateClientCertificateRequestBuilder>,
        _i1.HasPayload<UpdateClientCertificateRequestPayload> {
  /// A request to change information about an ClientCertificate resource.
  factory UpdateClientCertificateRequest({
    required String clientCertificateId,
    List<_i3.PatchOperation>? patchOperations,
  }) {
    return _$UpdateClientCertificateRequest._(
      clientCertificateId: clientCertificateId,
      patchOperations:
          patchOperations == null ? null : _i4.BuiltList(patchOperations),
    );
  }

  /// A request to change information about an ClientCertificate resource.
  factory UpdateClientCertificateRequest.build(
          [void Function(UpdateClientCertificateRequestBuilder) updates]) =
      _$UpdateClientCertificateRequest;

  const UpdateClientCertificateRequest._();

  factory UpdateClientCertificateRequest.fromRequest(
    UpdateClientCertificateRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UpdateClientCertificateRequest.build((b) {
        if (payload.patchOperations != null) {
          b.patchOperations.replace(payload.patchOperations!);
        }
        if (labels['clientCertificateId'] != null) {
          b.clientCertificateId = labels['clientCertificateId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    UpdateClientCertificateRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateClientCertificateRequestBuilder b) {}

  /// The identifier of the ClientCertificate resource to be updated.
  String get clientCertificateId;

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
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
  UpdateClientCertificateRequestPayload getPayload() =>
      UpdateClientCertificateRequestPayload((b) {
        if (patchOperations != null) {
          b.patchOperations.replace(patchOperations!);
        }
      });
  @override
  List<Object?> get props => [
        clientCertificateId,
        patchOperations,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateClientCertificateRequest');
    helper.add(
      'clientCertificateId',
      clientCertificateId,
    );
    helper.add(
      'patchOperations',
      patchOperations,
    );
    return helper.toString();
  }
}

@_i5.internal
abstract class UpdateClientCertificateRequestPayload
    with
        _i2.AWSEquatable<UpdateClientCertificateRequestPayload>
    implements
        Built<UpdateClientCertificateRequestPayload,
            UpdateClientCertificateRequestPayloadBuilder> {
  factory UpdateClientCertificateRequestPayload(
      [void Function(UpdateClientCertificateRequestPayloadBuilder)
          updates]) = _$UpdateClientCertificateRequestPayload;

  const UpdateClientCertificateRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateClientCertificateRequestPayloadBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  List<Object?> get props => [patchOperations];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateClientCertificateRequestPayload');
    helper.add(
      'patchOperations',
      patchOperations,
    );
    return helper.toString();
  }
}

class UpdateClientCertificateRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<UpdateClientCertificateRequestPayload> {
  const UpdateClientCertificateRequestRestJson1Serializer()
      : super('UpdateClientCertificateRequest');

  @override
  Iterable<Type> get types => const [
        UpdateClientCertificateRequest,
        _$UpdateClientCertificateRequest,
        UpdateClientCertificateRequestPayload,
        _$UpdateClientCertificateRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UpdateClientCertificateRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateClientCertificateRequestPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'patchOperations':
          if (value != null) {
            result.patchOperations.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.PatchOperation)],
              ),
            ) as _i4.BuiltList<_i3.PatchOperation>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is UpdateClientCertificateRequest
        ? object.getPayload()
        : (object as UpdateClientCertificateRequestPayload);
    final result = <Object?>[];
    if (payload.patchOperations != null) {
      result
        ..add('patchOperations')
        ..add(serializers.serialize(
          payload.patchOperations!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.PatchOperation)],
          ),
        ));
    }
    return result;
  }
}
