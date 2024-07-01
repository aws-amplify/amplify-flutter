// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/utils/unmet_password_requirements.dart';
import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports
import 'package:amplify_core/src/config/amplify_outputs/auth/password_policy.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

/* TODO: update `usernameRegex` expression to match Cognito requirements
* Proposed expression `[\p{L}\p{M}\p{S}\p{N}\p{P}]+` does not work as 
* expected due to a mismatch in Regex flavor used by dart
*/
final usernameRegex = RegExp(r'^\S+$');
final emailRegex = RegExp(r'^\S+@\S+$');
final phoneNumberRegex = RegExp(r'^\+\d+$');
final _codeRegex = RegExp(r'^\d{6}$');
final _uppercase = RegExp(r'[A-Z]');
final _lowercase = RegExp(r'[a-z]');
final _numeric = RegExp(r'\d');
final _symbols = RegExp(r'''[~/`!@#$%^&\"'*(),._?:;{}|<>\]\[\\]''');

FormFieldValidator<String> simpleValidator(
  String message, {
  required bool isOptional,
}) {
  return (String? input) {
    if (input == null || input.isEmpty) {
      if (isOptional) {
        return null;
      }
      return message;
    }
    return null;
  };
}

FormFieldValidator<String> usernameValidator({
  required BuildContext context,
  required InputResolver inputResolver,
}) {
  return (String? input) {
    if (input == null || input.isEmpty) {
      return inputResolver.resolve(
        context,
        InputResolverKey.usernameEmpty,
      );
    }
    input = input.trim();
    if (!usernameRegex.hasMatch(input)) {
      return inputResolver.resolve(
        context,
        InputResolverKey.usernameRequirementsUnmet,
      );
    }

    return null;
  };
}

FormFieldValidator<String> Function(BuildContext) validateNewPassword({
  required AmplifyOutputs? amplifyOutputs,
  required InputResolver inputResolver,
}) {
  final passwordPolicies = amplifyOutputs?.auth?.passwordPolicy;
  return (BuildContext context) => (String? password) {
        if (password == null || password.isEmpty) {
          return inputResolver.resolve(
            context,
            InputResolverKey.passwordEmpty,
          );
        }
        password = password.trim();
        if (passwordPolicies == null) {
          return null;
        }

        final minLength = passwordPolicies.minLength;
        final meetsMinLengthRequirement =
            minLength == null || password.length >= minLength;

        final unmetCharacterReqs =
            _getUnmetCharacterRequirements(password, passwordPolicies);

        final error = inputResolver.resolve(
          context,
          InputResolverKey.passwordRequirementsUnmet(
            UnmetPasswordRequirements(
              minLength: meetsMinLengthRequirement ? null : minLength,
              characterRequirements: unmetCharacterReqs,
            ),
          ),
        );
        return error.isEmpty ? null : error;
      };
}

List<CharacterRequirements> _getUnmetCharacterRequirements(
  String password,
  PasswordPolicy? policy,
) {
  final unmetReqs = <CharacterRequirements>[];
  if ((policy?.requireLowercase ?? false) && !password.contains(_lowercase)) {
    unmetReqs.add(CharacterRequirements.requiresLowercase);
  }
  if ((policy?.requireUppercase ?? false) && !password.contains(_uppercase)) {
    unmetReqs.add(CharacterRequirements.requiresUppercase);
  }
  if ((policy?.requireNumbers ?? false) && !password.contains(_numeric)) {
    unmetReqs.add(CharacterRequirements.requiresNumbers);
  }
  if ((policy?.requireSymbols ?? false) && !password.contains(_symbols)) {
    unmetReqs.add(CharacterRequirements.requiresSymbols);
  }
  return unmetReqs;
}

FormFieldValidator<String> validatePasswordConfirmation(
  String Function() getPassword, {
  required BuildContext context,
  required InputResolver inputResolver,
}) {
  return (String? passwordConfirmation) {
    if (passwordConfirmation == null || passwordConfirmation.isEmpty) {
      return inputResolver.resolve(
        context,
        InputResolverKey.passwordConfirmationEmpty,
      );
    }
    passwordConfirmation = passwordConfirmation.trim();
    if (getPassword() != passwordConfirmation.trim()) {
      return inputResolver.resolve(
        context,
        InputResolverKey.passwordsDoNotMatch,
      );
    }
    return null;
  };
}

FormFieldValidator<String> validatePhoneNumber({
  required bool isOptional,
  required BuildContext context,
  required InputResolver inputResolver,
}) {
  return (String? phoneNumber) {
    if (phoneNumber == null || phoneNumber.isEmpty) {
      if (isOptional) {
        return null;
      }
      return inputResolver.resolve(
        context,
        InputResolverKey.phoneNumberEmpty,
      );
    }
    phoneNumber = phoneNumber.trim();
    if (!phoneNumberRegex.hasMatch(phoneNumber)) {
      return inputResolver.resolve(context, InputResolverKey.phoneNumberFormat);
    }
    return null;
  };
}

FormFieldValidator<String> validateEmail({
  required bool isOptional,
  required BuildContext context,
  required InputResolver inputResolver,
}) {
  return (String? email) {
    if (email == null || email.isEmpty) {
      if (isOptional) {
        return null;
      }
      return inputResolver.resolve(
        context,
        InputResolverKey.emailEmpty,
      );
    }
    email = email.trim();
    if (!emailRegex.hasMatch(email)) {
      return inputResolver.resolve(context, InputResolverKey.emailFormat);
    }
    return null;
  };
}

FormFieldValidator<String> validateCode({
  required bool isOptional,
  required BuildContext context,
  required InputResolver inputResolver,
}) {
  return (String? code) {
    if (code == null || code.isEmpty) {
      return inputResolver.resolve(
        context,
        InputResolverKey.verificationCodeEmpty,
      );
    }
    code = code.trim();
    if (!_codeRegex.hasMatch(code)) {
      return inputResolver.resolve(
        context,
        InputResolverKey.verificationCodeFormat,
      );
    }

    return null;
  };
}
