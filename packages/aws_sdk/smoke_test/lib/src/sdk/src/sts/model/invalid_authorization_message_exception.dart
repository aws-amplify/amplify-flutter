// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.model.invalid_authorization_message_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_authorization_message_exception.g.dart';

/// The error returned if the message passed to `DecodeAuthorizationMessage` was invalid. This can happen if the token contains invalid characters, such as linebreaks.
abstract class InvalidAuthorizationMessageException
    with
        _i1.AWSEquatable<InvalidAuthorizationMessageException>
    implements
        Built<InvalidAuthorizationMessageException,
            InvalidAuthorizationMessageExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The error returned if the message passed to `DecodeAuthorizationMessage` was invalid. This can happen if the token contains invalid characters, such as linebreaks.
  factory InvalidAuthorizationMessageException({String? message}) {
    return _$InvalidAuthorizationMessageException._(message: message);
  }

  /// The error returned if the message passed to `DecodeAuthorizationMessage` was invalid. This can happen if the token contains invalid characters, such as linebreaks.
  factory InvalidAuthorizationMessageException.build(
      [void Function(InvalidAuthorizationMessageExceptionBuilder)
          updates]) = _$InvalidAuthorizationMessageException;

  const InvalidAuthorizationMessageException._();

  /// Constructs a [InvalidAuthorizationMessageException] from a [payload] and [response].
  factory InvalidAuthorizationMessageException.fromResponse(
    InvalidAuthorizationMessageException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<InvalidAuthorizationMessageException>>
      serializers = [InvalidAuthorizationMessageExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidAuthorizationMessageExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.sts',
        shape: 'InvalidAuthorizationMessageException',
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
    final helper =
        newBuiltValueToStringHelper('InvalidAuthorizationMessageException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class InvalidAuthorizationMessageExceptionAwsQuerySerializer extends _i2
    .StructuredSmithySerializer<InvalidAuthorizationMessageException> {
  const InvalidAuthorizationMessageExceptionAwsQuerySerializer()
      : super('InvalidAuthorizationMessageException');

  @override
  Iterable<Type> get types => const [
        InvalidAuthorizationMessageException,
        _$InvalidAuthorizationMessageException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  InvalidAuthorizationMessageException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidAuthorizationMessageExceptionBuilder();
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
    InvalidAuthorizationMessageException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InvalidAuthorizationMessageExceptionResponse',
        _i2.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    final InvalidAuthorizationMessageException(:message) = object;
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
