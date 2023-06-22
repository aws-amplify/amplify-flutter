// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.get_model_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_model_request.g.dart';

/// Request to list information about a model in an existing RestApi resource.
abstract class GetModelRequest
    with
        _i1.HttpInput<GetModelRequestPayload>,
        _i2.AWSEquatable<GetModelRequest>
    implements
        Built<GetModelRequest, GetModelRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetModelRequestPayload> {
  /// Request to list information about a model in an existing RestApi resource.
  factory GetModelRequest({
    required String restApiId,
    required String modelName,
    bool? flatten,
  }) {
    flatten ??= false;
    return _$GetModelRequest._(
      restApiId: restApiId,
      modelName: modelName,
      flatten: flatten,
    );
  }

  /// Request to list information about a model in an existing RestApi resource.
  factory GetModelRequest.build(
      [void Function(GetModelRequestBuilder) updates]) = _$GetModelRequest;

  const GetModelRequest._();

  factory GetModelRequest.fromRequest(
    GetModelRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetModelRequest.build((b) {
        if (request.queryParameters['flatten'] != null) {
          b.flatten = request.queryParameters['flatten']! == 'true';
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['modelName'] != null) {
          b.modelName = labels['modelName']!;
        }
      });

  static const List<_i1.SmithySerializer<GetModelRequestPayload>> serializers =
      [GetModelRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetModelRequestBuilder b) {
    b.flatten = false;
  }

  /// The RestApi identifier under which the Model exists.
  String get restApiId;

  /// The name of the model as an identifier.
  String get modelName;

  /// A query parameter of a Boolean value to resolve (`true`) all external model references and returns a flattened model schema or not (`false`) The default is `false`.
  bool get flatten;
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
  GetModelRequestPayload getPayload() => GetModelRequestPayload();
  @override
  List<Object?> get props => [
        restApiId,
        modelName,
        flatten,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetModelRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'modelName',
        modelName,
      )
      ..add(
        'flatten',
        flatten,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetModelRequestPayload
    with _i2.AWSEquatable<GetModelRequestPayload>
    implements
        Built<GetModelRequestPayload, GetModelRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetModelRequestPayload(
          [void Function(GetModelRequestPayloadBuilder) updates]) =
      _$GetModelRequestPayload;

  const GetModelRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetModelRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetModelRequestPayload');
    return helper.toString();
  }
}

class GetModelRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetModelRequestPayload> {
  const GetModelRequestRestJson1Serializer() : super('GetModelRequest');

  @override
  Iterable<Type> get types => const [
        GetModelRequest,
        _$GetModelRequest,
        GetModelRequestPayload,
        _$GetModelRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetModelRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetModelRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetModelRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
