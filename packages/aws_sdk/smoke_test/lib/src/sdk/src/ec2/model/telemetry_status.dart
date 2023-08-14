// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.telemetry_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TelemetryStatus extends _i1.SmithyEnum<TelemetryStatus> {
  const TelemetryStatus._(
    super.index,
    super.name,
    super.value,
  );

  const TelemetryStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const down = TelemetryStatus._(
    0,
    'DOWN',
    'DOWN',
  );

  static const up = TelemetryStatus._(
    1,
    'UP',
    'UP',
  );

  /// All values of [TelemetryStatus].
  static const values = <TelemetryStatus>[
    TelemetryStatus.down,
    TelemetryStatus.up,
  ];

  static const List<_i1.SmithySerializer<TelemetryStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'TelemetryStatus',
      values: values,
      sdkUnknown: TelemetryStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TelemetryStatusHelpers on List<TelemetryStatus> {
  /// Returns the value of [TelemetryStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TelemetryStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TelemetryStatus] whose value matches [value].
  TelemetryStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
