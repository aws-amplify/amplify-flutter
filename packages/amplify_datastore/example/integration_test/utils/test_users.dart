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
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

import 'package:amplify_flutter/amplify_flutter.dart';

import 'setup_utils.dart';

/// Stores login credentials and a list of models<T>
///
/// Allows for easier cleanup of AppSync items in test teardowns
class TestUser<T extends Model> {
  String username;
  String password;
  List<T> models;
  TestUser(this.username, this.password, this.models);

  /// Creates a user in cognito using instance's [username] and [password].
  Future<void> createCognitoUser() async {
    await Amplify.Auth.signUp(
      username: username,
      password: password,
      options: CognitoSignUpOptions(
        userAttributes: {CognitoUserAttributeKey.email: 'example@example.com'},
      ),
    );
  }

  /// Removes the instance's user record in Cognito.
  Future<void> removeCognitoUser() async {
    await Amplify.Auth.signOut();
    await Amplify.Auth.signIn(username: username, password: password);
    await Amplify.Auth.deleteUser();
  }

  /// Signs in via the instances [username] and [password] and starts datastore.
  Future<void> signInCognitoUser() async {
    await Amplify.Auth.signIn(
      username: username,
      password: password,
    );
    await startDatastore();
  }

  /// Signs out the instance's user and clears datastore.
  Future<void> signOutCognitoUser() async {
    await Amplify.Auth.signOut();
    await clearDataStore();
  }

  /// Removes all of the instance's owned models from AppSync
  Future<void> cleanUpModels() async {
    await Amplify.Auth.signOut();

    await Amplify.Auth.signIn(
      username: username,
      password: password,
    );

    models.forEach((model) async {
      await Amplify.DataStore.delete(model);
    });
  }

  /// Creates a model in AppSync and adds it to instances [models] list.
  Future<void> createModels(
    T model,
  ) async {
    await Amplify.DataStore.save(model);
    models.add(model);
  }
}
