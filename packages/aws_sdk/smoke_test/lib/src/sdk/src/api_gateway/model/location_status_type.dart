// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.model.location_status_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class LocationStatusType extends _i1.SmithyEnum<LocationStatusType> {
  const LocationStatusType._(
    super.index,
    super.name,
    super.value,
  );

  const LocationStatusType._sdkUnknown(super.value) : super.sdkUnknown();

  static const documented = LocationStatusType._(
    0,
    'DOCUMENTED',
    'DOCUMENTED',
  );

  static const undocumented = LocationStatusType._(
    1,
    'UNDOCUMENTED',
    'UNDOCUMENTED',
  );

  /// All values of [LocationStatusType].
  static const values = <LocationStatusType>[
    LocationStatusType.documented,
    LocationStatusType.undocumented,
  ];

  static const List<_i1.SmithySerializer<LocationStatusType>> serializers = [
    _i1.SmithyEnumSerializer(
      'LocationStatusType',
      values: values,
      sdkUnknown: LocationStatusType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension LocationStatusTypeHelpers on List<LocationStatusType> {
  /// Returns the value of [LocationStatusType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  LocationStatusType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [LocationStatusType] whose value matches [value].
  LocationStatusType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
