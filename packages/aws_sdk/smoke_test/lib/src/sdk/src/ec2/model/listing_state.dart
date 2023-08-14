// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.listing_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ListingState extends _i1.SmithyEnum<ListingState> {
  const ListingState._(
    super.index,
    super.name,
    super.value,
  );

  const ListingState._sdkUnknown(super.value) : super.sdkUnknown();

  static const available = ListingState._(
    0,
    'available',
    'available',
  );

  static const cancelled = ListingState._(
    1,
    'cancelled',
    'cancelled',
  );

  static const pending = ListingState._(
    2,
    'pending',
    'pending',
  );

  static const sold = ListingState._(
    3,
    'sold',
    'sold',
  );

  /// All values of [ListingState].
  static const values = <ListingState>[
    ListingState.available,
    ListingState.cancelled,
    ListingState.pending,
    ListingState.sold,
  ];

  static const List<_i1.SmithySerializer<ListingState>> serializers = [
    _i1.SmithyEnumSerializer(
      'ListingState',
      values: values,
      sdkUnknown: ListingState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ListingStateHelpers on List<ListingState> {
  /// Returns the value of [ListingState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ListingState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ListingState] whose value matches [value].
  ListingState byValue(String value) => firstWhere((el) => el.value == value);
}
