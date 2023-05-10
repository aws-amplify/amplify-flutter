// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.publisher_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class PublisherStatus extends _i1.SmithyEnum<PublisherStatus> {
  const PublisherStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const PublisherStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const unverified = PublisherStatus._(
    0,
    'UNVERIFIED',
    'UNVERIFIED',
  );

  static const verified = PublisherStatus._(
    1,
    'VERIFIED',
    'VERIFIED',
  );

  /// All values of [PublisherStatus].
  static const values = <PublisherStatus>[
    PublisherStatus.unverified,
    PublisherStatus.verified,
  ];

  static const List<_i1.SmithySerializer<PublisherStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'PublisherStatus',
      values: values,
      sdkUnknown: PublisherStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension PublisherStatusHelpers on List<PublisherStatus> {
  /// Returns the value of [PublisherStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  PublisherStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [PublisherStatus] whose value matches [value].
  PublisherStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
