// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stack_set_operation_action; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class StackSetOperationAction extends _i1.SmithyEnum<StackSetOperationAction> {
  const StackSetOperationAction._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const StackSetOperationAction._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const create = StackSetOperationAction._(
    0,
    'CREATE',
    'CREATE',
  );

  static const delete = StackSetOperationAction._(
    1,
    'DELETE',
    'DELETE',
  );

  static const detectDrift = StackSetOperationAction._(
    2,
    'DETECT_DRIFT',
    'DETECT_DRIFT',
  );

  static const update = StackSetOperationAction._(
    3,
    'UPDATE',
    'UPDATE',
  );

  /// All values of [StackSetOperationAction].
  static const values = <StackSetOperationAction>[
    StackSetOperationAction.create,
    StackSetOperationAction.delete,
    StackSetOperationAction.detectDrift,
    StackSetOperationAction.update,
  ];

  static const List<_i1.SmithySerializer<StackSetOperationAction>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'StackSetOperationAction',
      values: values,
      sdkUnknown: StackSetOperationAction._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension StackSetOperationActionHelpers on List<StackSetOperationAction> {
  /// Returns the value of [StackSetOperationAction] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  StackSetOperationAction byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [StackSetOperationAction] whose value matches [value].
  StackSetOperationAction byValue(String value) =>
      firstWhere((el) => el.value == value);
}
