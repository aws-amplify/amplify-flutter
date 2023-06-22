// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.service_failure_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'service_failure_exception.g.dart';

/// The request processing has failed because of an unknown error, exception or failure.
abstract class ServiceFailureException
    with _i1.AWSEquatable<ServiceFailureException>
    implements
        Built<ServiceFailureException, ServiceFailureExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The request processing has failed because of an unknown error, exception or failure.
  factory ServiceFailureException({String? message}) {
    return _$ServiceFailureException._(message: message);
  }

  /// The request processing has failed because of an unknown error, exception or failure.
  factory ServiceFailureException.build(
          [void Function(ServiceFailureExceptionBuilder) updates]) =
      _$ServiceFailureException;

  const ServiceFailureException._();

  /// Constructs a [ServiceFailureException] from a [payload] and [response].
  factory ServiceFailureException.fromResponse(
    ServiceFailureException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<ServiceFailureException>> serializers =
      [ServiceFailureExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServiceFailureExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.iam',
        shape: 'ServiceFailureException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 500;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ServiceFailureException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class ServiceFailureExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<ServiceFailureException> {
  const ServiceFailureExceptionAwsQuerySerializer()
      : super('ServiceFailureException');

  @override
  Iterable<Type> get types => const [
        ServiceFailureException,
        _$ServiceFailureException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ServiceFailureException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceFailureExceptionBuilder();
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
    ServiceFailureException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ServiceFailureExceptionResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ServiceFailureException(:message) = object;
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
