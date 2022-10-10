// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.create_request_validator_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'create_request_validator_request.g.dart';

/// Creates a RequestValidator of a given RestApi.
abstract class CreateRequestValidatorRequest
    with
        _i1.HttpInput<CreateRequestValidatorRequestPayload>,
        _i2.AWSEquatable<CreateRequestValidatorRequest>
    implements
        Built<CreateRequestValidatorRequest,
            CreateRequestValidatorRequestBuilder>,
        _i1.HasPayload<CreateRequestValidatorRequestPayload> {
  /// Creates a RequestValidator of a given RestApi.
  factory CreateRequestValidatorRequest({
    String? name,
    required String restApiId,
    bool? validateRequestBody,
    bool? validateRequestParameters,
  }) {
    return _$CreateRequestValidatorRequest._(
      name: name,
      restApiId: restApiId,
      validateRequestBody: validateRequestBody,
      validateRequestParameters: validateRequestParameters,
    );
  }

  /// Creates a RequestValidator of a given RestApi.
  factory CreateRequestValidatorRequest.build(
          [void Function(CreateRequestValidatorRequestBuilder) updates]) =
      _$CreateRequestValidatorRequest;

  const CreateRequestValidatorRequest._();

  factory CreateRequestValidatorRequest.fromRequest(
    CreateRequestValidatorRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      CreateRequestValidatorRequest.build((b) {
        b.name = payload.name;
        b.validateRequestBody = payload.validateRequestBody;
        b.validateRequestParameters = payload.validateRequestParameters;
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    CreateRequestValidatorRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateRequestValidatorRequestBuilder b) {}

  /// The name of the to-be-created RequestValidator.
  String? get name;

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// A Boolean flag to indicate whether to validate request body according to the configured model schema for the method (`true`) or not (`false`).
  bool? get validateRequestBody;

  /// A Boolean flag to indicate whether to validate request parameters, `true`, or not `false`.
  bool? get validateRequestParameters;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  CreateRequestValidatorRequestPayload getPayload() =>
      CreateRequestValidatorRequestPayload((b) {
        b.name = name;
        b.validateRequestBody = validateRequestBody;
        b.validateRequestParameters = validateRequestParameters;
      });
  @override
  List<Object?> get props => [
        name,
        restApiId,
        validateRequestBody,
        validateRequestParameters,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateRequestValidatorRequest');
    helper.add(
      'name',
      name,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    helper.add(
      'validateRequestBody',
      validateRequestBody,
    );
    helper.add(
      'validateRequestParameters',
      validateRequestParameters,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class CreateRequestValidatorRequestPayload
    with
        _i2.AWSEquatable<CreateRequestValidatorRequestPayload>
    implements
        Built<CreateRequestValidatorRequestPayload,
            CreateRequestValidatorRequestPayloadBuilder> {
  factory CreateRequestValidatorRequestPayload(
      [void Function(CreateRequestValidatorRequestPayloadBuilder)
          updates]) = _$CreateRequestValidatorRequestPayload;

  const CreateRequestValidatorRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateRequestValidatorRequestPayloadBuilder b) {}

  /// The name of the to-be-created RequestValidator.
  String? get name;

  /// A Boolean flag to indicate whether to validate request body according to the configured model schema for the method (`true`) or not (`false`).
  bool? get validateRequestBody;

  /// A Boolean flag to indicate whether to validate request parameters, `true`, or not `false`.
  bool? get validateRequestParameters;
  @override
  List<Object?> get props => [
        name,
        validateRequestBody,
        validateRequestParameters,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateRequestValidatorRequestPayload');
    helper.add(
      'name',
      name,
    );
    helper.add(
      'validateRequestBody',
      validateRequestBody,
    );
    helper.add(
      'validateRequestParameters',
      validateRequestParameters,
    );
    return helper.toString();
  }
}

class CreateRequestValidatorRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<CreateRequestValidatorRequestPayload> {
  const CreateRequestValidatorRequestRestJson1Serializer()
      : super('CreateRequestValidatorRequest');

  @override
  Iterable<Type> get types => const [
        CreateRequestValidatorRequest,
        _$CreateRequestValidatorRequest,
        CreateRequestValidatorRequestPayload,
        _$CreateRequestValidatorRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  CreateRequestValidatorRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateRequestValidatorRequestPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'validateRequestBody':
          if (value != null) {
            result.validateRequestBody = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'validateRequestParameters':
          if (value != null) {
            result.validateRequestParameters = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
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
    final payload = object is CreateRequestValidatorRequest
        ? object.getPayload()
        : (object as CreateRequestValidatorRequestPayload);
    final result = <Object?>[];
    if (payload.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.validateRequestBody != null) {
      result
        ..add('validateRequestBody')
        ..add(serializers.serialize(
          payload.validateRequestBody!,
          specifiedType: const FullType(bool),
        ));
    }
    if (payload.validateRequestParameters != null) {
      result
        ..add('validateRequestParameters')
        ..add(serializers.serialize(
          payload.validateRequestParameters!,
          specifiedType: const FullType(bool),
        ));
    }
    return result;
  }
}
