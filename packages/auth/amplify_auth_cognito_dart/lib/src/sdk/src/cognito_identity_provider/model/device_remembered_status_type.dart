// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.device_remembered_status_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DeviceRememberedStatusType
    extends _i1.SmithyEnum<DeviceRememberedStatusType> {
  const DeviceRememberedStatusType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const DeviceRememberedStatusType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const notRemembered = DeviceRememberedStatusType._(
    0,
    'NOT_REMEMBERED',
    'not_remembered',
  );

  static const remembered = DeviceRememberedStatusType._(
    1,
    'REMEMBERED',
    'remembered',
  );

  /// All values of [DeviceRememberedStatusType].
  static const values = <DeviceRememberedStatusType>[
    DeviceRememberedStatusType.notRemembered,
    DeviceRememberedStatusType.remembered,
  ];

  static const List<_i1.SmithySerializer<DeviceRememberedStatusType>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'DeviceRememberedStatusType',
      values: values,
      sdkUnknown: DeviceRememberedStatusType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension DeviceRememberedStatusTypeHelpers
    on List<DeviceRememberedStatusType> {
  /// Returns the value of [DeviceRememberedStatusType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DeviceRememberedStatusType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DeviceRememberedStatusType] whose value matches [value].
  DeviceRememberedStatusType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
