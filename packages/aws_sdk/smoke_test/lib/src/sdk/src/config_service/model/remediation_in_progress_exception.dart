// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.remediation_in_progress_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'remediation_in_progress_exception.g.dart';

/// Remediation action is in progress. You can either cancel execution in Amazon Web Services Systems Manager or wait and try again later.
abstract class RemediationInProgressException
    with
        _i1.AWSEquatable<RemediationInProgressException>
    implements
        Built<RemediationInProgressException,
            RemediationInProgressExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Remediation action is in progress. You can either cancel execution in Amazon Web Services Systems Manager or wait and try again later.
  factory RemediationInProgressException({String? message}) {
    return _$RemediationInProgressException._(message: message);
  }

  /// Remediation action is in progress. You can either cancel execution in Amazon Web Services Systems Manager or wait and try again later.
  factory RemediationInProgressException.build(
          [void Function(RemediationInProgressExceptionBuilder) updates]) =
      _$RemediationInProgressException;

  const RemediationInProgressException._();

  /// Constructs a [RemediationInProgressException] from a [payload] and [response].
  factory RemediationInProgressException.fromResponse(
    RemediationInProgressException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<RemediationInProgressException>>
      serializers = [RemediationInProgressExceptionAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RemediationInProgressExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'RemediationInProgressException',
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
    final helper = newBuiltValueToStringHelper('RemediationInProgressException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class RemediationInProgressExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<RemediationInProgressException> {
  const RemediationInProgressExceptionAwsJson11Serializer()
      : super('RemediationInProgressException');

  @override
  Iterable<Type> get types => const [
        RemediationInProgressException,
        _$RemediationInProgressException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  RemediationInProgressException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemediationInProgressExceptionBuilder();
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
    RemediationInProgressException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RemediationInProgressException(:message) = object;
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
