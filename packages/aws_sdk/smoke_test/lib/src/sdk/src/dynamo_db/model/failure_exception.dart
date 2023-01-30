// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.failure_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'failure_exception.g.dart';

/// Represents a failure a contributor insights operation.
abstract class FailureException
    with _i1.AWSEquatable<FailureException>
    implements Built<FailureException, FailureExceptionBuilder> {
  /// Represents a failure a contributor insights operation.
  factory FailureException({
    String? exceptionDescription,
    String? exceptionName,
  }) {
    return _$FailureException._(
      exceptionDescription: exceptionDescription,
      exceptionName: exceptionName,
    );
  }

  /// Represents a failure a contributor insights operation.
  factory FailureException.build(
      [void Function(FailureExceptionBuilder) updates]) = _$FailureException;

  const FailureException._();

  static const List<_i2.SmithySerializer> serializers = [
    FailureExceptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FailureExceptionBuilder b) {}

  /// Description of the failure.
  String? get exceptionDescription;

  /// Exception name.
  String? get exceptionName;
  @override
  List<Object?> get props => [
        exceptionDescription,
        exceptionName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FailureException');
    helper.add(
      'exceptionDescription',
      exceptionDescription,
    );
    helper.add(
      'exceptionName',
      exceptionName,
    );
    return helper.toString();
  }
}

class FailureExceptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<FailureException> {
  const FailureExceptionAwsJson10Serializer() : super('FailureException');

  @override
  Iterable<Type> get types => const [
        FailureException,
        _$FailureException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  FailureException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FailureExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ExceptionDescription':
          if (value != null) {
            result.exceptionDescription = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ExceptionName':
          if (value != null) {
            result.exceptionName = (serializers.deserialize(
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
    final payload = (object as FailureException);
    final result = <Object?>[];
    if (payload.exceptionDescription != null) {
      result
        ..add('ExceptionDescription')
        ..add(serializers.serialize(
          payload.exceptionDescription!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.exceptionName != null) {
      result
        ..add('ExceptionName')
        ..add(serializers.serialize(
          payload.exceptionName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
