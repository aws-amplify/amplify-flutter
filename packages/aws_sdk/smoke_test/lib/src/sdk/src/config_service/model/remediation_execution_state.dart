// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.remediation_execution_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class RemediationExecutionState
    extends _i1.SmithyEnum<RemediationExecutionState> {
  const RemediationExecutionState._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const RemediationExecutionState._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const failed = RemediationExecutionState._(
    0,
    'FAILED',
    'FAILED',
  );

  static const inProgress = RemediationExecutionState._(
    1,
    'IN_PROGRESS',
    'IN_PROGRESS',
  );

  static const queued = RemediationExecutionState._(
    2,
    'QUEUED',
    'QUEUED',
  );

  static const succeeded = RemediationExecutionState._(
    3,
    'SUCCEEDED',
    'SUCCEEDED',
  );

  /// All values of [RemediationExecutionState].
  static const values = <RemediationExecutionState>[
    RemediationExecutionState.failed,
    RemediationExecutionState.inProgress,
    RemediationExecutionState.queued,
    RemediationExecutionState.succeeded,
  ];

  static const List<_i1.SmithySerializer<RemediationExecutionState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'RemediationExecutionState',
      values: values,
      sdkUnknown: RemediationExecutionState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension RemediationExecutionStateHelpers on List<RemediationExecutionState> {
  /// Returns the value of [RemediationExecutionState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RemediationExecutionState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RemediationExecutionState] whose value matches [value].
  RemediationExecutionState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
