// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.get_model_template_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_model_template_request.g.dart';

/// Request to generate a sample mapping template used to transform the payload.
abstract class GetModelTemplateRequest
    with
        _i1.HttpInput<GetModelTemplateRequestPayload>,
        _i2.AWSEquatable<GetModelTemplateRequest>
    implements
        Built<GetModelTemplateRequest, GetModelTemplateRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetModelTemplateRequestPayload> {
  /// Request to generate a sample mapping template used to transform the payload.
  factory GetModelTemplateRequest({
    required String restApiId,
    required String modelName,
  }) {
    return _$GetModelTemplateRequest._(
      restApiId: restApiId,
      modelName: modelName,
    );
  }

  /// Request to generate a sample mapping template used to transform the payload.
  factory GetModelTemplateRequest.build(
          [void Function(GetModelTemplateRequestBuilder) updates]) =
      _$GetModelTemplateRequest;

  const GetModelTemplateRequest._();

  factory GetModelTemplateRequest.fromRequest(
    GetModelTemplateRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetModelTemplateRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['modelName'] != null) {
          b.modelName = labels['modelName']!;
        }
      });

  static const List<_i1.SmithySerializer<GetModelTemplateRequestPayload>>
      serializers = [GetModelTemplateRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetModelTemplateRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The name of the model for which to generate a template.
  String get modelName;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'modelName':
        return modelName;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetModelTemplateRequestPayload getPayload() =>
      GetModelTemplateRequestPayload();
  @override
  List<Object?> get props => [
        restApiId,
        modelName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetModelTemplateRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'modelName',
        modelName,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetModelTemplateRequestPayload
    with
        _i2.AWSEquatable<GetModelTemplateRequestPayload>
    implements
        Built<GetModelTemplateRequestPayload,
            GetModelTemplateRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetModelTemplateRequestPayload(
          [void Function(GetModelTemplateRequestPayloadBuilder) updates]) =
      _$GetModelTemplateRequestPayload;

  const GetModelTemplateRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetModelTemplateRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetModelTemplateRequestPayload');
    return helper.toString();
  }
}

class GetModelTemplateRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetModelTemplateRequestPayload> {
  const GetModelTemplateRequestRestJson1Serializer()
      : super('GetModelTemplateRequest');

  @override
  Iterable<Type> get types => const [
        GetModelTemplateRequest,
        _$GetModelTemplateRequest,
        GetModelTemplateRequestPayload,
        _$GetModelTemplateRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetModelTemplateRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetModelTemplateRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetModelTemplateRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
