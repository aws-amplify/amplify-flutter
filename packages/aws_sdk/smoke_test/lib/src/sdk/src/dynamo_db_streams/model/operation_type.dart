// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db_streams.model.operation_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class OperationType extends _i1.SmithyEnum<OperationType> {
  const OperationType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const OperationType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const insert = OperationType._(
    0,
    'INSERT',
    'INSERT',
  );

  static const modify = OperationType._(
    1,
    'MODIFY',
    'MODIFY',
  );

  static const remove = OperationType._(
    2,
    'REMOVE',
    'REMOVE',
  );

  /// All values of [OperationType].
  static const values = <OperationType>[
    OperationType.insert,
    OperationType.modify,
    OperationType.remove,
  ];

  static const List<_i1.SmithySerializer<OperationType>> serializers = [
    _i1.SmithyEnumSerializer(
      'OperationType',
      values: values,
      sdkUnknown: OperationType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension OperationTypeHelpers on List<OperationType> {
  /// Returns the value of [OperationType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  OperationType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [OperationType] whose value matches [value].
  OperationType byValue(String value) => firstWhere((el) => el.value == value);
}
