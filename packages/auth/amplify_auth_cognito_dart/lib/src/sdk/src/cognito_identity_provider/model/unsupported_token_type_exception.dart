// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.unsupported_token_type_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'unsupported_token_type_exception.g.dart';

/// Exception that is thrown when an unsupported token is passed to an operation.
abstract class UnsupportedTokenTypeException
    with
        _i1.AWSEquatable<UnsupportedTokenTypeException>
    implements
        Built<UnsupportedTokenTypeException,
            UnsupportedTokenTypeExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Exception that is thrown when an unsupported token is passed to an operation.
  factory UnsupportedTokenTypeException({String? message}) {
    return _$UnsupportedTokenTypeException._(message: message);
  }

  /// Exception that is thrown when an unsupported token is passed to an operation.
  factory UnsupportedTokenTypeException.build(
          [void Function(UnsupportedTokenTypeExceptionBuilder) updates]) =
      _$UnsupportedTokenTypeException;

  const UnsupportedTokenTypeException._();

  /// Constructs a [UnsupportedTokenTypeException] from a [payload] and [response].
  factory UnsupportedTokenTypeException.fromResponse(
    UnsupportedTokenTypeException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<UnsupportedTokenTypeException>>
      serializers = [UnsupportedTokenTypeExceptionAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UnsupportedTokenTypeExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cognitoidentityprovider',
        shape: 'UnsupportedTokenTypeException',
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
    final helper = newBuiltValueToStringHelper('UnsupportedTokenTypeException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class UnsupportedTokenTypeExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<UnsupportedTokenTypeException> {
  const UnsupportedTokenTypeExceptionAwsJson11Serializer()
      : super('UnsupportedTokenTypeException');

  @override
  Iterable<Type> get types => const [
        UnsupportedTokenTypeException,
        _$UnsupportedTokenTypeException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  UnsupportedTokenTypeException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnsupportedTokenTypeExceptionBuilder();
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
    UnsupportedTokenTypeException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UnsupportedTokenTypeException(:message) = object;
    if (message != null) {
      result$
        ..add('message')
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
