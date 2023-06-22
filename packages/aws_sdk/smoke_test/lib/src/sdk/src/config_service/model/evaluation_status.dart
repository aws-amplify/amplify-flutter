// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.evaluation_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_evaluation_status.dart'
    as _i2;

part 'evaluation_status.g.dart';

/// Returns status details of an evaluation.
abstract class EvaluationStatus
    with _i1.AWSEquatable<EvaluationStatus>
    implements Built<EvaluationStatus, EvaluationStatusBuilder> {
  /// Returns status details of an evaluation.
  factory EvaluationStatus({
    required _i2.ResourceEvaluationStatus status,
    String? failureReason,
  }) {
    return _$EvaluationStatus._(
      status: status,
      failureReason: failureReason,
    );
  }

  /// Returns status details of an evaluation.
  factory EvaluationStatus.build(
      [void Function(EvaluationStatusBuilder) updates]) = _$EvaluationStatus;

  const EvaluationStatus._();

  static const List<_i3.SmithySerializer<EvaluationStatus>> serializers = [
    EvaluationStatusAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EvaluationStatusBuilder b) {}

  /// The status of an execution. The valid values are In_Progress, Succeeded or Failed.
  _i2.ResourceEvaluationStatus get status;

  /// An explanation for failed execution status.
  String? get failureReason;
  @override
  List<Object?> get props => [
        status,
        failureReason,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EvaluationStatus')
      ..add(
        'status',
        status,
      )
      ..add(
        'failureReason',
        failureReason,
      );
    return helper.toString();
  }
}

class EvaluationStatusAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<EvaluationStatus> {
  const EvaluationStatusAwsJson11Serializer() : super('EvaluationStatus');

  @override
  Iterable<Type> get types => const [
        EvaluationStatus,
        _$EvaluationStatus,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  EvaluationStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EvaluationStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ResourceEvaluationStatus),
          ) as _i2.ResourceEvaluationStatus);
        case 'FailureReason':
          result.failureReason = (serializers.deserialize(
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
    EvaluationStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final EvaluationStatus(:status, :failureReason) = object;
    result$.addAll([
      'Status',
      serializers.serialize(
        status,
        specifiedType: const FullType(_i2.ResourceEvaluationStatus),
      ),
    ]);
    if (failureReason != null) {
      result$
        ..add('FailureReason')
        ..add(serializers.serialize(
          failureReason,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
