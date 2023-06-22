// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.operation_result_filter_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class OperationResultFilterName
    extends _i1.SmithyEnum<OperationResultFilterName> {
  const OperationResultFilterName._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const OperationResultFilterName._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const operationResultStatus = OperationResultFilterName._(
    0,
    'OPERATION_RESULT_STATUS',
    'OPERATION_RESULT_STATUS',
  );

  /// All values of [OperationResultFilterName].
  static const values = <OperationResultFilterName>[
    OperationResultFilterName.operationResultStatus
  ];

  static const List<_i1.SmithySerializer<OperationResultFilterName>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'OperationResultFilterName',
      values: values,
      sdkUnknown: OperationResultFilterName._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension OperationResultFilterNameHelpers on List<OperationResultFilterName> {
  /// Returns the value of [OperationResultFilterName] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  OperationResultFilterName byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [OperationResultFilterName] whose value matches [value].
  OperationResultFilterName byValue(String value) =>
      firstWhere((el) => el.value == value);
}
