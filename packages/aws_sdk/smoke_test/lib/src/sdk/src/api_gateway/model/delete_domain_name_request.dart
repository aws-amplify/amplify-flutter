// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.delete_domain_name_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_domain_name_request.g.dart';

/// A request to delete the DomainName resource.
abstract class DeleteDomainNameRequest
    with
        _i1.HttpInput<DeleteDomainNameRequestPayload>,
        _i2.AWSEquatable<DeleteDomainNameRequest>
    implements
        Built<DeleteDomainNameRequest, DeleteDomainNameRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteDomainNameRequestPayload> {
  /// A request to delete the DomainName resource.
  factory DeleteDomainNameRequest({required String domainName}) {
    return _$DeleteDomainNameRequest._(domainName: domainName);
  }

  /// A request to delete the DomainName resource.
  factory DeleteDomainNameRequest.build(
          [void Function(DeleteDomainNameRequestBuilder) updates]) =
      _$DeleteDomainNameRequest;

  const DeleteDomainNameRequest._();

  factory DeleteDomainNameRequest.fromRequest(
    DeleteDomainNameRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteDomainNameRequest.build((b) {
        if (labels['domainName'] != null) {
          b.domainName = labels['domainName']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    DeleteDomainNameRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteDomainNameRequestBuilder b) {}

  /// The name of the DomainName resource to be deleted.
  String get domainName;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'domainName':
        return domainName;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  DeleteDomainNameRequestPayload getPayload() =>
      DeleteDomainNameRequestPayload();
  @override
  List<Object?> get props => [domainName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteDomainNameRequest');
    helper.add(
      'domainName',
      domainName,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteDomainNameRequestPayload
    with
        _i2.AWSEquatable<DeleteDomainNameRequestPayload>
    implements
        Built<DeleteDomainNameRequestPayload,
            DeleteDomainNameRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteDomainNameRequestPayload(
          [void Function(DeleteDomainNameRequestPayloadBuilder) updates]) =
      _$DeleteDomainNameRequestPayload;

  const DeleteDomainNameRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteDomainNameRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteDomainNameRequestPayload');
    return helper.toString();
  }
}

class DeleteDomainNameRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<DeleteDomainNameRequestPayload> {
  const DeleteDomainNameRequestRestJson1Serializer()
      : super('DeleteDomainNameRequest');

  @override
  Iterable<Type> get types => const [
        DeleteDomainNameRequest,
        _$DeleteDomainNameRequest,
        DeleteDomainNameRequestPayload,
        _$DeleteDomainNameRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DeleteDomainNameRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteDomainNameRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
