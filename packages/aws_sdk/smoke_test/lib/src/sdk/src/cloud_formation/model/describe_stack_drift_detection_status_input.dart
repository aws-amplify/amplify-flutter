// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.describe_stack_drift_detection_status_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_stack_drift_detection_status_input.g.dart';

abstract class DescribeStackDriftDetectionStatusInput
    with
        _i1.HttpInput<DescribeStackDriftDetectionStatusInput>,
        _i2.AWSEquatable<DescribeStackDriftDetectionStatusInput>
    implements
        Built<DescribeStackDriftDetectionStatusInput,
            DescribeStackDriftDetectionStatusInputBuilder> {
  factory DescribeStackDriftDetectionStatusInput(
      {required String stackDriftDetectionId}) {
    return _$DescribeStackDriftDetectionStatusInput._(
        stackDriftDetectionId: stackDriftDetectionId);
  }

  factory DescribeStackDriftDetectionStatusInput.build(
      [void Function(DescribeStackDriftDetectionStatusInputBuilder)
          updates]) = _$DescribeStackDriftDetectionStatusInput;

  const DescribeStackDriftDetectionStatusInput._();

  factory DescribeStackDriftDetectionStatusInput.fromRequest(
    DescribeStackDriftDetectionStatusInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeStackDriftDetectionStatusInput>>
      serializers = [
    DescribeStackDriftDetectionStatusInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeStackDriftDetectionStatusInputBuilder b) {}

  /// The ID of the drift detection results of this operation.
  ///
  /// CloudFormation generates new results, with a new drift detection ID, each time this operation is run. However, the number of drift results CloudFormation retains for any given stack, and for how long, may vary.
  String get stackDriftDetectionId;
  @override
  DescribeStackDriftDetectionStatusInput getPayload() => this;
  @override
  List<Object?> get props => [stackDriftDetectionId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeStackDriftDetectionStatusInput')
          ..add(
            'stackDriftDetectionId',
            stackDriftDetectionId,
          );
    return helper.toString();
  }
}

class DescribeStackDriftDetectionStatusInputAwsQuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeStackDriftDetectionStatusInput> {
  const DescribeStackDriftDetectionStatusInputAwsQuerySerializer()
      : super('DescribeStackDriftDetectionStatusInput');

  @override
  Iterable<Type> get types => const [
        DescribeStackDriftDetectionStatusInput,
        _$DescribeStackDriftDetectionStatusInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeStackDriftDetectionStatusInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStackDriftDetectionStatusInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackDriftDetectionId':
          result.stackDriftDetectionId = (serializers.deserialize(
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
    DescribeStackDriftDetectionStatusInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeStackDriftDetectionStatusInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeStackDriftDetectionStatusInput(:stackDriftDetectionId) =
        object;
    result$
      ..add(const _i1.XmlElementName('StackDriftDetectionId'))
      ..add(serializers.serialize(
        stackDriftDetectionId,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
