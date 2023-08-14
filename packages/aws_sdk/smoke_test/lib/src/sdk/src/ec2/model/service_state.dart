// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.service_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ServiceState extends _i1.SmithyEnum<ServiceState> {
  const ServiceState._(
    super.index,
    super.name,
    super.value,
  );

  const ServiceState._sdkUnknown(super.value) : super.sdkUnknown();

  static const available = ServiceState._(
    0,
    'Available',
    'Available',
  );

  static const deleted = ServiceState._(
    1,
    'Deleted',
    'Deleted',
  );

  static const deleting = ServiceState._(
    2,
    'Deleting',
    'Deleting',
  );

  static const failed = ServiceState._(
    3,
    'Failed',
    'Failed',
  );

  static const pending = ServiceState._(
    4,
    'Pending',
    'Pending',
  );

  /// All values of [ServiceState].
  static const values = <ServiceState>[
    ServiceState.available,
    ServiceState.deleted,
    ServiceState.deleting,
    ServiceState.failed,
    ServiceState.pending,
  ];

  static const List<_i1.SmithySerializer<ServiceState>> serializers = [
    _i1.SmithyEnumSerializer(
      'ServiceState',
      values: values,
      sdkUnknown: ServiceState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ServiceStateHelpers on List<ServiceState> {
  /// Returns the value of [ServiceState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ServiceState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ServiceState] whose value matches [value].
  ServiceState byValue(String value) => firstWhere((el) => el.value == value);
}
