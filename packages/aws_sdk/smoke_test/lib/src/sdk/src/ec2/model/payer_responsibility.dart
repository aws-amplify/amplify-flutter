// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.payer_responsibility; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class PayerResponsibility extends _i1.SmithyEnum<PayerResponsibility> {
  const PayerResponsibility._(
    super.index,
    super.name,
    super.value,
  );

  const PayerResponsibility._sdkUnknown(super.value) : super.sdkUnknown();

  static const serviceOwner = PayerResponsibility._(
    0,
    'ServiceOwner',
    'ServiceOwner',
  );

  /// All values of [PayerResponsibility].
  static const values = <PayerResponsibility>[PayerResponsibility.serviceOwner];

  static const List<_i1.SmithySerializer<PayerResponsibility>> serializers = [
    _i1.SmithyEnumSerializer(
      'PayerResponsibility',
      values: values,
      sdkUnknown: PayerResponsibility._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension PayerResponsibilityHelpers on List<PayerResponsibility> {
  /// Returns the value of [PayerResponsibility] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  PayerResponsibility byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [PayerResponsibility] whose value matches [value].
  PayerResponsibility byValue(String value) =>
      firstWhere((el) => el.value == value);
}
