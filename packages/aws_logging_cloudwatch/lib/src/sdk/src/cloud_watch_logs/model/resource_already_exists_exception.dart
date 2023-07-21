// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_logging_cloudwatch.cloud_watch_logs.model.resource_already_exists_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'resource_already_exists_exception.g.dart';

/// The specified resource already exists.
abstract class ResourceAlreadyExistsException
    with
        _i1.AWSEquatable<ResourceAlreadyExistsException>
    implements
        Built<ResourceAlreadyExistsException,
            ResourceAlreadyExistsExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The specified resource already exists.
  factory ResourceAlreadyExistsException({String? message}) {
    return _$ResourceAlreadyExistsException._(message: message);
  }

  /// The specified resource already exists.
  factory ResourceAlreadyExistsException.build(
          [void Function(ResourceAlreadyExistsExceptionBuilder) updates]) =
      _$ResourceAlreadyExistsException;

  const ResourceAlreadyExistsException._();

  /// Constructs a [ResourceAlreadyExistsException] from a [payload] and [response].
  factory ResourceAlreadyExistsException.fromResponse(
    ResourceAlreadyExistsException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<ResourceAlreadyExistsException>>
      serializers = [ResourceAlreadyExistsExceptionAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceAlreadyExistsExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cloudwatchlogs',
        shape: 'ResourceAlreadyExistsException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceAlreadyExistsException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class ResourceAlreadyExistsExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ResourceAlreadyExistsException> {
  const ResourceAlreadyExistsExceptionAwsJson11Serializer()
      : super('ResourceAlreadyExistsException');

  @override
  Iterable<Type> get types => const [
        ResourceAlreadyExistsException,
        _$ResourceAlreadyExistsException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ResourceAlreadyExistsException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceAlreadyExistsExceptionBuilder();
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
    ResourceAlreadyExistsException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ResourceAlreadyExistsException(:message) = object;
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
