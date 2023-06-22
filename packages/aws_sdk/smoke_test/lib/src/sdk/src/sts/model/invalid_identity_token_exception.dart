// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.model.invalid_identity_token_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_identity_token_exception.g.dart';

/// The web identity token that was passed could not be validated by Amazon Web Services. Get a new identity token from the identity provider and then retry the request.
abstract class InvalidIdentityTokenException
    with
        _i1.AWSEquatable<InvalidIdentityTokenException>
    implements
        Built<InvalidIdentityTokenException,
            InvalidIdentityTokenExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The web identity token that was passed could not be validated by Amazon Web Services. Get a new identity token from the identity provider and then retry the request.
  factory InvalidIdentityTokenException({String? message}) {
    return _$InvalidIdentityTokenException._(message: message);
  }

  /// The web identity token that was passed could not be validated by Amazon Web Services. Get a new identity token from the identity provider and then retry the request.
  factory InvalidIdentityTokenException.build(
          [void Function(InvalidIdentityTokenExceptionBuilder) updates]) =
      _$InvalidIdentityTokenException;

  const InvalidIdentityTokenException._();

  /// Constructs a [InvalidIdentityTokenException] from a [payload] and [response].
  factory InvalidIdentityTokenException.fromResponse(
    InvalidIdentityTokenException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<InvalidIdentityTokenException>>
      serializers = [InvalidIdentityTokenExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidIdentityTokenExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.sts',
        shape: 'InvalidIdentityTokenException',
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
    final helper = newBuiltValueToStringHelper('InvalidIdentityTokenException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class InvalidIdentityTokenExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<InvalidIdentityTokenException> {
  const InvalidIdentityTokenExceptionAwsQuerySerializer()
      : super('InvalidIdentityTokenException');

  @override
  Iterable<Type> get types => const [
        InvalidIdentityTokenException,
        _$InvalidIdentityTokenException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  InvalidIdentityTokenException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidIdentityTokenExceptionBuilder();
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
    InvalidIdentityTokenException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InvalidIdentityTokenExceptionResponse',
        _i2.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    final InvalidIdentityTokenException(:message) = object;
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
