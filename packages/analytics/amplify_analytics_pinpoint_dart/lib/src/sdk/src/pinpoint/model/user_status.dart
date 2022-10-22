// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.user_status;

import 'package:smithy/smithy.dart' as _i1;

class UserStatus extends _i1.SmithyEnum<UserStatus> {
  const UserStatus._(int index, String name, String value)
      : super(index, name, value);

  const UserStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const active = UserStatus._(0, 'ACTIVE', 'ACTIVE');

  static const inactive = UserStatus._(1, 'INACTIVE', 'INACTIVE');

  /// All values of [UserStatus].
  static const values = <UserStatus>[UserStatus.active, UserStatus.inactive];

  static const List<_i1.SmithySerializer<UserStatus>> serializers = [
    _i1.SmithyEnumSerializer('UserStatus',
        values: values,
        sdkUnknown: UserStatus._sdkUnknown,
        supportedProtocols: [
          _i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')
        ])
  ];
}

extension UserStatusHelpers on List<UserStatus> {
  /// Returns the value of [UserStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  UserStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [UserStatus] whose value matches [value].
  UserStatus byValue(String value) => firstWhere((el) => el.value == value);
}
