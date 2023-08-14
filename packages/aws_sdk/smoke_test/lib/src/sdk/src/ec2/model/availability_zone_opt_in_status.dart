// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.availability_zone_opt_in_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AvailabilityZoneOptInStatus
    extends _i1.SmithyEnum<AvailabilityZoneOptInStatus> {
  const AvailabilityZoneOptInStatus._(
    super.index,
    super.name,
    super.value,
  );

  const AvailabilityZoneOptInStatus._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const notOptedIn = AvailabilityZoneOptInStatus._(
    0,
    'not_opted_in',
    'not-opted-in',
  );

  static const optInNotRequired = AvailabilityZoneOptInStatus._(
    1,
    'opt_in_not_required',
    'opt-in-not-required',
  );

  static const optedIn = AvailabilityZoneOptInStatus._(
    2,
    'opted_in',
    'opted-in',
  );

  /// All values of [AvailabilityZoneOptInStatus].
  static const values = <AvailabilityZoneOptInStatus>[
    AvailabilityZoneOptInStatus.notOptedIn,
    AvailabilityZoneOptInStatus.optInNotRequired,
    AvailabilityZoneOptInStatus.optedIn,
  ];

  static const List<_i1.SmithySerializer<AvailabilityZoneOptInStatus>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'AvailabilityZoneOptInStatus',
      values: values,
      sdkUnknown: AvailabilityZoneOptInStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension AvailabilityZoneOptInStatusHelpers
    on List<AvailabilityZoneOptInStatus> {
  /// Returns the value of [AvailabilityZoneOptInStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AvailabilityZoneOptInStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AvailabilityZoneOptInStatus] whose value matches [value].
  AvailabilityZoneOptInStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
