// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.conversion_task_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ConversionTaskState extends _i1.SmithyEnum<ConversionTaskState> {
  const ConversionTaskState._(
    super.index,
    super.name,
    super.value,
  );

  const ConversionTaskState._sdkUnknown(super.value) : super.sdkUnknown();

  static const active = ConversionTaskState._(
    0,
    'active',
    'active',
  );

  static const cancelled = ConversionTaskState._(
    1,
    'cancelled',
    'cancelled',
  );

  static const cancelling = ConversionTaskState._(
    2,
    'cancelling',
    'cancelling',
  );

  static const completed = ConversionTaskState._(
    3,
    'completed',
    'completed',
  );

  /// All values of [ConversionTaskState].
  static const values = <ConversionTaskState>[
    ConversionTaskState.active,
    ConversionTaskState.cancelled,
    ConversionTaskState.cancelling,
    ConversionTaskState.completed,
  ];

  static const List<_i1.SmithySerializer<ConversionTaskState>> serializers = [
    _i1.SmithyEnumSerializer(
      'ConversionTaskState',
      values: values,
      sdkUnknown: ConversionTaskState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ConversionTaskStateHelpers on List<ConversionTaskState> {
  /// Returns the value of [ConversionTaskState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ConversionTaskState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ConversionTaskState] whose value matches [value].
  ConversionTaskState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
