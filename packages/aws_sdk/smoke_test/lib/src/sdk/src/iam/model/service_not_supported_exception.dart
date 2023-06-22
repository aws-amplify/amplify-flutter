// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.service_not_supported_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'service_not_supported_exception.g.dart';

/// The specified service does not support service-specific credentials.
abstract class ServiceNotSupportedException
    with
        _i1.AWSEquatable<ServiceNotSupportedException>
    implements
        Built<ServiceNotSupportedException,
            ServiceNotSupportedExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The specified service does not support service-specific credentials.
  factory ServiceNotSupportedException({String? message}) {
    return _$ServiceNotSupportedException._(message: message);
  }

  /// The specified service does not support service-specific credentials.
  factory ServiceNotSupportedException.build(
          [void Function(ServiceNotSupportedExceptionBuilder) updates]) =
      _$ServiceNotSupportedException;

  const ServiceNotSupportedException._();

  /// Constructs a [ServiceNotSupportedException] from a [payload] and [response].
  factory ServiceNotSupportedException.fromResponse(
    ServiceNotSupportedException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<ServiceNotSupportedException>>
      serializers = [ServiceNotSupportedExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServiceNotSupportedExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.iam',
        shape: 'ServiceNotSupportedException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 404;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ServiceNotSupportedException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class ServiceNotSupportedExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<ServiceNotSupportedException> {
  const ServiceNotSupportedExceptionAwsQuerySerializer()
      : super('ServiceNotSupportedException');

  @override
  Iterable<Type> get types => const [
        ServiceNotSupportedException,
        _$ServiceNotSupportedException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ServiceNotSupportedException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceNotSupportedExceptionBuilder();
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
    ServiceNotSupportedException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ServiceNotSupportedExceptionResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ServiceNotSupportedException(:message) = object;
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
