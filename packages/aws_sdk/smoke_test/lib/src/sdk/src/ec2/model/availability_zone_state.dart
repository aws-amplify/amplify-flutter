// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.availability_zone_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AvailabilityZoneState extends _i1.SmithyEnum<AvailabilityZoneState> {
  const AvailabilityZoneState._(
    super.index,
    super.name,
    super.value,
  );

  const AvailabilityZoneState._sdkUnknown(super.value) : super.sdkUnknown();

  static const available = AvailabilityZoneState._(
    0,
    'available',
    'available',
  );

  static const impaired = AvailabilityZoneState._(
    1,
    'impaired',
    'impaired',
  );

  static const information = AvailabilityZoneState._(
    2,
    'information',
    'information',
  );

  static const unavailable = AvailabilityZoneState._(
    3,
    'unavailable',
    'unavailable',
  );

  /// All values of [AvailabilityZoneState].
  static const values = <AvailabilityZoneState>[
    AvailabilityZoneState.available,
    AvailabilityZoneState.impaired,
    AvailabilityZoneState.information,
    AvailabilityZoneState.unavailable,
  ];

  static const List<_i1.SmithySerializer<AvailabilityZoneState>> serializers = [
    _i1.SmithyEnumSerializer(
      'AvailabilityZoneState',
      values: values,
      sdkUnknown: AvailabilityZoneState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension AvailabilityZoneStateHelpers on List<AvailabilityZoneState> {
  /// Returns the value of [AvailabilityZoneState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AvailabilityZoneState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AvailabilityZoneState] whose value matches [value].
  AvailabilityZoneState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
