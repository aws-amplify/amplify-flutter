// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library aws_json1_1_v2.machine_learning.model.retry_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_json1_1_v2/src/machine_learning/model/retry_mode.dart'
    as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'retry_config.g.dart';

/// Configuration specific to retries.
abstract class RetryConfig
    with _i1.AWSEquatable<RetryConfig>
    implements Built<RetryConfig, RetryConfigBuilder> {
  /// Configuration specific to retries.
  factory RetryConfig({
    _i2.RetryMode? mode,
    int? maxAttempts,
  }) {
    return _$RetryConfig._(
      mode: mode,
      maxAttempts: maxAttempts,
    );
  }

  /// Configuration specific to retries.
  factory RetryConfig.build([void Function(RetryConfigBuilder) updates]) =
      _$RetryConfig;

  const RetryConfig._();

  static const List<_i3.SmithySerializer> serializers = [
    RetryConfigAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RetryConfigBuilder b) {}

  /// Controls the strategy used for retries.
  _i2.RetryMode? get mode;
  int? get maxAttempts;
  @override
  List<Object?> get props => [
        mode,
        maxAttempts,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RetryConfig');
    helper.add(
      'mode',
      mode,
    );
    helper.add(
      'maxAttempts',
      maxAttempts,
    );
    return helper.toString();
  }
}

class RetryConfigAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<RetryConfig> {
  const RetryConfigAwsJson11Serializer() : super('RetryConfig');

  @override
  Iterable<Type> get types => const [
        RetryConfig,
        _$RetryConfig,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  RetryConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RetryConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'mode':
          if (value != null) {
            result.mode = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.RetryMode),
            ) as _i2.RetryMode);
          }
          break;
        case 'max_attempts':
          if (value != null) {
            result.maxAttempts = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as RetryConfig);
    final result = <Object?>[];
    if (payload.mode != null) {
      result
        ..add('mode')
        ..add(serializers.serialize(
          payload.mode!,
          specifiedType: const FullType(_i2.RetryMode),
        ));
    }
    if (payload.maxAttempts != null) {
      result
        ..add('max_attempts')
        ..add(serializers.serialize(
          payload.maxAttempts!,
          specifiedType: const FullType(int),
        ));
    }
    return result;
  }
}
