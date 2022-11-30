// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.invalid_restore_time_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_restore_time_exception.g.dart';

/// An invalid restore time was specified. RestoreDateTime must be between EarliestRestorableDateTime and LatestRestorableDateTime.
abstract class InvalidRestoreTimeException
    with _i1.AWSEquatable<InvalidRestoreTimeException>
    implements
        Built<InvalidRestoreTimeException, InvalidRestoreTimeExceptionBuilder>,
        _i2.SmithyHttpException {
  /// An invalid restore time was specified. RestoreDateTime must be between EarliestRestorableDateTime and LatestRestorableDateTime.
  factory InvalidRestoreTimeException({String? message}) {
    return _$InvalidRestoreTimeException._(message: message);
  }

  /// An invalid restore time was specified. RestoreDateTime must be between EarliestRestorableDateTime and LatestRestorableDateTime.
  factory InvalidRestoreTimeException.build(
          [void Function(InvalidRestoreTimeExceptionBuilder) updates]) =
      _$InvalidRestoreTimeException;

  const InvalidRestoreTimeException._();

  /// Constructs a [InvalidRestoreTimeException] from a [payload] and [response].
  factory InvalidRestoreTimeException.fromResponse(
    InvalidRestoreTimeException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    InvalidRestoreTimeExceptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidRestoreTimeExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'InvalidRestoreTimeException',
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
    final helper = newBuiltValueToStringHelper('InvalidRestoreTimeException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class InvalidRestoreTimeExceptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<InvalidRestoreTimeException> {
  const InvalidRestoreTimeExceptionAwsJson10Serializer()
      : super('InvalidRestoreTimeException');

  @override
  Iterable<Type> get types => const [
        InvalidRestoreTimeException,
        _$InvalidRestoreTimeException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  InvalidRestoreTimeException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidRestoreTimeExceptionBuilder();
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
    final payload = (object as InvalidRestoreTimeException);
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
