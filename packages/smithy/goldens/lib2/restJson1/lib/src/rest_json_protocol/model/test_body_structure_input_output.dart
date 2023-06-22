// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v2.rest_json_protocol.model.test_body_structure_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:rest_json1_v2/src/rest_json_protocol/model/test_config.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'test_body_structure_input_output.g.dart';

abstract class TestBodyStructureInputOutput
    with
        _i1.HttpInput<TestBodyStructureInputOutputPayload>,
        _i2.AWSEquatable<TestBodyStructureInputOutput>
    implements
        Built<TestBodyStructureInputOutput,
            TestBodyStructureInputOutputBuilder>,
        _i1.HasPayload<TestBodyStructureInputOutputPayload> {
  factory TestBodyStructureInputOutput({
    String? testId,
    _i3.TestConfig? testConfig,
  }) {
    return _$TestBodyStructureInputOutput._(
      testId: testId,
      testConfig: testConfig,
    );
  }

  factory TestBodyStructureInputOutput.build(
          [void Function(TestBodyStructureInputOutputBuilder) updates]) =
      _$TestBodyStructureInputOutput;

  const TestBodyStructureInputOutput._();

  factory TestBodyStructureInputOutput.fromRequest(
    TestBodyStructureInputOutputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      TestBodyStructureInputOutput.build((b) {
        if (payload.testConfig != null) {
          b.testConfig.replace(payload.testConfig!);
        }
        if (request.headers['x-amz-test-id'] != null) {
          b.testId = request.headers['x-amz-test-id']!;
        }
      });

  /// Constructs a [TestBodyStructureInputOutput] from a [payload] and [response].
  factory TestBodyStructureInputOutput.fromResponse(
    TestBodyStructureInputOutputPayload payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      TestBodyStructureInputOutput.build((b) {
        if (payload.testConfig != null) {
          b.testConfig.replace(payload.testConfig!);
        }
        if (response.headers['x-amz-test-id'] != null) {
          b.testId = response.headers['x-amz-test-id']!;
        }
      });

  static const List<_i1.SmithySerializer<TestBodyStructureInputOutputPayload>>
      serializers = [TestBodyStructureInputOutputRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestBodyStructureInputOutputBuilder b) {}
  String? get testId;
  _i3.TestConfig? get testConfig;
  @override
  TestBodyStructureInputOutputPayload getPayload() =>
      TestBodyStructureInputOutputPayload((b) {
        if (testConfig != null) {
          b.testConfig.replace(testConfig!);
        }
      });
  @override
  List<Object?> get props => [
        testId,
        testConfig,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TestBodyStructureInputOutput')
      ..add(
        'testId',
        testId,
      )
      ..add(
        'testConfig',
        testConfig,
      );
    return helper.toString();
  }
}

@_i4.internal
abstract class TestBodyStructureInputOutputPayload
    with
        _i2.AWSEquatable<TestBodyStructureInputOutputPayload>
    implements
        Built<TestBodyStructureInputOutputPayload,
            TestBodyStructureInputOutputPayloadBuilder> {
  factory TestBodyStructureInputOutputPayload(
          [void Function(TestBodyStructureInputOutputPayloadBuilder) updates]) =
      _$TestBodyStructureInputOutputPayload;

  const TestBodyStructureInputOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestBodyStructureInputOutputPayloadBuilder b) {}
  _i3.TestConfig? get testConfig;
  @override
  List<Object?> get props => [testConfig];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TestBodyStructureInputOutputPayload')
          ..add(
            'testConfig',
            testConfig,
          );
    return helper.toString();
  }
}

class TestBodyStructureInputOutputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<TestBodyStructureInputOutputPayload> {
  const TestBodyStructureInputOutputRestJson1Serializer()
      : super('TestBodyStructureInputOutput');

  @override
  Iterable<Type> get types => const [
        TestBodyStructureInputOutput,
        _$TestBodyStructureInputOutput,
        TestBodyStructureInputOutputPayload,
        _$TestBodyStructureInputOutputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  TestBodyStructureInputOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestBodyStructureInputOutputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'testConfig':
          result.testConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.TestConfig),
          ) as _i3.TestConfig));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TestBodyStructureInputOutputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final TestBodyStructureInputOutputPayload(:testConfig) = object;
    if (testConfig != null) {
      result$
        ..add('testConfig')
        ..add(serializers.serialize(
          testConfig,
          specifiedType: const FullType(_i3.TestConfig),
        ));
    }
    return result$;
  }
}
