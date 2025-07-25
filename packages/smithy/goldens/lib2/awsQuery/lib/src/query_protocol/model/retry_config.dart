// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library aws_query_v2.query_protocol.model.retry_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_query_v2/src/query_protocol/model/retry_mode.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'retry_config.g.dart';

/// Configuration specific to retries.
abstract class RetryConfig
    with _i1.AWSEquatable<RetryConfig>
    implements Built<RetryConfig, RetryConfigBuilder> {
  /// Configuration specific to retries.
  factory RetryConfig({RetryMode? mode, int? maxAttempts}) {
    return _$RetryConfig._(mode: mode, maxAttempts: maxAttempts);
  }

  /// Configuration specific to retries.
  factory RetryConfig.build([void Function(RetryConfigBuilder) updates]) =
      _$RetryConfig;

  const RetryConfig._();

  static const List<_i2.SmithySerializer<RetryConfig>> serializers = [
    RetryConfigAwsQuerySerializer(),
  ];

  /// Controls the strategy used for retries.
  RetryMode? get mode;
  int? get maxAttempts;
  @override
  List<Object?> get props => [mode, maxAttempts];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RetryConfig')
      ..add('mode', mode)
      ..add('maxAttempts', maxAttempts);
    return helper.toString();
  }
}

class RetryConfigAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<RetryConfig> {
  const RetryConfigAwsQuerySerializer() : super('RetryConfig');

  @override
  Iterable<Type> get types => const [RetryConfig, _$RetryConfig];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'awsQuery'),
  ];

  @override
  RetryConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RetryConfigBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'mode':
          result.mode =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(RetryMode),
                  )
                  as RetryMode);
        case 'max_attempts':
          result.maxAttempts =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )
                  as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RetryConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RetryConfigResponse',
        _i2.XmlNamespace('https://example.com/'),
      ),
    ];
    final RetryConfig(:mode, :maxAttempts) = object;
    if (mode != null) {
      result$
        ..add(const _i2.XmlElementName('mode'))
        ..add(
          serializers.serialize(mode, specifiedType: const FullType(RetryMode)),
        );
    }
    if (maxAttempts != null) {
      result$
        ..add(const _i2.XmlElementName('max_attempts'))
        ..add(
          serializers.serialize(
            maxAttempts,
            specifiedType: const FullType(int),
          ),
        );
    }
    return result$;
  }
}
