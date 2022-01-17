//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

Future<void> createUser(String username, String password) async {
  await Amplify.Auth.signUp(
    username: username,
    password: password,
    options: CognitoSignUpOptions(
      userAttributes: {CognitoUserAttributeKey.email: 'example@example.com'},
    ),
  );
}

Future<void> removeUser(String username, String password) async {
  await Amplify.Auth.signOut();
  await Amplify.Auth.signIn(username: username, password: password);
  await Amplify.Auth.deleteUser();
}
