// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.model.test_no_payload_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'test_no_payload_input_output.g.dart';

abstract class TestNoPayloadInputOutput
    with
        _i1.HttpInput<TestNoPayloadInputOutputPayload>,
        _i2.AWSEquatable<TestNoPayloadInputOutput>
    implements
        Built<TestNoPayloadInputOutput, TestNoPayloadInputOutputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<TestNoPayloadInputOutputPayload> {
  factory TestNoPayloadInputOutput({String? testId}) {
    return _$TestNoPayloadInputOutput._(testId: testId);
  }

  factory TestNoPayloadInputOutput.build(
          [void Function(TestNoPayloadInputOutputBuilder) updates]) =
      _$TestNoPayloadInputOutput;

  const TestNoPayloadInputOutput._();

  factory TestNoPayloadInputOutput.fromRequest(
    TestNoPayloadInputOutputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      TestNoPayloadInputOutput.build((b) {
        if (request.headers['X-Amz-Test-Id'] != null) {
          b.testId = request.headers['X-Amz-Test-Id']!;
        }
      });

  /// Constructs a [TestNoPayloadInputOutput] from a [payload] and [response].
  factory TestNoPayloadInputOutput.fromResponse(
    TestNoPayloadInputOutputPayload payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      TestNoPayloadInputOutput.build((b) {
        if (response.headers['X-Amz-Test-Id'] != null) {
          b.testId = response.headers['X-Amz-Test-Id']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    TestNoPayloadInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestNoPayloadInputOutputBuilder b) {}
  String? get testId;
  @override
  TestNoPayloadInputOutputPayload getPayload() =>
      TestNoPayloadInputOutputPayload();
  @override
  List<Object?> get props => [testId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TestNoPayloadInputOutput');
    helper.add(
      'testId',
      testId,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class TestNoPayloadInputOutputPayload
    with
        _i2.AWSEquatable<TestNoPayloadInputOutputPayload>
    implements
        Built<TestNoPayloadInputOutputPayload,
            TestNoPayloadInputOutputPayloadBuilder>,
        _i1.EmptyPayload {
  factory TestNoPayloadInputOutputPayload(
          [void Function(TestNoPayloadInputOutputPayloadBuilder) updates]) =
      _$TestNoPayloadInputOutputPayload;

  const TestNoPayloadInputOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestNoPayloadInputOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TestNoPayloadInputOutputPayload');
    return helper.toString();
  }
}

class TestNoPayloadInputOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<TestNoPayloadInputOutputPayload> {
  const TestNoPayloadInputOutputRestJson1Serializer()
      : super('TestNoPayloadInputOutput');

  @override
  Iterable<Type> get types => const [
        TestNoPayloadInputOutput,
        _$TestNoPayloadInputOutput,
        TestNoPayloadInputOutputPayload,
        _$TestNoPayloadInputOutputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  TestNoPayloadInputOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return TestNoPayloadInputOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
