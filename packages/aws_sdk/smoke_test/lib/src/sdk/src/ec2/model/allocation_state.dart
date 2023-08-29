// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.allocation_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AllocationState extends _i1.SmithyEnum<AllocationState> {
  const AllocationState._(
    super.index,
    super.name,
    super.value,
  );

  const AllocationState._sdkUnknown(super.value) : super.sdkUnknown();

  static const available = AllocationState._(
    0,
    'available',
    'available',
  );

  static const pending = AllocationState._(
    1,
    'pending',
    'pending',
  );

  static const permanentFailure = AllocationState._(
    2,
    'permanent_failure',
    'permanent-failure',
  );

  static const released = AllocationState._(
    3,
    'released',
    'released',
  );

  static const releasedPermanentFailure = AllocationState._(
    4,
    'released_permanent_failure',
    'released-permanent-failure',
  );

  static const underAssessment = AllocationState._(
    5,
    'under_assessment',
    'under-assessment',
  );

  /// All values of [AllocationState].
  static const values = <AllocationState>[
    AllocationState.available,
    AllocationState.pending,
    AllocationState.permanentFailure,
    AllocationState.released,
    AllocationState.releasedPermanentFailure,
    AllocationState.underAssessment,
  ];

  static const List<_i1.SmithySerializer<AllocationState>> serializers = [
    _i1.SmithyEnumSerializer(
      'AllocationState',
      values: values,
      sdkUnknown: AllocationState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension AllocationStateHelpers on List<AllocationState> {
  /// Returns the value of [AllocationState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AllocationState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AllocationState] whose value matches [value].
  AllocationState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
