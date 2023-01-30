// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.validation_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'validation_exception.g.dart';

/// The requested action is not valid.
///
/// For PutStoredQuery, you will see this exception if there are missing required fields or if the input value fails the validation, or if you are trying to create more than 300 queries.
///
/// For GetStoredQuery, ListStoredQuery, and DeleteStoredQuery you will see this exception if there are missing required fields or if the input value fails the validation.
abstract class ValidationException
    with _i1.AWSEquatable<ValidationException>
    implements
        Built<ValidationException, ValidationExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The requested action is not valid.
  ///
  /// For PutStoredQuery, you will see this exception if there are missing required fields or if the input value fails the validation, or if you are trying to create more than 300 queries.
  ///
  /// For GetStoredQuery, ListStoredQuery, and DeleteStoredQuery you will see this exception if there are missing required fields or if the input value fails the validation.
  factory ValidationException({String? message}) {
    return _$ValidationException._(message: message);
  }

  /// The requested action is not valid.
  ///
  /// For PutStoredQuery, you will see this exception if there are missing required fields or if the input value fails the validation, or if you are trying to create more than 300 queries.
  ///
  /// For GetStoredQuery, ListStoredQuery, and DeleteStoredQuery you will see this exception if there are missing required fields or if the input value fails the validation.
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
    ValidationExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ValidationExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
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
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ValidationException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class ValidationExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ValidationException> {
  const ValidationExceptionAwsJson11Serializer() : super('ValidationException');

  @override
  Iterable<Type> get types => const [
        ValidationException,
        _$ValidationException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
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
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as ValidationException);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
