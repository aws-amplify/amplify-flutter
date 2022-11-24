// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.resource_concurrent_modification_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'resource_concurrent_modification_exception.g.dart';

/// Two users are trying to modify the same query at the same time. Wait for a moment and try again.
abstract class ResourceConcurrentModificationException
    with
        _i1.AWSEquatable<ResourceConcurrentModificationException>
    implements
        Built<ResourceConcurrentModificationException,
            ResourceConcurrentModificationExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Two users are trying to modify the same query at the same time. Wait for a moment and try again.
  factory ResourceConcurrentModificationException({String? message}) {
    return _$ResourceConcurrentModificationException._(message: message);
  }

  /// Two users are trying to modify the same query at the same time. Wait for a moment and try again.
  factory ResourceConcurrentModificationException.build(
      [void Function(ResourceConcurrentModificationExceptionBuilder)
          updates]) = _$ResourceConcurrentModificationException;

  const ResourceConcurrentModificationException._();

  /// Constructs a [ResourceConcurrentModificationException] from a [payload] and [response].
  factory ResourceConcurrentModificationException.fromResponse(
    ResourceConcurrentModificationException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ResourceConcurrentModificationExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceConcurrentModificationExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'ResourceConcurrentModificationException',
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
    final helper =
        newBuiltValueToStringHelper('ResourceConcurrentModificationException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class ResourceConcurrentModificationExceptionAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<ResourceConcurrentModificationException> {
  const ResourceConcurrentModificationExceptionAwsJson11Serializer()
      : super('ResourceConcurrentModificationException');

  @override
  Iterable<Type> get types => const [
        ResourceConcurrentModificationException,
        _$ResourceConcurrentModificationException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ResourceConcurrentModificationException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceConcurrentModificationExceptionBuilder();
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
    final payload = (object as ResourceConcurrentModificationException);
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
