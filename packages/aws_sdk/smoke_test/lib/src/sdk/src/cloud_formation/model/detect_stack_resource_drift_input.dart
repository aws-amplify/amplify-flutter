// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.detect_stack_resource_drift_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'detect_stack_resource_drift_input.g.dart';

abstract class DetectStackResourceDriftInput
    with
        _i1.HttpInput<DetectStackResourceDriftInput>,
        _i2.AWSEquatable<DetectStackResourceDriftInput>
    implements
        Built<DetectStackResourceDriftInput,
            DetectStackResourceDriftInputBuilder> {
  factory DetectStackResourceDriftInput({
    required String stackName,
    required String logicalResourceId,
  }) {
    return _$DetectStackResourceDriftInput._(
      stackName: stackName,
      logicalResourceId: logicalResourceId,
    );
  }

  factory DetectStackResourceDriftInput.build(
          [void Function(DetectStackResourceDriftInputBuilder) updates]) =
      _$DetectStackResourceDriftInput;

  const DetectStackResourceDriftInput._();

  factory DetectStackResourceDriftInput.fromRequest(
    DetectStackResourceDriftInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DetectStackResourceDriftInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DetectStackResourceDriftInputBuilder b) {}

  /// The name of the stack to which the resource belongs.
  String get stackName;

  /// The logical name of the resource for which to return drift information.
  String get logicalResourceId;
  @override
  DetectStackResourceDriftInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackName,
        logicalResourceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DetectStackResourceDriftInput');
    helper.add(
      'stackName',
      stackName,
    );
    helper.add(
      'logicalResourceId',
      logicalResourceId,
    );
    return helper.toString();
  }
}

class DetectStackResourceDriftInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DetectStackResourceDriftInput> {
  const DetectStackResourceDriftInputAwsQuerySerializer()
      : super('DetectStackResourceDriftInput');

  @override
  Iterable<Type> get types => const [
        DetectStackResourceDriftInput,
        _$DetectStackResourceDriftInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DetectStackResourceDriftInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DetectStackResourceDriftInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'StackName':
          result.stackName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'LogicalResourceId':
          result.logicalResourceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as DetectStackResourceDriftInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DetectStackResourceDriftInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('StackName'))
      ..add(serializers.serialize(
        payload.stackName,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('LogicalResourceId'))
      ..add(serializers.serialize(
        payload.logicalResourceId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
