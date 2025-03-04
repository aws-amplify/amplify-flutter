// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library ec2_query_v2.ec2_protocol.model.retry_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/retry_mode.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'retry_config.g.dart';

/// Configuration specific to retries.
abstract class RetryConfig
    with _i1.AWSEquatable<RetryConfig>
    implements Built<RetryConfig, RetryConfigBuilder> {
  /// Configuration specific to retries.
  factory RetryConfig({
    RetryMode? mode,
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

  static const List<_i2.SmithySerializer<RetryConfig>> serializers = [
    RetryConfigEc2QuerySerializer()
  ];

  /// Controls the strategy used for retries.
  RetryMode? get mode;
  int? get maxAttempts;
  @override
  List<Object?> get props => [
        mode,
        maxAttempts,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RetryConfig')
      ..add(
        'mode',
        mode,
      )
      ..add(
        'maxAttempts',
        maxAttempts,
      );
    return helper.toString();
  }
}

class RetryConfigEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<RetryConfig> {
  const RetryConfigEc2QuerySerializer() : super('RetryConfig');

  @override
  Iterable<Type> get types => const [
        RetryConfig,
        _$RetryConfig,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'mode':
          result.mode = (serializers.deserialize(
            value,
            specifiedType: const FullType(RetryMode),
          ) as RetryMode);
        case 'max_attempts':
          result.maxAttempts = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
      )
    ];
    final RetryConfig(:mode, :maxAttempts) = object;
    if (mode != null) {
      result$
        ..add(const _i2.XmlElementName('Mode'))
        ..add(serializers.serialize(
          mode,
          specifiedType: const FullType(RetryMode),
        ));
    }
    if (maxAttempts != null) {
      result$
        ..add(const _i2.XmlElementName('Max_attempts'))
        ..add(serializers.serialize(
          maxAttempts,
          specifiedType: const FullType(int),
        ));
    }
    return result$;
  }
}
