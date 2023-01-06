// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

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

extension PasswordPolicyCharactersX on PasswordPolicyCharacters {
  @visibleForTesting
  bool meetsRequirement(String value) {
    switch (this) {
      case PasswordPolicyCharacters.requiresLowercase:
        return value.contains(_lowercase);
      case PasswordPolicyCharacters.requiresUppercase:
        return value.contains(_uppercase);
      case PasswordPolicyCharacters.requiresNumbers:
        return value.contains(_numeric);
      case PasswordPolicyCharacters.requiresSymbols:
        return value.contains(_symbols);
    }
  }
}

FormFieldValidator<String> Function(BuildContext) validateNewPassword({
  required AmplifyConfig? amplifyConfig,
  required InputResolver inputResolver,
}) {
  final PasswordProtectionSettings? passwordProtectionSettings = amplifyConfig
      ?.auth?.awsPlugin?.auth?.default$?.passwordProtectionSettings;
  return (BuildContext context) => (String? password) {
        if (password == null || password.isEmpty) {
          return inputResolver.resolve(
            context,
            InputResolverKey.passwordEmpty,
          );
        }
        if (passwordProtectionSettings == null) {
          return null;
        }

        final List<PasswordPolicyCharacters> unmetReqs = [];

        int? minLength = passwordProtectionSettings.passwordPolicyMinLength;
        bool meetsMinLengthRequirement =
            minLength == null || password.length >= minLength;

        final passwordPolicies =
            passwordProtectionSettings.passwordPolicyCharacters;
        for (var policy in passwordPolicies) {
          if (!policy.meetsRequirement(password)) {
            unmetReqs.add(policy);
          }
        }

        var error = inputResolver.resolve(
          context,
          InputResolverKey.passwordRequirementsUnmet(
            PasswordProtectionSettings(
              passwordPolicyMinLength:
                  meetsMinLengthRequirement ? null : minLength,
              passwordPolicyCharacters: unmetReqs,
            ),
          ),
        );
        return error.isEmpty ? null : error;
      };
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
    } else if (getPassword() != passwordConfirmation.trim()) {
      return inputResolver.resolve(
          context, InputResolverKey.passwordsDoNotMatch);
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
    } else if (!phoneNumberRegex.hasMatch(phoneNumber)) {
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
    } else if (!emailRegex.hasMatch(email)) {
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
    } else if (!_codeRegex.hasMatch(code)) {
      return inputResolver.resolve(
          context, InputResolverKey.verificationCodeFormat);
    }

    return null;
  };
}
