// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.update_vpc_link_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart'
    as _i3;

part 'update_vpc_link_request.g.dart';

/// Updates an existing VpcLink of a specified identifier.
abstract class UpdateVpcLinkRequest
    with
        _i1.HttpInput<UpdateVpcLinkRequestPayload>,
        _i2.AWSEquatable<UpdateVpcLinkRequest>
    implements
        Built<UpdateVpcLinkRequest, UpdateVpcLinkRequestBuilder>,
        _i1.HasPayload<UpdateVpcLinkRequestPayload> {
  /// Updates an existing VpcLink of a specified identifier.
  factory UpdateVpcLinkRequest({
    List<_i3.PatchOperation>? patchOperations,
    required String vpcLinkId,
  }) {
    return _$UpdateVpcLinkRequest._(
      patchOperations:
          patchOperations == null ? null : _i4.BuiltList(patchOperations),
      vpcLinkId: vpcLinkId,
    );
  }

  /// Updates an existing VpcLink of a specified identifier.
  factory UpdateVpcLinkRequest.build(
          [void Function(UpdateVpcLinkRequestBuilder) updates]) =
      _$UpdateVpcLinkRequest;

  const UpdateVpcLinkRequest._();

  factory UpdateVpcLinkRequest.fromRequest(
    UpdateVpcLinkRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UpdateVpcLinkRequest.build((b) {
        if (payload.patchOperations != null) {
          b.patchOperations.replace(payload.patchOperations!);
        }
        if (labels['vpcLinkId'] != null) {
          b.vpcLinkId = labels['vpcLinkId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    UpdateVpcLinkRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateVpcLinkRequestBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;

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
  UpdateVpcLinkRequestPayload getPayload() => UpdateVpcLinkRequestPayload((b) {
        if (patchOperations != null) {
          b.patchOperations.replace(patchOperations!);
        }
      });
  @override
  List<Object?> get props => [
        patchOperations,
        vpcLinkId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateVpcLinkRequest');
    helper.add(
      'patchOperations',
      patchOperations,
    );
    helper.add(
      'vpcLinkId',
      vpcLinkId,
    );
    return helper.toString();
  }
}

@_i5.internal
abstract class UpdateVpcLinkRequestPayload
    with _i2.AWSEquatable<UpdateVpcLinkRequestPayload>
    implements
        Built<UpdateVpcLinkRequestPayload, UpdateVpcLinkRequestPayloadBuilder> {
  factory UpdateVpcLinkRequestPayload(
          [void Function(UpdateVpcLinkRequestPayloadBuilder) updates]) =
      _$UpdateVpcLinkRequestPayload;

  const UpdateVpcLinkRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateVpcLinkRequestPayloadBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  List<Object?> get props => [patchOperations];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateVpcLinkRequestPayload');
    helper.add(
      'patchOperations',
      patchOperations,
    );
    return helper.toString();
  }
}

class UpdateVpcLinkRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<UpdateVpcLinkRequestPayload> {
  const UpdateVpcLinkRequestRestJson1Serializer()
      : super('UpdateVpcLinkRequest');

  @override
  Iterable<Type> get types => const [
        UpdateVpcLinkRequest,
        _$UpdateVpcLinkRequest,
        UpdateVpcLinkRequestPayload,
        _$UpdateVpcLinkRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UpdateVpcLinkRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateVpcLinkRequestPayloadBuilder();
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
    final payload = object is UpdateVpcLinkRequest
        ? object.getPayload()
        : (object as UpdateVpcLinkRequestPayload);
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
