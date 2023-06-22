// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.detect_stack_set_drift_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'detect_stack_set_drift_output.g.dart';

abstract class DetectStackSetDriftOutput
    with _i1.AWSEquatable<DetectStackSetDriftOutput>
    implements
        Built<DetectStackSetDriftOutput, DetectStackSetDriftOutputBuilder> {
  factory DetectStackSetDriftOutput({String? operationId}) {
    return _$DetectStackSetDriftOutput._(operationId: operationId);
  }

  factory DetectStackSetDriftOutput.build(
          [void Function(DetectStackSetDriftOutputBuilder) updates]) =
      _$DetectStackSetDriftOutput;

  const DetectStackSetDriftOutput._();

  /// Constructs a [DetectStackSetDriftOutput] from a [payload] and [response].
  factory DetectStackSetDriftOutput.fromResponse(
    DetectStackSetDriftOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DetectStackSetDriftOutput>>
      serializers = [DetectStackSetDriftOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DetectStackSetDriftOutputBuilder b) {}

  /// The ID of the drift detection stack set operation.
  ///
  /// You can use this operation ID with DescribeStackSetOperation to monitor the progress of the drift detection operation.
  String? get operationId;
  @override
  List<Object?> get props => [operationId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DetectStackSetDriftOutput')
      ..add(
        'operationId',
        operationId,
      );
    return helper.toString();
  }
}

class DetectStackSetDriftOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<DetectStackSetDriftOutput> {
  const DetectStackSetDriftOutputAwsQuerySerializer()
      : super('DetectStackSetDriftOutput');

  @override
  Iterable<Type> get types => const [
        DetectStackSetDriftOutput,
        _$DetectStackSetDriftOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DetectStackSetDriftOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DetectStackSetDriftOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'OperationId':
          result.operationId = (serializers.deserialize(
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
    DetectStackSetDriftOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DetectStackSetDriftOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DetectStackSetDriftOutput(:operationId) = object;
    if (operationId != null) {
      result$
        ..add(const _i2.XmlElementName('OperationId'))
        ..add(serializers.serialize(
          operationId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
