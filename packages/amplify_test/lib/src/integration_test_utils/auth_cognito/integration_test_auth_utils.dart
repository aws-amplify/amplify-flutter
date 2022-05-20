/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'dart:async';
import 'dart:convert';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:stream_transform/stream_transform.dart';

import 'types/admin_create_user_response.dart';
import 'types/confirm_sign_up_response.dart';
import 'types/delete_user_response.dart';

/// A GraphQL document used by the [deleteUser] test utility method.
const deleteDocument = '''mutation DeleteUser(\$Username: String!) {
  deleteUser(Username: \$Username) {
    error
    success
  }
}''';

/// A GraphQL document used by the [adminCreateUser] test utility method.
const adminCreateUserDocument =
    '''mutation CreateUser(\$Username: String!, \$Password: String!, \$AutoConfirm: Boolean!, \$EnableMFA: Boolean!, \$VerifyAttributes: Boolean!, \$Name: String, \$Given_Name: String, \$Email: String, \$Phone_Number: String) {
    adminCreateUser(Username: \$Username, Password: \$Password, AutoConfirm: \$AutoConfirm, EnableMFA: \$EnableMFA, VerifyAttributes: \$VerifyAttributes, Given_Name: \$Given_Name, Name: \$Name, Email: \$Email, Phone_Number: \$Phone_Number) {
      error
      success
    }
  }''';

/// Deletes a Cognito user in backend infrastructure.
///
/// This method differs from the Auth.deleteUser API in that
/// an access token is not required.
Future<DeleteUserResponse> deleteUser(String username) async {
  var res = await Amplify.API
      .mutate(
          request: GraphQLRequest<String>(
              document: deleteDocument,
              variables: <String, dynamic>{'Username': username}))
      .response;
  if (res.errors.isNotEmpty) {
    throw Exception(res.errors.first.message);
  }
  return DeleteUserResponse.fromJson(res.data!);
}

/// Creates a Cognito user in backend infrastructure. This documention describes
/// how each parameter is expected to be used in the backend .
///
/// Throws [GraphQLResponseErrors] if present in the response.
///
/// The [username] parameter can be plain text or a phone_number or email,
/// depending on the backend configuration.
/// The [password] is used as the temporary password if [autoconfirm] is true.
/// The [autoconfirm] flag will mark the user as confirmed and give them a permanent password.
/// The [enableMFA] flag will opt-in the user to using SMS MFA.
/// The [verifyAttributes] flag will verify the email and phone, and should be used
/// if tests need to bypass the verification step.
/// The [attributes] list passes additional attributes.
Future<AdminCreateUserResponse> adminCreateUser(
  String username,
  String password, {
  bool autoConfirm = false,
  bool enableMfa = false,
  bool verifyAttributes = false,
  List<AuthUserAttribute> attributes = const [],
}) async {
  var res = await Amplify.API
      .mutate(
          request: GraphQLRequest<String>(
              document: adminCreateUserDocument,
              variables: <String, dynamic>{
            'Username': username,
            'Password': password,
            'AutoConfirm': autoConfirm,
            'EnableMFA': enableMfa,
            'Name': attributes
                .firstWhere(
                    (el) => el.userAttributeKey == CognitoUserAttributeKey.name,
                    orElse: () => const AuthUserAttribute(
                        userAttributeKey: CognitoUserAttributeKey.name,
                        value: 'default_name'))
                .value,
            'Given_Name': attributes
                .firstWhere(
                    (el) =>
                        el.userAttributeKey ==
                        CognitoUserAttributeKey.givenName,
                    orElse: () => const AuthUserAttribute(
                        userAttributeKey: CognitoUserAttributeKey.givenName,
                        value: 'default_given_name'))
                .value,
            'Email': attributes
                .firstWhere(
                    (el) =>
                        el.userAttributeKey == CognitoUserAttributeKey.email,
                    orElse: () => const AuthUserAttribute(
                        userAttributeKey: CognitoUserAttributeKey.email,
                        value: 'example@example.com'))
                .value,
            'Phone_Number': attributes
                .firstWhere(
                    (el) =>
                        el.userAttributeKey ==
                        CognitoUserAttributeKey.phoneNumber,
                    orElse: () => const AuthUserAttribute(
                        userAttributeKey: CognitoUserAttributeKey.phoneNumber,
                        value: '+15555555'))
                .value,
            'VerifyAttributes': verifyAttributes,
          }))
      .response;
  if (res.errors.isNotEmpty) {
    throw Exception(res.errors.first.message);
  }

  final data = AdminCreateUserResponse.fromJson(res.data!);
  if (data.error != null) {
    throw Exception(data.error!);
  }

  addTearDown(() async {
    try {
      await deleteUser(username);
    } on Object catch (e) {
      safePrint('Error deleting user: $e');
    }
  });

  return data;
}

/// Returns the OTP code for [username]. Must be called before the network call
/// generating the OTP code.
Future<String> getOtpCode(String username) async {
  const subscriptionDocument = '''subscription {
          onCreateConfirmSignUpTestRun {
            id
            username
            currentCode
          }
        }''';

  final Stream<GraphQLResponse<String>> operation = Amplify.API.subscribe(
    GraphQLRequest<String>(document: subscriptionDocument),
  );

  // Collect codes delivered via Lambda
  return operation
      .map((event) {
        final json =
            jsonDecode(event.data!)['onCreateConfirmSignUpTestRun'] as Map;
        return ConfirmSignUpResponse.fromJson(json.cast());
      })
      .where((event) => event.username == username)
      .map((event) => event.currentCode)
      // When multiple Cognito events happen in a test, we must use the newest
      // code, since the others will have been invalidated.
      //
      // Instead of taking a fixed number here, we take the most recent code
      // after 5 seconds, which is hopefully a more general solution.
      .audit(const Duration(seconds: 5))
      .first;
}
