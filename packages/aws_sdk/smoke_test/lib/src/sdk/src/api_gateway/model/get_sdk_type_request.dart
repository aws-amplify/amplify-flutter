// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.get_sdk_type_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_sdk_type_request.g.dart';

/// Get an SdkType instance.
abstract class GetSdkTypeRequest
    with
        _i1.HttpInput<GetSdkTypeRequestPayload>,
        _i2.AWSEquatable<GetSdkTypeRequest>
    implements
        Built<GetSdkTypeRequest, GetSdkTypeRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetSdkTypeRequestPayload> {
  /// Get an SdkType instance.
  factory GetSdkTypeRequest({required String id}) {
    return _$GetSdkTypeRequest._(id: id);
  }

  /// Get an SdkType instance.
  factory GetSdkTypeRequest.build(
      [void Function(GetSdkTypeRequestBuilder) updates]) = _$GetSdkTypeRequest;

  const GetSdkTypeRequest._();

  factory GetSdkTypeRequest.fromRequest(
    GetSdkTypeRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetSdkTypeRequest.build((b) {
        if (labels['id'] != null) {
          b.id = labels['id']!;
        }
      });

  static const List<_i1.SmithySerializer<GetSdkTypeRequestPayload>>
      serializers = [GetSdkTypeRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetSdkTypeRequestBuilder b) {}

  /// The identifier of the queried SdkType instance.
  String get id;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'id':
        return id;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetSdkTypeRequestPayload getPayload() => GetSdkTypeRequestPayload();
  @override
  List<Object?> get props => [id];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetSdkTypeRequest')
      ..add(
        'id',
        id,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetSdkTypeRequestPayload
    with _i2.AWSEquatable<GetSdkTypeRequestPayload>
    implements
        Built<GetSdkTypeRequestPayload, GetSdkTypeRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetSdkTypeRequestPayload(
          [void Function(GetSdkTypeRequestPayloadBuilder) updates]) =
      _$GetSdkTypeRequestPayload;

  const GetSdkTypeRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetSdkTypeRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetSdkTypeRequestPayload');
    return helper.toString();
  }
}

class GetSdkTypeRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetSdkTypeRequestPayload> {
  const GetSdkTypeRequestRestJson1Serializer() : super('GetSdkTypeRequest');

  @override
  Iterable<Type> get types => const [
        GetSdkTypeRequest,
        _$GetSdkTypeRequest,
        GetSdkTypeRequestPayload,
        _$GetSdkTypeRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetSdkTypeRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetSdkTypeRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetSdkTypeRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
