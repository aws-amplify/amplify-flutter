// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.execution_controls; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/ssm_controls.dart'
    as _i2;

part 'execution_controls.g.dart';

/// The controls that Config uses for executing remediations.
abstract class ExecutionControls
    with _i1.AWSEquatable<ExecutionControls>
    implements Built<ExecutionControls, ExecutionControlsBuilder> {
  /// The controls that Config uses for executing remediations.
  factory ExecutionControls({_i2.SsmControls? ssmControls}) {
    return _$ExecutionControls._(ssmControls: ssmControls);
  }

  /// The controls that Config uses for executing remediations.
  factory ExecutionControls.build(
      [void Function(ExecutionControlsBuilder) updates]) = _$ExecutionControls;

  const ExecutionControls._();

  static const List<_i3.SmithySerializer> serializers = [
    ExecutionControlsAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExecutionControlsBuilder b) {}

  /// A SsmControls object.
  _i2.SsmControls? get ssmControls;
  @override
  List<Object?> get props => [ssmControls];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExecutionControls');
    helper.add(
      'ssmControls',
      ssmControls,
    );
    return helper.toString();
  }
}

class ExecutionControlsAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ExecutionControls> {
  const ExecutionControlsAwsJson11Serializer() : super('ExecutionControls');

  @override
  Iterable<Type> get types => const [
        ExecutionControls,
        _$ExecutionControls,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ExecutionControls deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExecutionControlsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'SsmControls':
          if (value != null) {
            result.ssmControls.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.SsmControls),
            ) as _i2.SsmControls));
          }
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
    final payload = (object as ExecutionControls);
    final result = <Object?>[];
    if (payload.ssmControls != null) {
      result
        ..add('SsmControls')
        ..add(serializers.serialize(
          payload.ssmControls!,
          specifiedType: const FullType(_i2.SsmControls),
        ));
    }
    return result;
  }
}
