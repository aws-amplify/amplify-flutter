// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.token_already_exists_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'token_already_exists_exception.g.dart';

/// A client request token already exists.
abstract class TokenAlreadyExistsException
    with _i1.AWSEquatable<TokenAlreadyExistsException>
    implements
        Built<TokenAlreadyExistsException, TokenAlreadyExistsExceptionBuilder>,
        _i2.SmithyHttpException {
  /// A client request token already exists.
  factory TokenAlreadyExistsException({String? message}) {
    return _$TokenAlreadyExistsException._(message: message);
  }

  /// A client request token already exists.
  factory TokenAlreadyExistsException.build(
          [void Function(TokenAlreadyExistsExceptionBuilder) updates]) =
      _$TokenAlreadyExistsException;

  const TokenAlreadyExistsException._();

  /// Constructs a [TokenAlreadyExistsException] from a [payload] and [response].
  factory TokenAlreadyExistsException.fromResponse(
    TokenAlreadyExistsException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<TokenAlreadyExistsException>>
      serializers = [TokenAlreadyExistsExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TokenAlreadyExistsExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cloudformation',
        shape: 'TokenAlreadyExistsException',
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
    final helper = newBuiltValueToStringHelper('TokenAlreadyExistsException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class TokenAlreadyExistsExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<TokenAlreadyExistsException> {
  const TokenAlreadyExistsExceptionAwsQuerySerializer()
      : super('TokenAlreadyExistsException');

  @override
  Iterable<Type> get types => const [
        TokenAlreadyExistsException,
        _$TokenAlreadyExistsException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  TokenAlreadyExistsException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenAlreadyExistsExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Message':
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
    TokenAlreadyExistsException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TokenAlreadyExistsExceptionResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final TokenAlreadyExistsException(:message) = object;
    if (message != null) {
      result$
        ..add(const _i2.XmlElementName('Message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
