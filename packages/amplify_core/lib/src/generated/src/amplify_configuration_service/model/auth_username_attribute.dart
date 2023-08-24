// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.auth_username_attribute; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AuthUsernameAttribute extends _i1.SmithyEnum<AuthUsernameAttribute> {
  const AuthUsernameAttribute._(
    super.index,
    super.name,
    super.value,
  );

  const AuthUsernameAttribute._sdkUnknown(super.value) : super.sdkUnknown();

  static const email = AuthUsernameAttribute._(
    0,
    'EMAIL',
    'email',
  );

  static const phoneNumber = AuthUsernameAttribute._(
    1,
    'PHONE_NUMBER',
    'phone_number',
  );

  /// All values of [AuthUsernameAttribute].
  static const values = <AuthUsernameAttribute>[
    AuthUsernameAttribute.email,
    AuthUsernameAttribute.phoneNumber,
  ];

  static const List<_i1.SmithySerializer<AuthUsernameAttribute>> serializers = [
    _i1.SmithyEnumSerializer(
      'AuthUsernameAttribute',
      values: values,
      sdkUnknown: AuthUsernameAttribute._sdkUnknown,
      supportedProtocols: [],
    )
  ];
}

extension AuthUsernameAttributeHelpers on List<AuthUsernameAttribute> {
  /// Returns the value of [AuthUsernameAttribute] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AuthUsernameAttribute byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AuthUsernameAttribute] whose value matches [value].
  AuthUsernameAttribute byValue(String value) =>
      firstWhere((el) => el.value == value);
}
