// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.key_pair_mismatch_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'key_pair_mismatch_exception.g.dart';

/// The request was rejected because the public key certificate and the private key do not match.
abstract class KeyPairMismatchException
    with _i1.AWSEquatable<KeyPairMismatchException>
    implements
        Built<KeyPairMismatchException, KeyPairMismatchExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The request was rejected because the public key certificate and the private key do not match.
  factory KeyPairMismatchException({String? message}) {
    return _$KeyPairMismatchException._(message: message);
  }

  /// The request was rejected because the public key certificate and the private key do not match.
  factory KeyPairMismatchException.build(
          [void Function(KeyPairMismatchExceptionBuilder) updates]) =
      _$KeyPairMismatchException;

  const KeyPairMismatchException._();

  /// Constructs a [KeyPairMismatchException] from a [payload] and [response].
  factory KeyPairMismatchException.fromResponse(
    KeyPairMismatchException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<KeyPairMismatchException>>
      serializers = [KeyPairMismatchExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(KeyPairMismatchExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.iam',
        shape: 'KeyPairMismatchException',
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
    final helper = newBuiltValueToStringHelper('KeyPairMismatchException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class KeyPairMismatchExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<KeyPairMismatchException> {
  const KeyPairMismatchExceptionAwsQuerySerializer()
      : super('KeyPairMismatchException');

  @override
  Iterable<Type> get types => const [
        KeyPairMismatchException,
        _$KeyPairMismatchException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  KeyPairMismatchException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeyPairMismatchExceptionBuilder();
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
    KeyPairMismatchException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'KeyPairMismatchExceptionResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final KeyPairMismatchException(:message) = object;
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
