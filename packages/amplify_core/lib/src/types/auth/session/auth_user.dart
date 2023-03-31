// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

abstract class AuthUser
    with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  const AuthUser();

  String get userId;
  String get username;
  SignInDetails get signInDetails;

  @override
  String get runtimeTypeName => 'AuthUser';
}
