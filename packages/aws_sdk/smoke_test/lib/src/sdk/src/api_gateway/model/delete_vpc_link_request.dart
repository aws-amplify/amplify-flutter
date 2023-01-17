// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.delete_vpc_link_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_vpc_link_request.g.dart';

/// Deletes an existing VpcLink of a specified identifier.
abstract class DeleteVpcLinkRequest
    with
        _i1.HttpInput<DeleteVpcLinkRequestPayload>,
        _i2.AWSEquatable<DeleteVpcLinkRequest>
    implements
        Built<DeleteVpcLinkRequest, DeleteVpcLinkRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteVpcLinkRequestPayload> {
  /// Deletes an existing VpcLink of a specified identifier.
  factory DeleteVpcLinkRequest({required String vpcLinkId}) {
    return _$DeleteVpcLinkRequest._(vpcLinkId: vpcLinkId);
  }

  /// Deletes an existing VpcLink of a specified identifier.
  factory DeleteVpcLinkRequest.build(
          [void Function(DeleteVpcLinkRequestBuilder) updates]) =
      _$DeleteVpcLinkRequest;

  const DeleteVpcLinkRequest._();

  factory DeleteVpcLinkRequest.fromRequest(
    DeleteVpcLinkRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteVpcLinkRequest.build((b) {
        if (labels['vpcLinkId'] != null) {
          b.vpcLinkId = labels['vpcLinkId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    DeleteVpcLinkRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteVpcLinkRequestBuilder b) {}

  /// The identifier of the VpcLink. It is used in an Integration to reference this VpcLink.
  String get vpcLinkId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'vpcLinkId':
        return vpcLinkId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  DeleteVpcLinkRequestPayload getPayload() => DeleteVpcLinkRequestPayload();
  @override
  List<Object?> get props => [vpcLinkId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteVpcLinkRequest');
    helper.add(
      'vpcLinkId',
      vpcLinkId,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteVpcLinkRequestPayload
    with _i2.AWSEquatable<DeleteVpcLinkRequestPayload>
    implements
        Built<DeleteVpcLinkRequestPayload, DeleteVpcLinkRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteVpcLinkRequestPayload(
          [void Function(DeleteVpcLinkRequestPayloadBuilder) updates]) =
      _$DeleteVpcLinkRequestPayload;

  const DeleteVpcLinkRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteVpcLinkRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteVpcLinkRequestPayload');
    return helper.toString();
  }
}

class DeleteVpcLinkRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<DeleteVpcLinkRequestPayload> {
  const DeleteVpcLinkRequestRestJson1Serializer()
      : super('DeleteVpcLinkRequest');

  @override
  Iterable<Type> get types => const [
        DeleteVpcLinkRequest,
        _$DeleteVpcLinkRequest,
        DeleteVpcLinkRequestPayload,
        _$DeleteVpcLinkRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DeleteVpcLinkRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteVpcLinkRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
