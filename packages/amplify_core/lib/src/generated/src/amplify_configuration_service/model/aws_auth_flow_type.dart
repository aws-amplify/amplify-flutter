// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_core.amplify_configuration_service.model.aws_auth_flow_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AWSAuthFlowType extends _i1.SmithyEnum<AWSAuthFlowType> {
  const AWSAuthFlowType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const AWSAuthFlowType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const customAuth = AWSAuthFlowType._(
    0,
    'CUSTOM_AUTH',
    'CUSTOM_AUTH',
  );

  static const customAuthWithSrp = AWSAuthFlowType._(
    1,
    'CUSTOM_AUTH_WITH_SRP',
    'CUSTOM_AUTH_WITH_SRP',
  );

  static const customAuthWithoutSrp = AWSAuthFlowType._(
    2,
    'CUSTOM_AUTH_WITHOUT_SRP',
    'CUSTOM_AUTH_WITHOUT_SRP',
  );

  static const userPasswordAuth = AWSAuthFlowType._(
    3,
    'USER_PASSWORD_AUTH',
    'USER_PASSWORD_AUTH',
  );

  static const userSrpAuth = AWSAuthFlowType._(
    4,
    'USER_SRP_AUTH',
    'USER_SRP_AUTH',
  );

  /// All values of [AWSAuthFlowType].
  static const values = <AWSAuthFlowType>[
    AWSAuthFlowType.customAuth,
    AWSAuthFlowType.customAuthWithSrp,
    AWSAuthFlowType.customAuthWithoutSrp,
    AWSAuthFlowType.userPasswordAuth,
    AWSAuthFlowType.userSrpAuth,
  ];

  static const List<_i1.SmithySerializer<AWSAuthFlowType>> serializers = [
    _i1.SmithyEnumSerializer(
      'AWSAuthFlowType',
      values: values,
      sdkUnknown: AWSAuthFlowType._sdkUnknown,
      supportedProtocols: [],
    )
  ];
}

extension AWSAuthFlowTypeHelpers on List<AWSAuthFlowType> {
  /// Returns the value of [AWSAuthFlowType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AWSAuthFlowType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AWSAuthFlowType] whose value matches [value].
  AWSAuthFlowType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
