// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.invalid_authentication_code_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_authentication_code_exception.g.dart';

/// The request was rejected because the authentication code was not recognized. The error message describes the specific error.
abstract class InvalidAuthenticationCodeException
    with
        _i1.AWSEquatable<InvalidAuthenticationCodeException>
    implements
        Built<InvalidAuthenticationCodeException,
            InvalidAuthenticationCodeExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The request was rejected because the authentication code was not recognized. The error message describes the specific error.
  factory InvalidAuthenticationCodeException({String? message}) {
    return _$InvalidAuthenticationCodeException._(message: message);
  }

  /// The request was rejected because the authentication code was not recognized. The error message describes the specific error.
  factory InvalidAuthenticationCodeException.build(
          [void Function(InvalidAuthenticationCodeExceptionBuilder) updates]) =
      _$InvalidAuthenticationCodeException;

  const InvalidAuthenticationCodeException._();

  /// Constructs a [InvalidAuthenticationCodeException] from a [payload] and [response].
  factory InvalidAuthenticationCodeException.fromResponse(
    InvalidAuthenticationCodeException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<InvalidAuthenticationCodeException>>
      serializers = [InvalidAuthenticationCodeExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidAuthenticationCodeExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.iam',
        shape: 'InvalidAuthenticationCodeException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 403;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InvalidAuthenticationCodeException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class InvalidAuthenticationCodeExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<InvalidAuthenticationCodeException> {
  const InvalidAuthenticationCodeExceptionAwsQuerySerializer()
      : super('InvalidAuthenticationCodeException');

  @override
  Iterable<Type> get types => const [
        InvalidAuthenticationCodeException,
        _$InvalidAuthenticationCodeException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  InvalidAuthenticationCodeException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidAuthenticationCodeExceptionBuilder();
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
    InvalidAuthenticationCodeException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InvalidAuthenticationCodeExceptionResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final InvalidAuthenticationCodeException(:message) = object;
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
