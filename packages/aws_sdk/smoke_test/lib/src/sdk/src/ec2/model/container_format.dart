// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.container_format; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ContainerFormat extends _i1.SmithyEnum<ContainerFormat> {
  const ContainerFormat._(
    super.index,
    super.name,
    super.value,
  );

  const ContainerFormat._sdkUnknown(super.value) : super.sdkUnknown();

  static const ova = ContainerFormat._(
    0,
    'ova',
    'ova',
  );

  /// All values of [ContainerFormat].
  static const values = <ContainerFormat>[ContainerFormat.ova];

  static const List<_i1.SmithySerializer<ContainerFormat>> serializers = [
    _i1.SmithyEnumSerializer(
      'ContainerFormat',
      values: values,
      sdkUnknown: ContainerFormat._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ContainerFormatHelpers on List<ContainerFormat> {
  /// Returns the value of [ContainerFormat] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ContainerFormat byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ContainerFormat] whose value matches [value].
  ContainerFormat byValue(String value) =>
      firstWhere((el) => el.value == value);
}
