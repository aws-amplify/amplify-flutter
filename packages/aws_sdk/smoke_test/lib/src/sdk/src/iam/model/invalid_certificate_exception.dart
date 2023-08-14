// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.invalid_certificate_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_certificate_exception.g.dart';

/// The request was rejected because the certificate is invalid.
abstract class InvalidCertificateException
    with _i1.AWSEquatable<InvalidCertificateException>
    implements
        Built<InvalidCertificateException, InvalidCertificateExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The request was rejected because the certificate is invalid.
  factory InvalidCertificateException({String? message}) {
    return _$InvalidCertificateException._(message: message);
  }

  /// The request was rejected because the certificate is invalid.
  factory InvalidCertificateException.build(
          [void Function(InvalidCertificateExceptionBuilder) updates]) =
      _$InvalidCertificateException;

  const InvalidCertificateException._();

  /// Constructs a [InvalidCertificateException] from a [payload] and [response].
  factory InvalidCertificateException.fromResponse(
    InvalidCertificateException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<InvalidCertificateException>>
      serializers = [InvalidCertificateExceptionAwsQuerySerializer()];

  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.iam',
        shape: 'InvalidCertificateException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 400;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InvalidCertificateException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class InvalidCertificateExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<InvalidCertificateException> {
  const InvalidCertificateExceptionAwsQuerySerializer()
      : super('InvalidCertificateException');

  @override
  Iterable<Type> get types => const [
        InvalidCertificateException,
        _$InvalidCertificateException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  InvalidCertificateException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidCertificateExceptionBuilder();
    final errorIterator = serialized.iterator;
    while (errorIterator.moveNext()) {
      final key = errorIterator.current;
      errorIterator.moveNext();
      if (key == 'Error') {
        serialized = errorIterator.current as Iterable;
      }
    }
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InvalidCertificateException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InvalidCertificateExceptionResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final InvalidCertificateException(:message) = object;
    if (message != null) {
      result$
        ..add(const _i2.XmlElementName('message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
