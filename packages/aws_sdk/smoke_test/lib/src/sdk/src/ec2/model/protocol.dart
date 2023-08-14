// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class Protocol extends _i1.SmithyEnum<Protocol> {
  const Protocol._(
    super.index,
    super.name,
    super.value,
  );

  const Protocol._sdkUnknown(super.value) : super.sdkUnknown();

  static const tcp = Protocol._(
    0,
    'tcp',
    'tcp',
  );

  static const udp = Protocol._(
    1,
    'udp',
    'udp',
  );

  /// All values of [Protocol].
  static const values = <Protocol>[
    Protocol.tcp,
    Protocol.udp,
  ];

  static const List<_i1.SmithySerializer<Protocol>> serializers = [
    _i1.SmithyEnumSerializer(
      'Protocol',
      values: values,
      sdkUnknown: Protocol._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ProtocolHelpers on List<Protocol> {
  /// Returns the value of [Protocol] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  Protocol byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [Protocol] whose value matches [value].
  Protocol byValue(String value) => firstWhere((el) => el.value == value);
}
