// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';
import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

/// The global test runner.
const AuthTestRunner testRunner = AuthTestRunner(amplifyEnvironments);

/// The registered [AmplifyAuthCognito] plugin.
AmplifyAuthCognito get cognitoPlugin =>
    Amplify.Auth.getPlugin(AmplifyAuthCognito.pluginKey);
