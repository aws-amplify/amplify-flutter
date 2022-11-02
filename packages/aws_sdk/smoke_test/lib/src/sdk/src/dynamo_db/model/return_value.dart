// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.return_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ReturnValue extends _i1.SmithyEnum<ReturnValue> {
  const ReturnValue._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ReturnValue._sdkUnknown(String value) : super.sdkUnknown(value);

  static const allNew = ReturnValue._(
    0,
    'ALL_NEW',
    'ALL_NEW',
  );

  static const allOld = ReturnValue._(
    1,
    'ALL_OLD',
    'ALL_OLD',
  );

  static const none = ReturnValue._(
    2,
    'NONE',
    'NONE',
  );

  static const updatedNew = ReturnValue._(
    3,
    'UPDATED_NEW',
    'UPDATED_NEW',
  );

  static const updatedOld = ReturnValue._(
    4,
    'UPDATED_OLD',
    'UPDATED_OLD',
  );

  /// All values of [ReturnValue].
  static const values = <ReturnValue>[
    ReturnValue.allNew,
    ReturnValue.allOld,
    ReturnValue.none,
    ReturnValue.updatedNew,
    ReturnValue.updatedOld,
  ];

  static const List<_i1.SmithySerializer<ReturnValue>> serializers = [
    _i1.SmithyEnumSerializer(
      'ReturnValue',
      values: values,
      sdkUnknown: ReturnValue._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension ReturnValueHelpers on List<ReturnValue> {
  /// Returns the value of [ReturnValue] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ReturnValue byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ReturnValue] whose value matches [value].
  ReturnValue byValue(String value) => firstWhere((el) => el.value == value);
}
