// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.delivery_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DeliveryStatus extends _i1.SmithyEnum<DeliveryStatus> {
  const DeliveryStatus._(
    super.index,
    super.name,
    super.value,
  );

  const DeliveryStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const failure = DeliveryStatus._(
    0,
    'Failure',
    'Failure',
  );

  static const notApplicable = DeliveryStatus._(
    1,
    'Not_Applicable',
    'Not_Applicable',
  );

  static const success = DeliveryStatus._(
    2,
    'Success',
    'Success',
  );

  /// All values of [DeliveryStatus].
  static const values = <DeliveryStatus>[
    DeliveryStatus.failure,
    DeliveryStatus.notApplicable,
    DeliveryStatus.success,
  ];

  static const List<_i1.SmithySerializer<DeliveryStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'DeliveryStatus',
      values: values,
      sdkUnknown: DeliveryStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension DeliveryStatusHelpers on List<DeliveryStatus> {
  /// Returns the value of [DeliveryStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DeliveryStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DeliveryStatus] whose value matches [value].
  DeliveryStatus byValue(String value) => firstWhere((el) => el.value == value);
}
