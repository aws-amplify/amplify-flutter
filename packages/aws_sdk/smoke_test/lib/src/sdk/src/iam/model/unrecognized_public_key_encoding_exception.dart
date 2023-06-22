// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.unrecognized_public_key_encoding_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'unrecognized_public_key_encoding_exception.g.dart';

/// The request was rejected because the public key encoding format is unsupported or unrecognized.
abstract class UnrecognizedPublicKeyEncodingException
    with
        _i1.AWSEquatable<UnrecognizedPublicKeyEncodingException>
    implements
        Built<UnrecognizedPublicKeyEncodingException,
            UnrecognizedPublicKeyEncodingExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The request was rejected because the public key encoding format is unsupported or unrecognized.
  factory UnrecognizedPublicKeyEncodingException({String? message}) {
    return _$UnrecognizedPublicKeyEncodingException._(message: message);
  }

  /// The request was rejected because the public key encoding format is unsupported or unrecognized.
  factory UnrecognizedPublicKeyEncodingException.build(
      [void Function(UnrecognizedPublicKeyEncodingExceptionBuilder)
          updates]) = _$UnrecognizedPublicKeyEncodingException;

  const UnrecognizedPublicKeyEncodingException._();

  /// Constructs a [UnrecognizedPublicKeyEncodingException] from a [payload] and [response].
  factory UnrecognizedPublicKeyEncodingException.fromResponse(
    UnrecognizedPublicKeyEncodingException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<
          _i2.SmithySerializer<UnrecognizedPublicKeyEncodingException>>
      serializers = [
    UnrecognizedPublicKeyEncodingExceptionAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UnrecognizedPublicKeyEncodingExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.iam',
        shape: 'UnrecognizedPublicKeyEncodingException',
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
        newBuiltValueToStringHelper('UnrecognizedPublicKeyEncodingException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class UnrecognizedPublicKeyEncodingExceptionAwsQuerySerializer extends _i2
    .StructuredSmithySerializer<UnrecognizedPublicKeyEncodingException> {
  const UnrecognizedPublicKeyEncodingExceptionAwsQuerySerializer()
      : super('UnrecognizedPublicKeyEncodingException');

  @override
  Iterable<Type> get types => const [
        UnrecognizedPublicKeyEncodingException,
        _$UnrecognizedPublicKeyEncodingException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UnrecognizedPublicKeyEncodingException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnrecognizedPublicKeyEncodingExceptionBuilder();
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
    UnrecognizedPublicKeyEncodingException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'UnrecognizedPublicKeyEncodingExceptionResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UnrecognizedPublicKeyEncodingException(:message) = object;
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
