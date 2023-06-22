// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.detect_stack_resource_drift_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_drift.dart'
    as _i2;

part 'detect_stack_resource_drift_output.g.dart';

abstract class DetectStackResourceDriftOutput
    with
        _i1.AWSEquatable<DetectStackResourceDriftOutput>
    implements
        Built<DetectStackResourceDriftOutput,
            DetectStackResourceDriftOutputBuilder> {
  factory DetectStackResourceDriftOutput(
      {required _i2.StackResourceDrift stackResourceDrift}) {
    return _$DetectStackResourceDriftOutput._(
        stackResourceDrift: stackResourceDrift);
  }

  factory DetectStackResourceDriftOutput.build(
          [void Function(DetectStackResourceDriftOutputBuilder) updates]) =
      _$DetectStackResourceDriftOutput;

  const DetectStackResourceDriftOutput._();

  /// Constructs a [DetectStackResourceDriftOutput] from a [payload] and [response].
  factory DetectStackResourceDriftOutput.fromResponse(
    DetectStackResourceDriftOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DetectStackResourceDriftOutput>>
      serializers = [DetectStackResourceDriftOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DetectStackResourceDriftOutputBuilder b) {}

  /// Information about whether the resource's actual configuration has drifted from its expected template configuration, including actual and expected property values and any differences detected.
  _i2.StackResourceDrift get stackResourceDrift;
  @override
  List<Object?> get props => [stackResourceDrift];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DetectStackResourceDriftOutput')
      ..add(
        'stackResourceDrift',
        stackResourceDrift,
      );
    return helper.toString();
  }
}

class DetectStackResourceDriftOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<DetectStackResourceDriftOutput> {
  const DetectStackResourceDriftOutputAwsQuerySerializer()
      : super('DetectStackResourceDriftOutput');

  @override
  Iterable<Type> get types => const [
        DetectStackResourceDriftOutput,
        _$DetectStackResourceDriftOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DetectStackResourceDriftOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DetectStackResourceDriftOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackResourceDrift':
          result.stackResourceDrift.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.StackResourceDrift),
          ) as _i2.StackResourceDrift));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DetectStackResourceDriftOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DetectStackResourceDriftOutputResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DetectStackResourceDriftOutput(:stackResourceDrift) = object;
    result$
      ..add(const _i3.XmlElementName('StackResourceDrift'))
      ..add(serializers.serialize(
        stackResourceDrift,
        specifiedType: const FullType(_i2.StackResourceDrift),
      ));
    return result$;
  }
}
