// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.entity_already_exists_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'entity_already_exists_exception.g.dart';

/// The request was rejected because it attempted to create a resource that already exists.
abstract class EntityAlreadyExistsException
    with
        _i1.AWSEquatable<EntityAlreadyExistsException>
    implements
        Built<EntityAlreadyExistsException,
            EntityAlreadyExistsExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The request was rejected because it attempted to create a resource that already exists.
  factory EntityAlreadyExistsException({String? message}) {
    return _$EntityAlreadyExistsException._(message: message);
  }

  /// The request was rejected because it attempted to create a resource that already exists.
  factory EntityAlreadyExistsException.build(
          [void Function(EntityAlreadyExistsExceptionBuilder) updates]) =
      _$EntityAlreadyExistsException;

  const EntityAlreadyExistsException._();

  /// Constructs a [EntityAlreadyExistsException] from a [payload] and [response].
  factory EntityAlreadyExistsException.fromResponse(
    EntityAlreadyExistsException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    EntityAlreadyExistsExceptionAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EntityAlreadyExistsExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.iam',
        shape: 'EntityAlreadyExistsException',
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
    final helper = newBuiltValueToStringHelper('EntityAlreadyExistsException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class EntityAlreadyExistsExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<EntityAlreadyExistsException> {
  const EntityAlreadyExistsExceptionAwsQuerySerializer()
      : super('EntityAlreadyExistsException');

  @override
  Iterable<Type> get types => const [
        EntityAlreadyExistsException,
        _$EntityAlreadyExistsException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  EntityAlreadyExistsException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityAlreadyExistsExceptionBuilder();
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as EntityAlreadyExistsException);
    final result = <Object?>[
      const _i2.XmlElementName(
        'EntityAlreadyExistsExceptionResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final EntityAlreadyExistsException(:message) = payload;
    if (message != null) {
      result
        ..add(const _i2.XmlElementName('message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
