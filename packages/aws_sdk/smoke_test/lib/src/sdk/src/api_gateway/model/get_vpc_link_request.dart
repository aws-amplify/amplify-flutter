// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_vpc_link_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_vpc_link_request.g.dart';

/// Gets a specified VPC link under the caller's account in a region.
abstract class GetVpcLinkRequest
    with
        _i1.HttpInput<GetVpcLinkRequestPayload>,
        _i2.AWSEquatable<GetVpcLinkRequest>
    implements
        Built<GetVpcLinkRequest, GetVpcLinkRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetVpcLinkRequestPayload> {
  /// Gets a specified VPC link under the caller's account in a region.
  factory GetVpcLinkRequest({required String vpcLinkId}) {
    return _$GetVpcLinkRequest._(vpcLinkId: vpcLinkId);
  }

  /// Gets a specified VPC link under the caller's account in a region.
  factory GetVpcLinkRequest.build(
      [void Function(GetVpcLinkRequestBuilder) updates]) = _$GetVpcLinkRequest;

  const GetVpcLinkRequest._();

  factory GetVpcLinkRequest.fromRequest(
    GetVpcLinkRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetVpcLinkRequest.build((b) {
        if (labels['vpcLinkId'] != null) {
          b.vpcLinkId = labels['vpcLinkId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetVpcLinkRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetVpcLinkRequestBuilder b) {}

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
  GetVpcLinkRequestPayload getPayload() => GetVpcLinkRequestPayload();
  @override
  List<Object?> get props => [vpcLinkId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetVpcLinkRequest');
    helper.add(
      'vpcLinkId',
      vpcLinkId,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetVpcLinkRequestPayload
    with _i2.AWSEquatable<GetVpcLinkRequestPayload>
    implements
        Built<GetVpcLinkRequestPayload, GetVpcLinkRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetVpcLinkRequestPayload(
          [void Function(GetVpcLinkRequestPayloadBuilder) updates]) =
      _$GetVpcLinkRequestPayload;

  const GetVpcLinkRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetVpcLinkRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetVpcLinkRequestPayload');
    return helper.toString();
  }
}

class GetVpcLinkRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetVpcLinkRequestPayload> {
  const GetVpcLinkRequestRestJson1Serializer() : super('GetVpcLinkRequest');

  @override
  Iterable<Type> get types => const [
        GetVpcLinkRequest,
        _$GetVpcLinkRequest,
        GetVpcLinkRequestPayload,
        _$GetVpcLinkRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetVpcLinkRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetVpcLinkRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
