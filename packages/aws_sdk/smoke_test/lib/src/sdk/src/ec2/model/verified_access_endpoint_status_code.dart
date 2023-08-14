// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.verified_access_endpoint_status_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VerifiedAccessEndpointStatusCode
    extends _i1.SmithyEnum<VerifiedAccessEndpointStatusCode> {
  const VerifiedAccessEndpointStatusCode._(
    super.index,
    super.name,
    super.value,
  );

  const VerifiedAccessEndpointStatusCode._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const active = VerifiedAccessEndpointStatusCode._(
    0,
    'active',
    'active',
  );

  static const deleted = VerifiedAccessEndpointStatusCode._(
    1,
    'deleted',
    'deleted',
  );

  static const deleting = VerifiedAccessEndpointStatusCode._(
    2,
    'deleting',
    'deleting',
  );

  static const pending = VerifiedAccessEndpointStatusCode._(
    3,
    'pending',
    'pending',
  );

  static const updating = VerifiedAccessEndpointStatusCode._(
    4,
    'updating',
    'updating',
  );

  /// All values of [VerifiedAccessEndpointStatusCode].
  static const values = <VerifiedAccessEndpointStatusCode>[
    VerifiedAccessEndpointStatusCode.active,
    VerifiedAccessEndpointStatusCode.deleted,
    VerifiedAccessEndpointStatusCode.deleting,
    VerifiedAccessEndpointStatusCode.pending,
    VerifiedAccessEndpointStatusCode.updating,
  ];

  static const List<_i1.SmithySerializer<VerifiedAccessEndpointStatusCode>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'VerifiedAccessEndpointStatusCode',
      values: values,
      sdkUnknown: VerifiedAccessEndpointStatusCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension VerifiedAccessEndpointStatusCodeHelpers
    on List<VerifiedAccessEndpointStatusCode> {
  /// Returns the value of [VerifiedAccessEndpointStatusCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VerifiedAccessEndpointStatusCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VerifiedAccessEndpointStatusCode] whose value matches [value].
  VerifiedAccessEndpointStatusCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
