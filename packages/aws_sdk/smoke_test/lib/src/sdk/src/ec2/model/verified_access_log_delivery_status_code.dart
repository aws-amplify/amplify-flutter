// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.verified_access_log_delivery_status_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VerifiedAccessLogDeliveryStatusCode
    extends _i1.SmithyEnum<VerifiedAccessLogDeliveryStatusCode> {
  const VerifiedAccessLogDeliveryStatusCode._(
    super.index,
    super.name,
    super.value,
  );

  const VerifiedAccessLogDeliveryStatusCode._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const failed = VerifiedAccessLogDeliveryStatusCode._(
    0,
    'FAILED',
    'failed',
  );

  static const success = VerifiedAccessLogDeliveryStatusCode._(
    1,
    'SUCCESS',
    'success',
  );

  /// All values of [VerifiedAccessLogDeliveryStatusCode].
  static const values = <VerifiedAccessLogDeliveryStatusCode>[
    VerifiedAccessLogDeliveryStatusCode.failed,
    VerifiedAccessLogDeliveryStatusCode.success,
  ];

  static const List<_i1.SmithySerializer<VerifiedAccessLogDeliveryStatusCode>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'VerifiedAccessLogDeliveryStatusCode',
      values: values,
      sdkUnknown: VerifiedAccessLogDeliveryStatusCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension VerifiedAccessLogDeliveryStatusCodeHelpers
    on List<VerifiedAccessLogDeliveryStatusCode> {
  /// Returns the value of [VerifiedAccessLogDeliveryStatusCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VerifiedAccessLogDeliveryStatusCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VerifiedAccessLogDeliveryStatusCode] whose value matches [value].
  VerifiedAccessLogDeliveryStatusCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
