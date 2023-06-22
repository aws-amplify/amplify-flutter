// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.detect_stack_drift_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'detect_stack_drift_output.g.dart';

abstract class DetectStackDriftOutput
    with _i1.AWSEquatable<DetectStackDriftOutput>
    implements Built<DetectStackDriftOutput, DetectStackDriftOutputBuilder> {
  factory DetectStackDriftOutput({required String stackDriftDetectionId}) {
    return _$DetectStackDriftOutput._(
        stackDriftDetectionId: stackDriftDetectionId);
  }

  factory DetectStackDriftOutput.build(
          [void Function(DetectStackDriftOutputBuilder) updates]) =
      _$DetectStackDriftOutput;

  const DetectStackDriftOutput._();

  /// Constructs a [DetectStackDriftOutput] from a [payload] and [response].
  factory DetectStackDriftOutput.fromResponse(
    DetectStackDriftOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DetectStackDriftOutput>> serializers =
      [DetectStackDriftOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DetectStackDriftOutputBuilder b) {}

  /// The ID of the drift detection results of this operation.
  ///
  /// CloudFormation generates new results, with a new drift detection ID, each time this operation is run. However, the number of drift results CloudFormation retains for any given stack, and for how long, may vary.
  String get stackDriftDetectionId;
  @override
  List<Object?> get props => [stackDriftDetectionId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DetectStackDriftOutput')
      ..add(
        'stackDriftDetectionId',
        stackDriftDetectionId,
      );
    return helper.toString();
  }
}

class DetectStackDriftOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<DetectStackDriftOutput> {
  const DetectStackDriftOutputAwsQuerySerializer()
      : super('DetectStackDriftOutput');

  @override
  Iterable<Type> get types => const [
        DetectStackDriftOutput,
        _$DetectStackDriftOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DetectStackDriftOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DetectStackDriftOutputBuilder();
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
    DetectStackDriftOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DetectStackDriftOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DetectStackDriftOutput(:stackDriftDetectionId) = object;
    result$
      ..add(const _i2.XmlElementName('StackDriftDetectionId'))
      ..add(serializers.serialize(
        stackDriftDetectionId,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
