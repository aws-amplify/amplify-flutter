// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.connection_notification_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ConnectionNotificationState
    extends _i1.SmithyEnum<ConnectionNotificationState> {
  const ConnectionNotificationState._(
    super.index,
    super.name,
    super.value,
  );

  const ConnectionNotificationState._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const disabled = ConnectionNotificationState._(
    0,
    'Disabled',
    'Disabled',
  );

  static const enabled = ConnectionNotificationState._(
    1,
    'Enabled',
    'Enabled',
  );

  /// All values of [ConnectionNotificationState].
  static const values = <ConnectionNotificationState>[
    ConnectionNotificationState.disabled,
    ConnectionNotificationState.enabled,
  ];

  static const List<_i1.SmithySerializer<ConnectionNotificationState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ConnectionNotificationState',
      values: values,
      sdkUnknown: ConnectionNotificationState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ConnectionNotificationStateHelpers
    on List<ConnectionNotificationState> {
  /// Returns the value of [ConnectionNotificationState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ConnectionNotificationState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ConnectionNotificationState] whose value matches [value].
  ConnectionNotificationState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
