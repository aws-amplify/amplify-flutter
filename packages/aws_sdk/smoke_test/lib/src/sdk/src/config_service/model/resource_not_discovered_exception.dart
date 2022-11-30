// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.resource_not_discovered_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'resource_not_discovered_exception.g.dart';

/// You have specified a resource that is either unknown or has not been discovered.
abstract class ResourceNotDiscoveredException
    with
        _i1.AWSEquatable<ResourceNotDiscoveredException>
    implements
        Built<ResourceNotDiscoveredException,
            ResourceNotDiscoveredExceptionBuilder>,
        _i2.SmithyHttpException {
  /// You have specified a resource that is either unknown or has not been discovered.
  factory ResourceNotDiscoveredException({String? message}) {
    return _$ResourceNotDiscoveredException._(message: message);
  }

  /// You have specified a resource that is either unknown or has not been discovered.
  factory ResourceNotDiscoveredException.build(
          [void Function(ResourceNotDiscoveredExceptionBuilder) updates]) =
      _$ResourceNotDiscoveredException;

  const ResourceNotDiscoveredException._();

  /// Constructs a [ResourceNotDiscoveredException] from a [payload] and [response].
  factory ResourceNotDiscoveredException.fromResponse(
    ResourceNotDiscoveredException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ResourceNotDiscoveredExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceNotDiscoveredExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'ResourceNotDiscoveredException',
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
        newBuiltValueToStringHelper('ResourceNotDiscoveredException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class ResourceNotDiscoveredExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ResourceNotDiscoveredException> {
  const ResourceNotDiscoveredExceptionAwsJson11Serializer()
      : super('ResourceNotDiscoveredException');

  @override
  Iterable<Type> get types => const [
        ResourceNotDiscoveredException,
        _$ResourceNotDiscoveredException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ResourceNotDiscoveredException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceNotDiscoveredExceptionBuilder();
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
    final payload = (object as ResourceNotDiscoveredException);
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
