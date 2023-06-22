// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    String? exceptionName,
    String? exceptionDescription,
  }) {
    return _$FailureException._(
      exceptionName: exceptionName,
      exceptionDescription: exceptionDescription,
    );
  }

  /// Represents a failure a contributor insights operation.
  factory FailureException.build(
      [void Function(FailureExceptionBuilder) updates]) = _$FailureException;

  const FailureException._();

  static const List<_i2.SmithySerializer<FailureException>> serializers = [
    FailureExceptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FailureExceptionBuilder b) {}

  /// Exception name.
  String? get exceptionName;

  /// Description of the failure.
  String? get exceptionDescription;
  @override
  List<Object?> get props => [
        exceptionName,
        exceptionDescription,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FailureException')
      ..add(
        'exceptionName',
        exceptionName,
      )
      ..add(
        'exceptionDescription',
        exceptionDescription,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ExceptionName':
          result.exceptionName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ExceptionDescription':
          result.exceptionDescription = (serializers.deserialize(
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
    FailureException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final FailureException(:exceptionName, :exceptionDescription) = object;
    if (exceptionName != null) {
      result$
        ..add('ExceptionName')
        ..add(serializers.serialize(
          exceptionName,
          specifiedType: const FullType(String),
        ));
    }
    if (exceptionDescription != null) {
      result$
        ..add('ExceptionDescription')
        ..add(serializers.serialize(
          exceptionDescription,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
