// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library aws_amazon_firehose.firehose.model.invalid_kms_resource_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_kms_resource_exception.g.dart';

/// Firehose throws this exception when an attempt to put records or to start or stop Firehose stream encryption fails. This happens when the KMS service throws one of the following exception types: `AccessDeniedException`, `InvalidStateException`, `DisabledException`, or `NotFoundException`.
abstract class InvalidKmsResourceException
    with _i1.AWSEquatable<InvalidKmsResourceException>
    implements
        Built<InvalidKmsResourceException, InvalidKmsResourceExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Firehose throws this exception when an attempt to put records or to start or stop Firehose stream encryption fails. This happens when the KMS service throws one of the following exception types: `AccessDeniedException`, `InvalidStateException`, `DisabledException`, or `NotFoundException`.
  factory InvalidKmsResourceException({String? code, String? message}) {
    return _$InvalidKmsResourceException._(code: code, message: message);
  }

  /// Firehose throws this exception when an attempt to put records or to start or stop Firehose stream encryption fails. This happens when the KMS service throws one of the following exception types: `AccessDeniedException`, `InvalidStateException`, `DisabledException`, or `NotFoundException`.
  factory InvalidKmsResourceException.build([
    void Function(InvalidKmsResourceExceptionBuilder) updates,
  ]) = _$InvalidKmsResourceException;

  const InvalidKmsResourceException._();

  /// Constructs a [InvalidKmsResourceException] from a [payload] and [response].
  factory InvalidKmsResourceException.fromResponse(
    InvalidKmsResourceException payload,
    _i1.AWSBaseHttpResponse response,
  ) => payload.rebuild((b) {
    b.statusCode = response.statusCode;
    b.headers = response.headers;
  });

  static const List<_i2.SmithySerializer<InvalidKmsResourceException>>
  serializers = [InvalidKmsResourceExceptionAwsJson11Serializer()];

  String? get code;
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
    namespace: 'com.amazonaws.firehose',
    shape: 'InvalidKMSResourceException',
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
  List<Object?> get props => [code, message];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InvalidKmsResourceException')
      ..add('code', code)
      ..add('message', message);
    return helper.toString();
  }
}

class InvalidKmsResourceExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<InvalidKmsResourceException> {
  const InvalidKmsResourceExceptionAwsJson11Serializer()
    : super('InvalidKmsResourceException');

  @override
  Iterable<Type> get types => const [
    InvalidKmsResourceException,
    _$InvalidKmsResourceException,
  ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  InvalidKmsResourceException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidKmsResourceExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'code':
          result.code =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'message':
          result.message =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InvalidKmsResourceException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final InvalidKmsResourceException(:code, :message) = object;
    if (code != null) {
      result$
        ..add('code')
        ..add(
          serializers.serialize(code, specifiedType: const FullType(String)),
        );
    }
    if (message != null) {
      result$
        ..add('message')
        ..add(
          serializers.serialize(message, specifiedType: const FullType(String)),
        );
    }
    return result$;
  }
}
