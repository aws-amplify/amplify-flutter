// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.listing_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ListingStatus extends _i1.SmithyEnum<ListingStatus> {
  const ListingStatus._(
    super.index,
    super.name,
    super.value,
  );

  const ListingStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const active = ListingStatus._(
    0,
    'active',
    'active',
  );

  static const cancelled = ListingStatus._(
    1,
    'cancelled',
    'cancelled',
  );

  static const closed = ListingStatus._(
    2,
    'closed',
    'closed',
  );

  static const pending = ListingStatus._(
    3,
    'pending',
    'pending',
  );

  /// All values of [ListingStatus].
  static const values = <ListingStatus>[
    ListingStatus.active,
    ListingStatus.cancelled,
    ListingStatus.closed,
    ListingStatus.pending,
  ];

  static const List<_i1.SmithySerializer<ListingStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'ListingStatus',
      values: values,
      sdkUnknown: ListingStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ListingStatusHelpers on List<ListingStatus> {
  /// Returns the value of [ListingStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ListingStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ListingStatus] whose value matches [value].
  ListingStatus byValue(String value) => firstWhere((el) => el.value == value);
}
