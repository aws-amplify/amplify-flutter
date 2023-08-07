// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.execution_controls; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/ssm_controls.dart';

part 'execution_controls.g.dart';

/// The controls that Config uses for executing remediations.
abstract class ExecutionControls
    with _i1.AWSEquatable<ExecutionControls>
    implements Built<ExecutionControls, ExecutionControlsBuilder> {
  /// The controls that Config uses for executing remediations.
  factory ExecutionControls({SsmControls? ssmControls}) {
    return _$ExecutionControls._(ssmControls: ssmControls);
  }

  /// The controls that Config uses for executing remediations.
  factory ExecutionControls.build(
      [void Function(ExecutionControlsBuilder) updates]) = _$ExecutionControls;

  const ExecutionControls._();

  static const List<_i2.SmithySerializer<ExecutionControls>> serializers = [
    ExecutionControlsAwsJson11Serializer()
  ];

  /// A SsmControls object.
  SsmControls? get ssmControls;
  @override
  List<Object?> get props => [ssmControls];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExecutionControls')
      ..add(
        'ssmControls',
        ssmControls,
      );
    return helper.toString();
  }
}

class ExecutionControlsAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ExecutionControls> {
  const ExecutionControlsAwsJson11Serializer() : super('ExecutionControls');

  @override
  Iterable<Type> get types => const [
        ExecutionControls,
        _$ExecutionControls,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SsmControls':
          result.ssmControls.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SsmControls),
          ) as SsmControls));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ExecutionControls object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ExecutionControls(:ssmControls) = object;
    if (ssmControls != null) {
      result$
        ..add('SsmControls')
        ..add(serializers.serialize(
          ssmControls,
          specifiedType: const FullType(SsmControls),
        ));
    }
    return result$;
  }
}
