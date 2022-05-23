// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Generated with smithy-dart 0.5.1. DO NOT MODIFY.

library amplify_auth_cognito.cognito_identity_provider.model.auth_flow_type;

import 'package:smithy/smithy.dart' as _i1;

class AuthFlowType extends _i1.SmithyEnum<AuthFlowType> {
  const AuthFlowType._(int index, String name, String value)
      : super(index, name, value);

  const AuthFlowType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const adminNoSrpAuth =
      AuthFlowType._(0, 'ADMIN_NO_SRP_AUTH', 'ADMIN_NO_SRP_AUTH');

  static const adminUserPasswordAuth =
      AuthFlowType._(1, 'ADMIN_USER_PASSWORD_AUTH', 'ADMIN_USER_PASSWORD_AUTH');

  static const customAuth = AuthFlowType._(2, 'CUSTOM_AUTH', 'CUSTOM_AUTH');

  static const refreshToken =
      AuthFlowType._(3, 'REFRESH_TOKEN', 'REFRESH_TOKEN');

  static const refreshTokenAuth =
      AuthFlowType._(4, 'REFRESH_TOKEN_AUTH', 'REFRESH_TOKEN_AUTH');

  static const userPasswordAuth =
      AuthFlowType._(5, 'USER_PASSWORD_AUTH', 'USER_PASSWORD_AUTH');

  static const userSrpAuth =
      AuthFlowType._(6, 'USER_SRP_AUTH', 'USER_SRP_AUTH');

  /// All values of [AuthFlowType].
  static const values = <AuthFlowType>[
    AuthFlowType.adminNoSrpAuth,
    AuthFlowType.adminUserPasswordAuth,
    AuthFlowType.customAuth,
    AuthFlowType.refreshToken,
    AuthFlowType.refreshTokenAuth,
    AuthFlowType.userPasswordAuth,
    AuthFlowType.userSrpAuth
  ];

  static const List<_i1.SmithySerializer<AuthFlowType>> serializers = [
    _i1.SmithyEnumSerializer('AuthFlowType',
        values: values,
        sdkUnknown: AuthFlowType._sdkUnknown,
        supportedProtocols: [
          _i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')
        ])
  ];
}

extension AuthFlowTypeHelpers on List<AuthFlowType> {
  /// Returns the value of [AuthFlowType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AuthFlowType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AuthFlowType] whose value matches [value].
  AuthFlowType byValue(String value) => firstWhere((el) => el.value == value);
}
