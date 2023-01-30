// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.conditional_check_failed_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'conditional_check_failed_exception.g.dart';

/// A condition specified in the operation could not be evaluated.
abstract class ConditionalCheckFailedException
    with
        _i1.AWSEquatable<ConditionalCheckFailedException>
    implements
        Built<ConditionalCheckFailedException,
            ConditionalCheckFailedExceptionBuilder>,
        _i2.SmithyHttpException {
  /// A condition specified in the operation could not be evaluated.
  factory ConditionalCheckFailedException({String? message}) {
    return _$ConditionalCheckFailedException._(message: message);
  }

  /// A condition specified in the operation could not be evaluated.
  factory ConditionalCheckFailedException.build(
          [void Function(ConditionalCheckFailedExceptionBuilder) updates]) =
      _$ConditionalCheckFailedException;

  const ConditionalCheckFailedException._();

  /// Constructs a [ConditionalCheckFailedException] from a [payload] and [response].
  factory ConditionalCheckFailedException.fromResponse(
    ConditionalCheckFailedException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ConditionalCheckFailedExceptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConditionalCheckFailedExceptionBuilder b) {}

  /// The conditional request failed.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'ConditionalCheckFailedException',
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
        newBuiltValueToStringHelper('ConditionalCheckFailedException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class ConditionalCheckFailedExceptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<ConditionalCheckFailedException> {
  const ConditionalCheckFailedExceptionAwsJson10Serializer()
      : super('ConditionalCheckFailedException');

  @override
  Iterable<Type> get types => const [
        ConditionalCheckFailedException,
        _$ConditionalCheckFailedException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ConditionalCheckFailedException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConditionalCheckFailedExceptionBuilder();
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
    final payload = (object as ConditionalCheckFailedException);
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
