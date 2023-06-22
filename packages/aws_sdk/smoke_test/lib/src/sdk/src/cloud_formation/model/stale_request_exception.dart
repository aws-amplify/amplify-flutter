// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stale_request_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'stale_request_exception.g.dart';

/// Another operation has been performed on this stack set since the specified operation was performed.
abstract class StaleRequestException
    with _i1.AWSEquatable<StaleRequestException>
    implements
        Built<StaleRequestException, StaleRequestExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Another operation has been performed on this stack set since the specified operation was performed.
  factory StaleRequestException({String? message}) {
    return _$StaleRequestException._(message: message);
  }

  /// Another operation has been performed on this stack set since the specified operation was performed.
  factory StaleRequestException.build(
          [void Function(StaleRequestExceptionBuilder) updates]) =
      _$StaleRequestException;

  const StaleRequestException._();

  /// Constructs a [StaleRequestException] from a [payload] and [response].
  factory StaleRequestException.fromResponse(
    StaleRequestException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<StaleRequestException>> serializers = [
    StaleRequestExceptionAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StaleRequestExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cloudformation',
        shape: 'StaleRequestException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 409;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StaleRequestException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class StaleRequestExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<StaleRequestException> {
  const StaleRequestExceptionAwsQuerySerializer()
      : super('StaleRequestException');

  @override
  Iterable<Type> get types => const [
        StaleRequestException,
        _$StaleRequestException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StaleRequestException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StaleRequestExceptionBuilder();
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
    StaleRequestException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'StaleRequestExceptionResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final StaleRequestException(:message) = object;
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
