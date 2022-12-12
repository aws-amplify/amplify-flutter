// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_validation_protocol.model.validation_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/validation_exception_field.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i2;

part 'validation_exception.g.dart';

/// A standard error for input validation failures. This should be thrown by services when a member of the input structure falls outside of the modeled or documented constraints.
abstract class ValidationException
    with _i1.AWSEquatable<ValidationException>
    implements
        Built<ValidationException, ValidationExceptionBuilder>,
        _i2.SmithyHttpException {
  /// A standard error for input validation failures. This should be thrown by services when a member of the input structure falls outside of the modeled or documented constraints.
  factory ValidationException({
    List<_i3.ValidationExceptionField>? fieldList,
    required String message,
  }) {
    return _$ValidationException._(
      fieldList: fieldList == null ? null : _i4.BuiltList(fieldList),
      message: message,
    );
  }

  /// A standard error for input validation failures. This should be thrown by services when a member of the input structure falls outside of the modeled or documented constraints.
  factory ValidationException.build(
          [void Function(ValidationExceptionBuilder) updates]) =
      _$ValidationException;

  const ValidationException._();

  /// Constructs a [ValidationException] from a [payload] and [response].
  factory ValidationException.fromResponse(
    ValidationException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ValidationExceptionRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ValidationExceptionBuilder b) {}

  /// A list of specific failures encountered while validating the input. A member can appear in this list more than once if it failed to satisfy multiple constraints.
  _i4.BuiltList<_i3.ValidationExceptionField>? get fieldList;

  /// A summary of the validation failure.
  @override
  String get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'smithy.framework',
        shape: 'ValidationException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [
        fieldList,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ValidationException');
    helper.add(
      'fieldList',
      fieldList,
    );
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class ValidationExceptionRestJson1Serializer
    extends _i2.StructuredSmithySerializer<ValidationException> {
  const ValidationExceptionRestJson1Serializer() : super('ValidationException');

  @override
  Iterable<Type> get types => const [
        ValidationException,
        _$ValidationException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  ValidationException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidationExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'fieldList':
          if (value != null) {
            result.fieldList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.ValidationExceptionField)],
              ),
            ) as _i4.BuiltList<_i3.ValidationExceptionField>));
          }
          break;
        case 'message':
          result.message = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as ValidationException);
    final result = <Object?>[
      'message',
      serializers.serialize(
        payload.message,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.fieldList != null) {
      result
        ..add('fieldList')
        ..add(serializers.serialize(
          payload.fieldList!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.ValidationExceptionField)],
          ),
        ));
    }
    return result;
  }
}
