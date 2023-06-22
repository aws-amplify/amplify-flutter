// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required String restApiId,
    String? name,
    bool? validateRequestBody,
    bool? validateRequestParameters,
  }) {
    validateRequestBody ??= false;
    validateRequestParameters ??= false;
    return _$CreateRequestValidatorRequest._(
      restApiId: restApiId,
      name: name,
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

  static const List<_i1.SmithySerializer<CreateRequestValidatorRequestPayload>>
      serializers = [CreateRequestValidatorRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateRequestValidatorRequestBuilder b) {
    b.validateRequestBody = false;
    b.validateRequestParameters = false;
  }

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The name of the to-be-created RequestValidator.
  String? get name;

  /// A Boolean flag to indicate whether to validate request body according to the configured model schema for the method (`true`) or not (`false`).
  bool get validateRequestBody;

  /// A Boolean flag to indicate whether to validate request parameters, `true`, or not `false`.
  bool get validateRequestParameters;
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
        restApiId,
        name,
        validateRequestBody,
        validateRequestParameters,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateRequestValidatorRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'name',
        name,
      )
      ..add(
        'validateRequestBody',
        validateRequestBody,
      )
      ..add(
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
  static void _init(CreateRequestValidatorRequestPayloadBuilder b) {
    b.validateRequestBody = false;
    b.validateRequestParameters = false;
  }

  /// The name of the to-be-created RequestValidator.
  String? get name;

  /// A Boolean flag to indicate whether to validate request body according to the configured model schema for the method (`true`) or not (`false`).
  bool get validateRequestBody;

  /// A Boolean flag to indicate whether to validate request parameters, `true`, or not `false`.
  bool get validateRequestParameters;
  @override
  List<Object?> get props => [
        name,
        validateRequestBody,
        validateRequestParameters,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateRequestValidatorRequestPayload')
          ..add(
            'name',
            name,
          )
          ..add(
            'validateRequestBody',
            validateRequestBody,
          )
          ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'validateRequestBody':
          result.validateRequestBody = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'validateRequestParameters':
          result.validateRequestParameters = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateRequestValidatorRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CreateRequestValidatorRequestPayload(
      :name,
      :validateRequestBody,
      :validateRequestParameters
    ) = object;
    result$.addAll([
      'validateRequestBody',
      serializers.serialize(
        validateRequestBody,
        specifiedType: const FullType(bool),
      ),
      'validateRequestParameters',
      serializers.serialize(
        validateRequestParameters,
        specifiedType: const FullType(bool),
      ),
    ]);
    if (name != null) {
      result$
        ..add('name')
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
