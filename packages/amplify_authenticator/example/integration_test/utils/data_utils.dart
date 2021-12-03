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

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter_test/flutter_test.dart';

import 'types/admin_create_user_response.dart';
import 'types/confirmation_code_response.dart';
import 'types/delete_user_response.dart';

const deleteDocument = '''mutation DeleteUser(\$Username: String!) {
  deleteUser(Username: \$Username) {
    error
    success
  }
}''';

const adminCreateUserDocument =
    '''mutation CreateUser(\$Username: String!, \$Password: String!, \$AutoConfirm: Boolean!, \$EnableMFA: Boolean!, \$VerifyAttributes: Boolean!) {
  adminCreateUser(Username: \$Username, Password: \$Password, AutoConfirm: \$AutoConfirm, EnableMFA: \$EnableMFA, VerifyAttributes: \$VerifyAttributes) {
    error
    success
  }
}''';

/// Deletes a Cognito user in backend infrastructure/
Future<DeleteUserResponse?> deleteUser(String username) async {
  var res = await Amplify.API
      .mutate(
          request: GraphQLRequest<String>(
              document: deleteDocument,
              variables: <String, dynamic>{'Username': username}))
      .response;
  if (res.errors.isNotEmpty) {
    for (var error in res.errors) {
      throw Exception(error.message);
    }
  } else {
    return DeleteUserResponse.fromJson(res.data);
  }
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
/// if tests need to bypass the verification screen.
Future<AdminCreateUserResponse?> adminCreateUser(
    String username, String password,
    {bool autoConfirm = false,
    bool enableMfa = false,
    bool verifyAttributes = false}) async {
  var res = await Amplify.API
      .mutate(
          request: GraphQLRequest<String>(
              document: adminCreateUserDocument,
              variables: <String, dynamic>{
            'Username': username,
            'Password': password,
            'AutoConfirm': autoConfirm,
            'EnableMFA': enableMfa,
            'VerifyAttributes': verifyAttributes,
          }))
      .response;
  if (res.errors.isNotEmpty) {
    for (var error in res.errors) {
      throw Exception(error.message);
    }
  } else {
    return AdminCreateUserResponse.fromJson(res.data);
  }

  addTearDown(() async {
    try {
      await deleteUser(username);
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      print('Error deleting user: $e');
    }
  });
}

Future<ConfirmationCodeTestRun> subscribeToOTPCode({
  Future<void> Function()? onSubscriptionEstablished,
  Future<void> Function(String code)? onCodeRecieved,
}) async {
  Completer<ConfirmationCodeTestRun> codeCompleter =
      Completer<ConfirmationCodeTestRun>();
  String subscriptionDocument = '''subscription MyMutation {
          onCreateConfirmSignUpTestRun {
            id
          }
        }''';

  String queryDocument = '''query GetCode(\$id: ID!) {
        getConfirmSignUpTestRun(id: \$id) {
          id
          currentCode
        }
      }''';

  Completer<void> subscriptionCompleter = Completer<void>();

  final Stream<GraphQLResponse<String>> operation = Amplify.API.subscribe(
    GraphQLRequest<String>(document: subscriptionDocument),
    onEstablished: () {
      subscriptionCompleter.complete();
    },
  );

  // TODO: subscriptionCompleter is not working correctly. Future.delayed is a temp solution
  // await subscriptionCompleter.future;
  await Future.delayed(const Duration(seconds: 1), () {});

  operation.listen((event) async {
    Map<dynamic, dynamic> parsedMap = jsonDecode(event.data);
    String codeId = parsedMap['onCreateConfirmSignUpTestRun']['id'];
    var codeQuery = Amplify.API.query(
        request: GraphQLRequest<String>(
      document: queryDocument,
      variables: <String, String>{'id': codeId},
    ));

    var response = await codeQuery.response;

    ConfirmationCodeTestRun result =
        ConfirmationCodeTestRun.fromJson(response.data);

    if (onCodeRecieved != null) {
      await onCodeRecieved(result.code!);
    }

    codeCompleter.complete(result);
  });

  if (onSubscriptionEstablished != null) {
    await onSubscriptionEstablished();
  }
  return codeCompleter.future;
}
