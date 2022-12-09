// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.point_in_time_recovery_unavailable_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'point_in_time_recovery_unavailable_exception.g.dart';

/// Point in time recovery has not yet been enabled for this source table.
abstract class PointInTimeRecoveryUnavailableException
    with
        _i1.AWSEquatable<PointInTimeRecoveryUnavailableException>
    implements
        Built<PointInTimeRecoveryUnavailableException,
            PointInTimeRecoveryUnavailableExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Point in time recovery has not yet been enabled for this source table.
  factory PointInTimeRecoveryUnavailableException({String? message}) {
    return _$PointInTimeRecoveryUnavailableException._(message: message);
  }

  /// Point in time recovery has not yet been enabled for this source table.
  factory PointInTimeRecoveryUnavailableException.build(
      [void Function(PointInTimeRecoveryUnavailableExceptionBuilder)
          updates]) = _$PointInTimeRecoveryUnavailableException;

  const PointInTimeRecoveryUnavailableException._();

  /// Constructs a [PointInTimeRecoveryUnavailableException] from a [payload] and [response].
  factory PointInTimeRecoveryUnavailableException.fromResponse(
    PointInTimeRecoveryUnavailableException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    PointInTimeRecoveryUnavailableExceptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PointInTimeRecoveryUnavailableExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'PointInTimeRecoveryUnavailableException',
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
        newBuiltValueToStringHelper('PointInTimeRecoveryUnavailableException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class PointInTimeRecoveryUnavailableExceptionAwsJson10Serializer extends _i2
    .StructuredSmithySerializer<PointInTimeRecoveryUnavailableException> {
  const PointInTimeRecoveryUnavailableExceptionAwsJson10Serializer()
      : super('PointInTimeRecoveryUnavailableException');

  @override
  Iterable<Type> get types => const [
        PointInTimeRecoveryUnavailableException,
        _$PointInTimeRecoveryUnavailableException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  PointInTimeRecoveryUnavailableException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PointInTimeRecoveryUnavailableExceptionBuilder();
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
    final payload = (object as PointInTimeRecoveryUnavailableException);
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
