// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_core.amplify_configuration_service.model.aws_auth_username_attribute; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AWSAuthUsernameAttribute
    extends _i1.SmithyEnum<AWSAuthUsernameAttribute> {
  const AWSAuthUsernameAttribute._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const AWSAuthUsernameAttribute._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const email = AWSAuthUsernameAttribute._(
    0,
    'EMAIL',
    'email',
  );

  static const phoneNumber = AWSAuthUsernameAttribute._(
    1,
    'PHONE_NUMBER',
    'phone_number',
  );

  /// All values of [AWSAuthUsernameAttribute].
  static const values = <AWSAuthUsernameAttribute>[
    AWSAuthUsernameAttribute.email,
    AWSAuthUsernameAttribute.phoneNumber,
  ];

  static const List<_i1.SmithySerializer<AWSAuthUsernameAttribute>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'AWSAuthUsernameAttribute',
      values: values,
      sdkUnknown: AWSAuthUsernameAttribute._sdkUnknown,
      supportedProtocols: [],
    )
  ];
}

extension AWSAuthUsernameAttributeHelpers on List<AWSAuthUsernameAttribute> {
  /// Returns the value of [AWSAuthUsernameAttribute] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AWSAuthUsernameAttribute byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AWSAuthUsernameAttribute] whose value matches [value].
  AWSAuthUsernameAttribute byValue(String value) =>
      firstWhere((el) => el.value == value);
}
