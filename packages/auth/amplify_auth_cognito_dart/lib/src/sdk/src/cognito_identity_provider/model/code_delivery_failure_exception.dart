// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.code_delivery_failure_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'code_delivery_failure_exception.g.dart';

/// This exception is thrown when a verification code fails to deliver successfully.
abstract class CodeDeliveryFailureException
    with
        _i1.AWSEquatable<CodeDeliveryFailureException>
    implements
        Built<CodeDeliveryFailureException,
            CodeDeliveryFailureExceptionBuilder>,
        _i2.SmithyHttpException {
  /// This exception is thrown when a verification code fails to deliver successfully.
  factory CodeDeliveryFailureException({String? message}) {
    return _$CodeDeliveryFailureException._(message: message);
  }

  /// This exception is thrown when a verification code fails to deliver successfully.
  factory CodeDeliveryFailureException.build(
          [void Function(CodeDeliveryFailureExceptionBuilder) updates]) =
      _$CodeDeliveryFailureException;

  const CodeDeliveryFailureException._();

  /// Constructs a [CodeDeliveryFailureException] from a [payload] and [response].
  factory CodeDeliveryFailureException.fromResponse(
    CodeDeliveryFailureException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<CodeDeliveryFailureException>>
      serializers = [CodeDeliveryFailureExceptionAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CodeDeliveryFailureExceptionBuilder b) {}

  /// The message sent when a verification code fails to deliver successfully.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cognitoidentityprovider',
        shape: 'CodeDeliveryFailureException',
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
    final helper = newBuiltValueToStringHelper('CodeDeliveryFailureException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class CodeDeliveryFailureExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<CodeDeliveryFailureException> {
  const CodeDeliveryFailureExceptionAwsJson11Serializer()
      : super('CodeDeliveryFailureException');

  @override
  Iterable<Type> get types => const [
        CodeDeliveryFailureException,
        _$CodeDeliveryFailureException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  CodeDeliveryFailureException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CodeDeliveryFailureExceptionBuilder();
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
    CodeDeliveryFailureException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CodeDeliveryFailureException(:message) = object;
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
