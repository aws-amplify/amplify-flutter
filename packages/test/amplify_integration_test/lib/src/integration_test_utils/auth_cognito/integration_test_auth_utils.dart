// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:stream_transform/stream_transform.dart';

final _logger =
    AmplifyLogger.category(Category.auth).createChild('IntegrationTestUtils');

Future<Map<String, Object?>> _graphQL(
  String document, {
  Map<String, Object?> variables = const {},
}) async {
  final response = await Amplify.API
      .query(
        request: GraphQLRequest<String>(
          document: document,
          variables: variables,
        ),
      )
      .response;
  if (response.hasErrors) {
    throw Exception(response.errors);
  }
  final responseJson = jsonDecode(response.data!) as Map<String, Object?>;
  return responseJson;
}

/// Deletes a Cognito user in backend infrastructure.
///
/// This method differs from the Auth.deleteUser API in that
/// an access token is not required.
Future<void> deleteUser(String username) async {
  final result = await _graphQL(
    r'''
mutation DeleteUser($username: String!) {
  deleteUser(username: $username) {
    error
    success
  }
}''',
    variables: <String, dynamic>{
      'username': username,
    },
  );

  final deleteError = (result['deleteUser'] as Map?)?['error'];
  if (deleteError != null) {
    throw Exception(deleteError);
  }
}

/// Deletes a Cognito device identified by [deviceKey].
Future<void> deleteDevice(String username, String deviceKey) async {
  final result = await _graphQL(
    r'''
mutation DeleteDevice($input: DeleteDeviceInput!) {
  deleteDevice(input: $input) {
    error
    success
  }
}
''',
    variables: <String, dynamic>{
      'input': {
        'username': username,
        'deviceKey': deviceKey,
      },
    },
  );

  final deleteError = (result['deleteDevice'] as Map?)?['error'];
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
Future<String> adminCreateUser(
  String username,
  String password, {
  bool autoConfirm = false,
  bool enableMfa = false,
  bool verifyAttributes = false,
  List<AuthUserAttribute> attributes = const [],
}) async {
  final createUserParams = <String, dynamic>{
    'autoConfirm': autoConfirm,
    'email': attributes
        .firstWhere(
          (el) => el.userAttributeKey == AuthUserAttributeKey.email,
          orElse: () => AuthUserAttribute(
            userAttributeKey: AuthUserAttributeKey.email,
            value: generateEmail(),
          ),
        )
        .value,
    'enableMFA': enableMfa,
    'givenName': attributes
        .firstWhere(
          (el) => el.userAttributeKey == AuthUserAttributeKey.givenName,
          orElse: () => const AuthUserAttribute(
            userAttributeKey: AuthUserAttributeKey.givenName,
            value: 'default_given_name',
          ),
        )
        .value,
    'name': attributes
        .firstWhere(
          (el) => el.userAttributeKey == AuthUserAttributeKey.name,
          orElse: () => const AuthUserAttribute(
            userAttributeKey: AuthUserAttributeKey.name,
            value: 'default_name',
          ),
        )
        .value,
    'phoneNumber': attributes
        .firstWhere(
          (el) => el.userAttributeKey == AuthUserAttributeKey.phoneNumber,
          orElse: () => AuthUserAttribute(
            userAttributeKey: AuthUserAttributeKey.phoneNumber,
            value: generatePhoneNumber(),
          ),
        )
        .value,
    'username': username,
    'verifyAttributes': verifyAttributes,
  };

  _logger.debug('Creating user "$username" with values: $createUserParams');
  final result = await _graphQL(
    r'''
          mutation CreateUser($input: CreateUserInput!) {
            createUser(input: $input) {
              success
              cognitoUsername
              error
            }
          }
      ''',
    variables: {
      'input': {
        ...createUserParams,
        'password': password,
      },
    },
  );
  _logger.debug('Got result: $result');

  final createError = (result['createUser'] as Map?)?['error'];
  if (createError != null) {
    throw Exception(createError);
  }

  return (result['createUser'] as Map)['cognitoUsername'] as String;
}

class OtpResult {
  const OtpResult(this.code);

  final Future<String> code;
}

enum UserAttributeType { username, email, phone }

class UserAttribute {
  const UserAttribute.username(String username)
      : value = username,
        type = UserAttributeType.username;
  const UserAttribute.email(String email)
      : value = email,
        type = UserAttributeType.email;
  const UserAttribute.phone(String phoneNumber)
      : value = phoneNumber,
        type = UserAttributeType.phone;

  final UserAttributeType type;
  final String value;
}

/// Returns the OTP code for [userAttribute].
///
/// Must be called before the network call generating the OTP code.
Future<OtpResult> getOtpCode(UserAttribute userAttribute) async {
  final establishedCompleter = Completer<void>();
  final otpCodes = getOtpCodes(
    onEstablished: establishedCompleter.complete,
  );

  // Collect code delivered via Lambda
  final code = otpCodes
      .tap((event) => _logger.debug('Got OTP Code: $event'))
      .where((event) {
        switch (userAttribute.type) {
          case UserAttributeType.username:
            return event.username == userAttribute.value;
          case UserAttributeType.email:
            return event.userAttributes[AuthUserAttributeKey.email] ==
                userAttribute.value;
          case UserAttributeType.phone:
            return event.userAttributes[AuthUserAttributeKey.phoneNumber] ==
                userAttribute.value;
        }
      })
      .map((event) => event.code)
      .first;

  await establishedCompleter.future;
  return OtpResult(code);
}

/// Returns the stream of all OTP codes broadcast by Cognito.
///
/// This is useful with aliases when the username is not known ahead of time.
Stream<CreateMFACodeResponse> getOtpCodes({void Function()? onEstablished}) {
  const subscriptionDocument = r'''
    subscription OnCreateMFACode {
      onCreateMFACode {
        username
        code
        userAttributes
      }
    }''';

  final operation = Amplify.API.subscribe(
    GraphQLRequest<String>(
      document: subscriptionDocument,
    ),
    onEstablished: () {
      onEstablished?.call();
      _logger.debug('Established connection');
    },
  );

  // Collect code delivered via Lambda
  return operation
      .tap(
    (event) => _logger.debug(
      'Got event: ${event.data}, errors: ${event.errors}',
    ),
  )
      .map((event) {
    if (event.hasErrors) {
      throw Exception(event.errors);
    }
    final json = jsonDecode(event.data!)['onCreateMFACode'] as Map;
    return CreateMFACodeResponse.fromJson(json.cast());
  });
}
