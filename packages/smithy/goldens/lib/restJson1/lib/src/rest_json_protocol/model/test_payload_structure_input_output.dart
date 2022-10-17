// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.model.test_payload_structure_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/payload_config.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'test_payload_structure_input_output.g.dart';

abstract class TestPayloadStructureInputOutput
    with
        _i1.HttpInput<_i2.PayloadConfig>,
        _i3.AWSEquatable<TestPayloadStructureInputOutput>
    implements
        Built<TestPayloadStructureInputOutput,
            TestPayloadStructureInputOutputBuilder>,
        _i1.HasPayload<_i2.PayloadConfig> {
  factory TestPayloadStructureInputOutput({
    _i2.PayloadConfig? payloadConfig,
    String? testId,
  }) {
    return _$TestPayloadStructureInputOutput._(
      payloadConfig: payloadConfig,
      testId: testId,
    );
  }

  factory TestPayloadStructureInputOutput.build(
          [void Function(TestPayloadStructureInputOutputBuilder) updates]) =
      _$TestPayloadStructureInputOutput;

  const TestPayloadStructureInputOutput._();

  factory TestPayloadStructureInputOutput.fromRequest(
    _i2.PayloadConfig? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      TestPayloadStructureInputOutput.build((b) {
        if (payload != null) {
          b.payloadConfig.replace(payload);
        }
        if (request.headers['x-amz-test-id'] != null) {
          b.testId = request.headers['x-amz-test-id']!;
        }
      });

  /// Constructs a [TestPayloadStructureInputOutput] from a [payload] and [response].
  factory TestPayloadStructureInputOutput.fromResponse(
    _i2.PayloadConfig? payload,
    _i3.AWSBaseHttpResponse response,
  ) =>
      TestPayloadStructureInputOutput.build((b) {
        if (payload != null) {
          b.payloadConfig.replace(payload);
        }
        if (response.headers['x-amz-test-id'] != null) {
          b.testId = response.headers['x-amz-test-id']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    TestPayloadStructureInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestPayloadStructureInputOutputBuilder b) {}
  _i2.PayloadConfig? get payloadConfig;
  String? get testId;
  @override
  _i2.PayloadConfig? getPayload() => payloadConfig ?? _i2.PayloadConfig();
  @override
  List<Object?> get props => [
        payloadConfig,
        testId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TestPayloadStructureInputOutput');
    helper.add(
      'payloadConfig',
      payloadConfig,
    );
    helper.add(
      'testId',
      testId,
    );
    return helper.toString();
  }
}

class TestPayloadStructureInputOutputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<_i2.PayloadConfig> {
  const TestPayloadStructureInputOutputRestJson1Serializer()
      : super('TestPayloadStructureInputOutput');

  @override
  Iterable<Type> get types => const [
        TestPayloadStructureInputOutput,
        _$TestPayloadStructureInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i2.PayloadConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(_i2.PayloadConfig),
    ) as _i2.PayloadConfig);
  }

  @override
  Object serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is TestPayloadStructureInputOutput
        ? object.getPayload()
        : (object as _i2.PayloadConfig?);
    return (serializers.serialize(
      payload!,
      specifiedType: const FullType(_i2.PayloadConfig),
    ) as Object);
  }
}
