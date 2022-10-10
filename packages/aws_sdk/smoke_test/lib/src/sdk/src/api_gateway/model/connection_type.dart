// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.connection_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ConnectionType extends _i1.SmithyEnum<ConnectionType> {
  const ConnectionType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ConnectionType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const internet = ConnectionType._(
    0,
    'INTERNET',
    'INTERNET',
  );

  static const vpcLink = ConnectionType._(
    1,
    'VPC_LINK',
    'VPC_LINK',
  );

  /// All values of [ConnectionType].
  static const values = <ConnectionType>[
    ConnectionType.internet,
    ConnectionType.vpcLink,
  ];

  static const List<_i1.SmithySerializer<ConnectionType>> serializers = [
    _i1.SmithyEnumSerializer(
      'ConnectionType',
      values: values,
      sdkUnknown: ConnectionType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension ConnectionTypeHelpers on List<ConnectionType> {
  /// Returns the value of [ConnectionType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ConnectionType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ConnectionType] whose value matches [value].
  ConnectionType byValue(String value) => firstWhere((el) => el.value == value);
}
