// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.max_number_of_retention_configurations_exceeded_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'max_number_of_retention_configurations_exceeded_exception.g.dart';

/// Failed to add the retention configuration because a retention configuration with that name already exists.
abstract class MaxNumberOfRetentionConfigurationsExceededException
    with
        _i1.AWSEquatable<MaxNumberOfRetentionConfigurationsExceededException>
    implements
        Built<MaxNumberOfRetentionConfigurationsExceededException,
            MaxNumberOfRetentionConfigurationsExceededExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Failed to add the retention configuration because a retention configuration with that name already exists.
  factory MaxNumberOfRetentionConfigurationsExceededException(
      {String? message}) {
    return _$MaxNumberOfRetentionConfigurationsExceededException._(
        message: message);
  }

  /// Failed to add the retention configuration because a retention configuration with that name already exists.
  factory MaxNumberOfRetentionConfigurationsExceededException.build(
      [void Function(MaxNumberOfRetentionConfigurationsExceededExceptionBuilder)
          updates]) = _$MaxNumberOfRetentionConfigurationsExceededException;

  const MaxNumberOfRetentionConfigurationsExceededException._();

  /// Constructs a [MaxNumberOfRetentionConfigurationsExceededException] from a [payload] and [response].
  factory MaxNumberOfRetentionConfigurationsExceededException.fromResponse(
    MaxNumberOfRetentionConfigurationsExceededException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    MaxNumberOfRetentionConfigurationsExceededExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      MaxNumberOfRetentionConfigurationsExceededExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'MaxNumberOfRetentionConfigurationsExceededException',
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
    final helper = newBuiltValueToStringHelper(
        'MaxNumberOfRetentionConfigurationsExceededException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class MaxNumberOfRetentionConfigurationsExceededExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<
        MaxNumberOfRetentionConfigurationsExceededException> {
  const MaxNumberOfRetentionConfigurationsExceededExceptionAwsJson11Serializer()
      : super('MaxNumberOfRetentionConfigurationsExceededException');

  @override
  Iterable<Type> get types => const [
        MaxNumberOfRetentionConfigurationsExceededException,
        _$MaxNumberOfRetentionConfigurationsExceededException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  MaxNumberOfRetentionConfigurationsExceededException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MaxNumberOfRetentionConfigurationsExceededExceptionBuilder();
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
    final payload =
        (object as MaxNumberOfRetentionConfigurationsExceededException);
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
