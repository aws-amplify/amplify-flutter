// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.remediation_execution_step_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class RemediationExecutionStepState
    extends _i1.SmithyEnum<RemediationExecutionStepState> {
  const RemediationExecutionStepState._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const RemediationExecutionStepState._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const failed = RemediationExecutionStepState._(
    0,
    'FAILED',
    'FAILED',
  );

  static const pending = RemediationExecutionStepState._(
    1,
    'PENDING',
    'PENDING',
  );

  static const succeeded = RemediationExecutionStepState._(
    2,
    'SUCCEEDED',
    'SUCCEEDED',
  );

  /// All values of [RemediationExecutionStepState].
  static const values = <RemediationExecutionStepState>[
    RemediationExecutionStepState.failed,
    RemediationExecutionStepState.pending,
    RemediationExecutionStepState.succeeded,
  ];

  static const List<_i1.SmithySerializer<RemediationExecutionStepState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'RemediationExecutionStepState',
      values: values,
      sdkUnknown: RemediationExecutionStepState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension RemediationExecutionStepStateHelpers
    on List<RemediationExecutionStepState> {
  /// Returns the value of [RemediationExecutionStepState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RemediationExecutionStepState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RemediationExecutionStepState] whose value matches [value].
  RemediationExecutionStepState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
