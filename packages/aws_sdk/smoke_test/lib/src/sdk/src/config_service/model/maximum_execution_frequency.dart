// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.maximum_execution_frequency; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class MaximumExecutionFrequency
    extends _i1.SmithyEnum<MaximumExecutionFrequency> {
  const MaximumExecutionFrequency._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const MaximumExecutionFrequency._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const oneHour = MaximumExecutionFrequency._(
    0,
    'One_Hour',
    'One_Hour',
  );

  static const sixHours = MaximumExecutionFrequency._(
    1,
    'Six_Hours',
    'Six_Hours',
  );

  static const threeHours = MaximumExecutionFrequency._(
    2,
    'Three_Hours',
    'Three_Hours',
  );

  static const twelveHours = MaximumExecutionFrequency._(
    3,
    'Twelve_Hours',
    'Twelve_Hours',
  );

  static const twentyFourHours = MaximumExecutionFrequency._(
    4,
    'TwentyFour_Hours',
    'TwentyFour_Hours',
  );

  /// All values of [MaximumExecutionFrequency].
  static const values = <MaximumExecutionFrequency>[
    MaximumExecutionFrequency.oneHour,
    MaximumExecutionFrequency.sixHours,
    MaximumExecutionFrequency.threeHours,
    MaximumExecutionFrequency.twelveHours,
    MaximumExecutionFrequency.twentyFourHours,
  ];

  static const List<_i1.SmithySerializer<MaximumExecutionFrequency>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'MaximumExecutionFrequency',
      values: values,
      sdkUnknown: MaximumExecutionFrequency._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension MaximumExecutionFrequencyHelpers on List<MaximumExecutionFrequency> {
  /// Returns the value of [MaximumExecutionFrequency] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  MaximumExecutionFrequency byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [MaximumExecutionFrequency] whose value matches [value].
  MaximumExecutionFrequency byValue(String value) =>
      firstWhere((el) => el.value == value);
}
