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

import 'types/create_mfa_code_response.dart';

final _logger =
    AmplifyLogger.category(Category.auth).createChild('IntegrationTestUtils');

/// A GraphQL document used by the [deleteUser] test utility method.
const deleteDocument = r'''
mutation DeleteUser($username: String!) {
  deleteUser(username: $username) {
    error
    success
  }
}''';

Future<GraphQLClient> get _graphQLClient async {
  final config = await Amplify.asyncConfig;
  final api = config.api!.awsPlugin!.default$!;
  return GraphQLClient(
    cache: GraphQLCache(),
    link: HttpLink(
      api.endpoint,
      defaultHeaders: {
        'x-api-key': api.apiKey!,
      },
    ),
  );
}

/// Deletes a Cognito user in backend infrastructure.
///
/// This method differs from the Auth.deleteUser API in that
/// an access token is not required.
Future<void> deleteUser(String username) async {
  final client = await _graphQLClient;

  final options = MutationOptions(
    document: gql(deleteDocument),
    variables: <String, dynamic>{
      'username': username,
    },
  );

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
  final client = await _graphQLClient;

  final createUserParams = <String, dynamic>{
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
            (el) => el.userAttributeKey == CognitoUserAttributeKey.givenName,
            orElse: () => const AuthUserAttribute(
                userAttributeKey: CognitoUserAttributeKey.givenName,
                value: 'default_given_name'))
        .value,
    'name': attributes
        .firstWhere((el) => el.userAttributeKey == CognitoUserAttributeKey.name,
            orElse: () => const AuthUserAttribute(
                userAttributeKey: CognitoUserAttributeKey.name,
                value: 'default_name'))
        .value,
    'phoneNumber': attributes
        .firstWhere(
            (el) => el.userAttributeKey == CognitoUserAttributeKey.phoneNumber,
            orElse: () => const AuthUserAttribute(
                userAttributeKey: CognitoUserAttributeKey.phoneNumber,
                value: '+15555555'))
        .value,
    'username': username,
    'verifyAttributes': verifyAttributes,
  };

  _logger.debug('Creating user "$username" with values: $createUserParams');
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
    variables: {
      'input': {
        ...createUserParams,
        'password': password,
      },
    },
  );

  final result = await client.mutate(options);
  final createError =
      result.data?['createUser']?['error'] ?? result.exception?.toString();
  if (createError != null) {
    throw Exception(createError);
  }
}

/// Returns the OTP code for [username]. Must be called before the network call
/// generating the OTP code.
Future<String> getOtpCode(String username) async {
  const subscriptionDocument = r'''
    subscription OnCreateMFACode($username: String!) {
      onCreateMFACode(username: $username) {
        username
        code
      }
    }''';

  final Stream<GraphQLResponse<String>> operation = Amplify.API.subscribe(
    GraphQLRequest<String>(
      document: subscriptionDocument,
      variables: {
        'username': username,
      },
    ),
    onEstablished: () => _logger.debug('Established connection'),
  );

  // Collect code delivered via Lambda
  return operation
      .tap(
        (event) => _logger.debug(
          'Got event: ${event.data}, errors: ${event.errors}',
        ),
      )
      .map((event) {
        if (event.errors?.isNotEmpty ?? false) {
          throw Exception(event.errors);
        }
        final json = jsonDecode(event.data!)['onCreateMFACode'] as Map;
        return CreateMFACodeResponse.fromJson(json.cast());
      })
      .map((event) => event.code)
      .first;
}

/// Returns the stream of all OTP codes broadcast by Cognito.
///
/// This is useful with aliases when the username is not known ahead of time.
Stream<String> getOtpCodes() {
  const subscriptionDocument = r'''
    subscription OnCreateMFACode {
      onCreateMFACode {
        username
        code
      }
    }''';

  final Stream<GraphQLResponse<String>> operation = Amplify.API.subscribe(
    GraphQLRequest<String>(
      document: subscriptionDocument,
    ),
    onEstablished: () => _logger.debug('Established connection'),
  );

  // Collect code delivered via Lambda
  return operation
      .tap(
    (event) => _logger.debug(
      'Got event: ${event.data}, errors: ${event.errors}',
    ),
  )
      .map((event) {
    if (event.errors?.isNotEmpty ?? false) {
      throw Exception(event.errors);
    }
    final json = jsonDecode(event.data!)['onCreateMFACode'] as Map;
    return CreateMFACodeResponse.fromJson(json.cast());
  }).map((event) => event.code);
}
