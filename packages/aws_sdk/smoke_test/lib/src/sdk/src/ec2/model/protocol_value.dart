// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.protocol_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ProtocolValue extends _i1.SmithyEnum<ProtocolValue> {
  const ProtocolValue._(
    super.index,
    super.name,
    super.value,
  );

  const ProtocolValue._sdkUnknown(super.value) : super.sdkUnknown();

  static const gre = ProtocolValue._(
    0,
    'gre',
    'gre',
  );

  /// All values of [ProtocolValue].
  static const values = <ProtocolValue>[ProtocolValue.gre];

  static const List<_i1.SmithySerializer<ProtocolValue>> serializers = [
    _i1.SmithyEnumSerializer(
      'ProtocolValue',
      values: values,
      sdkUnknown: ProtocolValue._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ProtocolValueHelpers on List<ProtocolValue> {
  /// Returns the value of [ProtocolValue] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ProtocolValue byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ProtocolValue] whose value matches [value].
  ProtocolValue byValue(String value) => firstWhere((el) => el.value == value);
}
