// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.request_validator; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'request_validator.g.dart';

/// A set of validation rules for incoming Method requests.
abstract class RequestValidator
    with _i1.AWSEquatable<RequestValidator>
    implements Built<RequestValidator, RequestValidatorBuilder> {
  /// A set of validation rules for incoming Method requests.
  factory RequestValidator({
    String? id,
    String? name,
    bool? validateRequestBody,
    bool? validateRequestParameters,
  }) {
    return _$RequestValidator._(
      id: id,
      name: name,
      validateRequestBody: validateRequestBody,
      validateRequestParameters: validateRequestParameters,
    );
  }

  /// A set of validation rules for incoming Method requests.
  factory RequestValidator.build(
      [void Function(RequestValidatorBuilder) updates]) = _$RequestValidator;

  const RequestValidator._();

  /// Constructs a [RequestValidator] from a [payload] and [response].
  factory RequestValidator.fromResponse(
    RequestValidator payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    RequestValidatorRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RequestValidatorBuilder b) {}

  /// The identifier of this RequestValidator.
  String? get id;

  /// The name of this RequestValidator
  String? get name;

  /// A Boolean flag to indicate whether to validate a request body according to the configured Model schema.
  bool? get validateRequestBody;

  /// A Boolean flag to indicate whether to validate request parameters (`true`) or not (`false`).
  bool? get validateRequestParameters;
  @override
  List<Object?> get props => [
        id,
        name,
        validateRequestBody,
        validateRequestParameters,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RequestValidator');
    helper.add(
      'id',
      id,
    );
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

class RequestValidatorRestJson1Serializer
    extends _i2.StructuredSmithySerializer<RequestValidator> {
  const RequestValidatorRestJson1Serializer() : super('RequestValidator');

  @override
  Iterable<Type> get types => const [
        RequestValidator,
        _$RequestValidator,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  RequestValidator deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RequestValidatorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'id':
          if (value != null) {
            result.id = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
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
    final payload = (object as RequestValidator);
    final result = <Object?>[];
    if (payload.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(
          payload.id!,
          specifiedType: const FullType(String),
        ));
    }
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
