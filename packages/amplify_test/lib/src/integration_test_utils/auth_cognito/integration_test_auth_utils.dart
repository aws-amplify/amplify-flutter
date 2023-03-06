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
import 'package:http/http.dart' as http;
import 'package:stream_transform/stream_transform.dart';

import 'types/confirm_sign_up_response.dart';

/// A GraphQL document used by the [deleteUser] test utility method.
const deleteDocument = r'''mutation DeleteUser($Username: String!) {
  deleteUser(Username: $Username) {
    error
    success
  }
}''';

final _client = http.Client();

Future<Map<String, Object?>> _graphQL(
  String document, {
  Map<String, Object?>? variables,
}) async {
  final config = await Amplify.asyncConfig;
  final api = config.api!.awsPlugin!.default$!;
  final response = await _client.post(
    Uri.parse(api.endpoint).replace(path: '/graphql'),
    headers: {
      'x-api-key': api.apiKey!,
    },
    body: jsonEncode({
      'query': document,
      if (variables != null) 'variables': variables,
    }),
  );
  if (response.statusCode != 200) {
    throw Exception('${response.statusCode}: ${response.body}');
  }
  final responseJson = jsonDecode(response.body) as Map<String, Object?>;
  final result = GraphQLResponse(
    data: responseJson['data'] as Map<String, Object?>?,
    errors: (responseJson['errors'] as List?)
            ?.cast<Map<String, Object?>>()
            .map(GraphQLResponseError.fromJson)
            .toList() ??
        const [],
  );
  if (result.errors.isNotEmpty) {
    throw Exception(result.errors);
  }
  return result.data!;
}

/// Deletes a Cognito user in backend infrastructure.
///
/// This method differs from the Auth.deleteUser API in that
/// an access token is not required.
Future<void> deleteUser(String username) async {
  final result = await _graphQL(
    deleteDocument,
    variables: {
      'Username': username,
    },
  );

  final exception = (result['deleteUser'] as Map?)?['exception'] as String?;
  if (exception != null) {
    throw Exception(exception);
  }
}

/// Creates a Cognito user in backend infrastructure. This documention describes
/// how each parameter is expected to be used in the backend .
///
/// Throws an [Exception] if there are errors present in the response.
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
  final result = await _graphQL(
    r'''
          mutation AdminCreateUser(
            $AutoConfirm: Boolean,
            $Email:String,
            $EnabledMFA: Boolean,
            $Given_Name: String,
            $Name: String,
            $Password: String!, 
            $Phone_Number:String, 
            $Username: String!, 
            $VerifyAttributes: Boolean) {
            adminCreateUser(
              AutoConfirm: $AutoConfirm, 
              Email: $Email, 
              EnableMFA: $EnabledMFA, 
              Given_Name: $Given_Name, 
              Name: $Name,
              Phone_Number: $Phone_Number,
              Password: $Password,
              Username: $Username,
              VerifyAttributes: $VerifyAttributes
            ){
              success
              exception
            }
          }
      ''',
    variables: {
      'AutoConfirm': autoConfirm,
      'Email': attributes
          .firstWhere(
              (el) => el.userAttributeKey == CognitoUserAttributeKey.email,
              orElse: () => const AuthUserAttribute(
                  userAttributeKey: CognitoUserAttributeKey.email,
                  value: 'example@example.com'))
          .value,
      'EnabledMFA': enableMfa,
      'Given_Name': attributes
          .firstWhere(
              (el) => el.userAttributeKey == CognitoUserAttributeKey.givenName,
              orElse: () => const AuthUserAttribute(
                  userAttributeKey: CognitoUserAttributeKey.givenName,
                  value: 'default_given_name'))
          .value,
      'Name': attributes
          .firstWhere(
              (el) => el.userAttributeKey == CognitoUserAttributeKey.name,
              orElse: () => const AuthUserAttribute(
                  userAttributeKey: CognitoUserAttributeKey.name,
                  value: 'default_name'))
          .value,
      'Password': password,
      'Phone_Number': attributes
          .firstWhere(
              (el) =>
                  el.userAttributeKey == CognitoUserAttributeKey.phoneNumber,
              orElse: () => const AuthUserAttribute(
                  userAttributeKey: CognitoUserAttributeKey.phoneNumber,
                  value: '+15555555'))
          .value,
      'Username': username,
      'VerifyAttributes': verifyAttributes
    },
  );

  final exception =
      (result['adminCreateUser'] as Map?)?['exception'] as String?;
  if (exception != null) {
    throw Exception(exception);
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
