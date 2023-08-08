// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity.model.resource_conflict_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'resource_conflict_exception.g.dart';

/// Thrown when a user tries to use a login which is already linked to another account.
abstract class ResourceConflictException
    with _i1.AWSEquatable<ResourceConflictException>
    implements
        Built<ResourceConflictException, ResourceConflictExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Thrown when a user tries to use a login which is already linked to another account.
  factory ResourceConflictException({String? message}) {
    return _$ResourceConflictException._(message: message);
  }

  /// Thrown when a user tries to use a login which is already linked to another account.
  factory ResourceConflictException.build(
          [void Function(ResourceConflictExceptionBuilder) updates]) =
      _$ResourceConflictException;

  const ResourceConflictException._();

  /// Constructs a [ResourceConflictException] from a [payload] and [response].
  factory ResourceConflictException.fromResponse(
    ResourceConflictException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<ResourceConflictException>>
      serializers = [ResourceConflictExceptionAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceConflictExceptionBuilder b) {}

  /// The message returned by a ResourceConflictException.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cognitoidentity',
        shape: 'ResourceConflictException',
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
    final helper = newBuiltValueToStringHelper('ResourceConflictException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class ResourceConflictExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ResourceConflictException> {
  const ResourceConflictExceptionAwsJson11Serializer()
      : super('ResourceConflictException');

  @override
  Iterable<Type> get types => const [
        ResourceConflictException,
        _$ResourceConflictException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ResourceConflictException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceConflictExceptionBuilder();
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
    ResourceConflictException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ResourceConflictException(:message) = object;
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
