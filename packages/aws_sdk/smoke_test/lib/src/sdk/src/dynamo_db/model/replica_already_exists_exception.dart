// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.replica_already_exists_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'replica_already_exists_exception.g.dart';

/// The specified replica is already part of the global table.
abstract class ReplicaAlreadyExistsException
    with
        _i1.AWSEquatable<ReplicaAlreadyExistsException>
    implements
        Built<ReplicaAlreadyExistsException,
            ReplicaAlreadyExistsExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The specified replica is already part of the global table.
  factory ReplicaAlreadyExistsException({String? message}) {
    return _$ReplicaAlreadyExistsException._(message: message);
  }

  /// The specified replica is already part of the global table.
  factory ReplicaAlreadyExistsException.build(
          [void Function(ReplicaAlreadyExistsExceptionBuilder) updates]) =
      _$ReplicaAlreadyExistsException;

  const ReplicaAlreadyExistsException._();

  /// Constructs a [ReplicaAlreadyExistsException] from a [payload] and [response].
  factory ReplicaAlreadyExistsException.fromResponse(
    ReplicaAlreadyExistsException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ReplicaAlreadyExistsExceptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicaAlreadyExistsExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'ReplicaAlreadyExistsException',
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
    final helper = newBuiltValueToStringHelper('ReplicaAlreadyExistsException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class ReplicaAlreadyExistsExceptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<ReplicaAlreadyExistsException> {
  const ReplicaAlreadyExistsExceptionAwsJson10Serializer()
      : super('ReplicaAlreadyExistsException');

  @override
  Iterable<Type> get types => const [
        ReplicaAlreadyExistsException,
        _$ReplicaAlreadyExistsException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ReplicaAlreadyExistsException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicaAlreadyExistsExceptionBuilder();
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
    final payload = (object as ReplicaAlreadyExistsException);
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
