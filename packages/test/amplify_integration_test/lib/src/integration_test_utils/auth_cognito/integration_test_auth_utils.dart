// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:collection/collection.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:test/scaffolding.dart';

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
          (el) => el.userAttributeKey.key == AuthUserAttributeKey.email.key,
          orElse: () => AuthUserAttribute(
            userAttributeKey: AuthUserAttributeKey.email,
            value: generateEmail(),
          ),
        )
        .value,
    'enableMFA': enableMfa,
    'givenName': attributes
        .firstWhere(
          (el) => el.userAttributeKey.key == AuthUserAttributeKey.givenName.key,
          orElse: () => const AuthUserAttribute(
            userAttributeKey: AuthUserAttributeKey.givenName,
            value: 'default_given_name',
          ),
        )
        .value,
    'name': attributes
        .firstWhere(
          (el) => el.userAttributeKey.key == AuthUserAttributeKey.name.key,
          orElse: () => const AuthUserAttribute(
            userAttributeKey: AuthUserAttributeKey.name,
            value: 'default_name',
          ),
        )
        .value,
    'phoneNumber': attributes
        .firstWhere(
          (el) =>
              el.userAttributeKey.key == AuthUserAttributeKey.phoneNumber.key,
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

  final cognitoUsername =
      (result['createUser'] as Map)['cognitoUsername'] as String;

  addTearDown(() async {
    try {
      await _oneOf([
        // TODO(dnys1): Cognito cannot always delete a user by `cognitoUsername`. Why?
        deleteUser(username),
        deleteUser(cognitoUsername),
      ]);
    } on Exception catch (e) {
      _logger.debug('Error deleting user ($username / $cognitoUsername):', e);
    }
  });

  return cognitoUsername;
}

/// {@template amplify_integration_test.otp_result}
/// Captures the result of an OTP code being sent to an email or phone number.
/// {@endtemplate}
class OtpResult {
  /// {@macro amplify_integration_test.otp_result}
  const OtpResult(this.code);

  /// The future value of the OTP code.
  final Future<String> code;
}

enum _UserAttributeType { username, email, phone }

/// Identifies a user by a particular attribute.
class UserAttribute {
  /// Identifies a user by their username.
  const UserAttribute.username(String username)
      : _value = username,
        _type = _UserAttributeType.username;

  /// Identifies a user by their email.
  const UserAttribute.email(String email)
      : _value = email,
        _type = _UserAttributeType.email;

  /// Identifies a user by their phone number.
  const UserAttribute.phone(String phoneNumber)
      : _value = phoneNumber,
        _type = _UserAttributeType.phone;

  final _UserAttributeType _type;
  final String _value;
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
        switch (userAttribute._type) {
          case _UserAttributeType.username:
            return event.username == userAttribute._value;
          case _UserAttributeType.email:
            return event.userAttributes[CognitoUserAttributeKey.email] ==
                userAttribute._value;
          case _UserAttributeType.phone:
            return event.userAttributes[CognitoUserAttributeKey.phoneNumber] ==
                userAttribute._value;
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
    final json = (jsonDecode(event.data!) as Map)['onCreateMFACode'] as Map;
    return CreateMFACodeResponse.fromJson(json.cast());
  });
}

/// Completes if one of the [futures] completes successfully.
///
/// Otherwise, throws with the combined errors of all of them.
Future<void> _oneOf(List<Future<Object?>> futures) async {
  var success = false;
  final errors = List<Object?>.filled(futures.length, null);
  await Future.wait(
    futures.mapIndexed(
      (index, fut) => fut.then((_) {
        success = true;
      }).onError((e, _) {
        errors[index] = e;
      }),
    ),
  );
  if (!success) {
    throw Exception(errors);
  }
}
