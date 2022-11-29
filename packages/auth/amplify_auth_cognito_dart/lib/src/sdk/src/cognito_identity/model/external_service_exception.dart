// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity.model.external_service_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'external_service_exception.g.dart';

/// An exception thrown when a dependent service such as Facebook or Twitter is not responding
abstract class ExternalServiceException
    with _i1.AWSEquatable<ExternalServiceException>
    implements
        Built<ExternalServiceException, ExternalServiceExceptionBuilder>,
        _i2.SmithyHttpException {
  /// An exception thrown when a dependent service such as Facebook or Twitter is not responding
  factory ExternalServiceException({String? message}) {
    return _$ExternalServiceException._(message: message);
  }

  /// An exception thrown when a dependent service such as Facebook or Twitter is not responding
  factory ExternalServiceException.build(
          [void Function(ExternalServiceExceptionBuilder) updates]) =
      _$ExternalServiceException;

  const ExternalServiceException._();

  /// Constructs a [ExternalServiceException] from a [payload] and [response].
  factory ExternalServiceException.fromResponse(
    ExternalServiceException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ExternalServiceExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExternalServiceExceptionBuilder b) {}

  /// The message returned by an ExternalServiceException
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cognitoidentity',
        shape: 'ExternalServiceException',
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
    final helper = newBuiltValueToStringHelper('ExternalServiceException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class ExternalServiceExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ExternalServiceException> {
  const ExternalServiceExceptionAwsJson11Serializer()
      : super('ExternalServiceException');

  @override
  Iterable<Type> get types => const [
        ExternalServiceException,
        _$ExternalServiceException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ExternalServiceException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExternalServiceExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ExternalServiceException);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
