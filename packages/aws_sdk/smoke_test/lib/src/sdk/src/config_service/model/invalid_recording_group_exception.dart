// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.invalid_recording_group_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_recording_group_exception.g.dart';

/// Indicates one of the following errors:
///
/// *   You have provided a combination of parameter values that is not valid. For example:
///
///     *   Setting the `allSupported` field of [RecordingGroup](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html) to `true`, but providing a non-empty list for the `resourceTypes`field of [RecordingGroup](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html).
///
///     *   Setting the `allSupported` field of [RecordingGroup](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html) to `true`, but also setting the `useOnly` field of [RecordingStrategy](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html) to `EXCLUSION\_BY\_RESOURCE_TYPES`.
///
/// *   Every parameter is either null, false, or empty.
///
/// *   You have reached the limit of the number of resource types you can provide for the recording group.
///
/// *   You have provided resource types or a recording strategy that are not valid.
abstract class InvalidRecordingGroupException
    with
        _i1.AWSEquatable<InvalidRecordingGroupException>
    implements
        Built<InvalidRecordingGroupException,
            InvalidRecordingGroupExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Indicates one of the following errors:
  ///
  /// *   You have provided a combination of parameter values that is not valid. For example:
  ///
  ///     *   Setting the `allSupported` field of [RecordingGroup](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html) to `true`, but providing a non-empty list for the `resourceTypes`field of [RecordingGroup](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html).
  ///
  ///     *   Setting the `allSupported` field of [RecordingGroup](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html) to `true`, but also setting the `useOnly` field of [RecordingStrategy](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html) to `EXCLUSION\_BY\_RESOURCE_TYPES`.
  ///
  /// *   Every parameter is either null, false, or empty.
  ///
  /// *   You have reached the limit of the number of resource types you can provide for the recording group.
  ///
  /// *   You have provided resource types or a recording strategy that are not valid.
  factory InvalidRecordingGroupException({String? message}) {
    return _$InvalidRecordingGroupException._(message: message);
  }

  /// Indicates one of the following errors:
  ///
  /// *   You have provided a combination of parameter values that is not valid. For example:
  ///
  ///     *   Setting the `allSupported` field of [RecordingGroup](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html) to `true`, but providing a non-empty list for the `resourceTypes`field of [RecordingGroup](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html).
  ///
  ///     *   Setting the `allSupported` field of [RecordingGroup](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html) to `true`, but also setting the `useOnly` field of [RecordingStrategy](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html) to `EXCLUSION\_BY\_RESOURCE_TYPES`.
  ///
  /// *   Every parameter is either null, false, or empty.
  ///
  /// *   You have reached the limit of the number of resource types you can provide for the recording group.
  ///
  /// *   You have provided resource types or a recording strategy that are not valid.
  factory InvalidRecordingGroupException.build(
          [void Function(InvalidRecordingGroupExceptionBuilder) updates]) =
      _$InvalidRecordingGroupException;

  const InvalidRecordingGroupException._();

  /// Constructs a [InvalidRecordingGroupException] from a [payload] and [response].
  factory InvalidRecordingGroupException.fromResponse(
    InvalidRecordingGroupException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<InvalidRecordingGroupException>>
      serializers = [InvalidRecordingGroupExceptionAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidRecordingGroupExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'InvalidRecordingGroupException',
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
    final helper = newBuiltValueToStringHelper('InvalidRecordingGroupException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class InvalidRecordingGroupExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<InvalidRecordingGroupException> {
  const InvalidRecordingGroupExceptionAwsJson11Serializer()
      : super('InvalidRecordingGroupException');

  @override
  Iterable<Type> get types => const [
        InvalidRecordingGroupException,
        _$InvalidRecordingGroupException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  InvalidRecordingGroupException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidRecordingGroupExceptionBuilder();
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
    InvalidRecordingGroupException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final InvalidRecordingGroupException(:message) = object;
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
