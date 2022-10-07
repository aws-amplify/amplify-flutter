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
import 'package:graphql/client.dart';
import 'package:stream_transform/stream_transform.dart';

import 'types/confirm_sign_up_response.dart';

/// A GraphQL document used by the [deleteUser] test utility method.
const deleteDocument = r'''
mutation DeleteUser($username: String!) {
  deleteUser(username: $username) {
    error
    success
  }
}''';

/// Deletes a Cognito user in backend infrastructure.
///
/// This method differs from the Auth.deleteUser API in that
/// an access token is not required.
Future<void> deleteUser(String username) async {
  final config = await Amplify.asyncConfig;
  final url = config.auth?.awsPlugin?.appSync?.default$?.apiUrl;
  final key = config.auth?.awsPlugin?.appSync?.default$?.apiKey;
  final client = GraphQLClient(
    cache: GraphQLCache(),
    link: HttpLink(
      url!,
      defaultHeaders: {
        'x-api-key': key!,
      },
    ),
  );

  final options = MutationOptions(
      document: gql(deleteDocument),
      variables: <String, dynamic>{
        'username': username,
      });

  final result = await client.mutate(options);
  final deleteError =
      result.data?['deleteUser']?['error'] ?? result.exception?.toString();
  if (deleteError != null) {
    throw Exception(deleteError);
  }
}

/// Creates a Cognito user in backend infrastructure. This documention describes
/// how each parameter is expected to be used in the backend .
///
/// Throws an [Exception] if present in the response.
///
/// The [username] parameter can be plain text or a phone_number or email,
/// depending on the backend configuration.
/// The [password] is used as the temporary password if [autoConfirm] is true.
/// The [autoConfirm] flag will mark the user as confirmed and give them a permanent password.
/// The [enableMfa] flag will opt-in the user to using SMS MFA.
/// The [verifyAttributes] flag will verify the email and phone, and should be used
/// if tests need to bypass the verification step.
/// The [attributes] list passes additional attributes.
Future<void> adminCreateUser(
  String username,
  String password, {
  bool autoConfirm = false,
  bool enableMfa = false,
  bool verifyAttributes = false,
  List<AuthUserAttribute> attributes = const [],
}) async {
  final config = await Amplify.asyncConfig;
  final api = config.api!.awsPlugin!.default$!;
  final client = GraphQLClient(
    cache: GraphQLCache(),
    link: HttpLink(
      api.endpoint,
      defaultHeaders: {
        'x-api-key': api.apiKey!,
      },
    ),
  );

  final options = MutationOptions(
      document: gql(
        r'''
          mutation CreateUser($input: CreateUserInput!) {
            createUser(input: $input) {
              success
              error
            }
          }
      ''',
      ),
      variables: <String, dynamic>{
        'input': {
          'autoConfirm': autoConfirm,
          'email': attributes
              .firstWhere(
                  (el) => el.userAttributeKey == CognitoUserAttributeKey.email,
                  orElse: () => const AuthUserAttribute(
                      userAttributeKey: CognitoUserAttributeKey.email,
                      value: 'example@example.com'))
              .value,
          'enableMFA': enableMfa,
          'givenName': attributes
              .firstWhere(
                  (el) =>
                      el.userAttributeKey == CognitoUserAttributeKey.givenName,
                  orElse: () => const AuthUserAttribute(
                      userAttributeKey: CognitoUserAttributeKey.givenName,
                      value: 'default_given_name'))
              .value,
          'name': attributes
              .firstWhere(
                  (el) => el.userAttributeKey == CognitoUserAttributeKey.name,
                  orElse: () => const AuthUserAttribute(
                      userAttributeKey: CognitoUserAttributeKey.name,
                      value: 'default_name'))
              .value,
          'password': password,
          'phoneNumber': attributes
              .firstWhere(
                  (el) =>
                      el.userAttributeKey ==
                      CognitoUserAttributeKey.phoneNumber,
                  orElse: () => const AuthUserAttribute(
                      userAttributeKey: CognitoUserAttributeKey.phoneNumber,
                      value: '+15555555'))
              .value,
          'username': username,
          'verifyAttributes': verifyAttributes,
        },
      });

  final result = await client.mutate(options);
  final createError =
      result.data?['createUser']?['error'] ?? result.exception?.toString();
  if (createError != null) {
    throw Exception(createError);
  }
}

/// Returns the OTP code for [email]. Must be called before the network call
/// generating the OTP code.
Future<String> getOtpCode(String email) async {
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
      .where((event) => event.username == email)
      .map((event) => event.currentCode)
      // When multiple Cognito events happen in a test, we must use the newest
      // code, since the others will have been invalidated.
      //
      // Instead of taking a fixed number here, we take the most recent code
      // after 5 seconds, which is hopefully a more general solution.
      .audit(const Duration(seconds: 5))
      .first;
}
