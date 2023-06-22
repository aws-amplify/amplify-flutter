// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.invalid_user_type_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_user_type_exception.g.dart';

/// The request was rejected because the type of user for the transaction was incorrect.
abstract class InvalidUserTypeException
    with _i1.AWSEquatable<InvalidUserTypeException>
    implements
        Built<InvalidUserTypeException, InvalidUserTypeExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The request was rejected because the type of user for the transaction was incorrect.
  factory InvalidUserTypeException({String? message}) {
    return _$InvalidUserTypeException._(message: message);
  }

  /// The request was rejected because the type of user for the transaction was incorrect.
  factory InvalidUserTypeException.build(
          [void Function(InvalidUserTypeExceptionBuilder) updates]) =
      _$InvalidUserTypeException;

  const InvalidUserTypeException._();

  /// Constructs a [InvalidUserTypeException] from a [payload] and [response].
  factory InvalidUserTypeException.fromResponse(
    InvalidUserTypeException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<InvalidUserTypeException>>
      serializers = [InvalidUserTypeExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidUserTypeExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.iam',
        shape: 'InvalidUserTypeException',
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
    final helper = newBuiltValueToStringHelper('InvalidUserTypeException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class InvalidUserTypeExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<InvalidUserTypeException> {
  const InvalidUserTypeExceptionAwsQuerySerializer()
      : super('InvalidUserTypeException');

  @override
  Iterable<Type> get types => const [
        InvalidUserTypeException,
        _$InvalidUserTypeException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  InvalidUserTypeException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidUserTypeExceptionBuilder();
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
    InvalidUserTypeException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InvalidUserTypeExceptionResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final InvalidUserTypeException(:message) = object;
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
