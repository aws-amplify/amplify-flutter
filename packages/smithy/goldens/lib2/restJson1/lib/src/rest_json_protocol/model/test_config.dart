// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v2.rest_json_protocol.model.test_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'test_config.g.dart';

abstract class TestConfig
    with _i1.AWSEquatable<TestConfig>
    implements Built<TestConfig, TestConfigBuilder> {
  factory TestConfig({int? timeout}) {
    return _$TestConfig._(timeout: timeout);
  }

  factory TestConfig.build([void Function(TestConfigBuilder) updates]) =
      _$TestConfig;

  const TestConfig._();

  static const List<_i2.SmithySerializer<TestConfig>> serializers = [
    TestConfigRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestConfigBuilder b) {}
  int? get timeout;
  @override
  List<Object?> get props => [timeout];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TestConfig')
      ..add(
        'timeout',
        timeout,
      );
    return helper.toString();
  }
}

class TestConfigRestJson1Serializer
    extends _i2.StructuredSmithySerializer<TestConfig> {
  const TestConfigRestJson1Serializer() : super('TestConfig');

  @override
  Iterable<Type> get types => const [
        TestConfig,
        _$TestConfig,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  TestConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'timeout':
          result.timeout = (serializers.deserialize(
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
    TestConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final TestConfig(:timeout) = object;
    if (timeout != null) {
      result$
        ..add('timeout')
        ..add(serializers.serialize(
          timeout,
          specifiedType: const FullType(int),
        ));
    }
    return result$;
  }
}
