import 'package:amplify_flutter/config/amplify_config.dart';
import 'package:amplify_flutter/config/auth/password_policy_characters.dart';
import 'package:amplify_flutter/config/auth/password_protection_settings.dart';

final _emailRegex = RegExp(r'^\S+@\S+$');
final _codeRegex = RegExp(r'\d{6}');
final _uppercase = RegExp('^(?=.*[A-Z])');
final _lowercase = RegExp('^(?=.*[a-z])');
final _numeric = RegExp('^(?=.*\\d)');
final _symbols = RegExp(r'[~/`!@#$%^&\"*(),._?:;{}|<>\]\[\\]');

Function simpleValidator = (String field) {
  return (String? input) {
    if (input == null || input.isEmpty) {
      return '$field cannot be empty';
    }
    return null;
  };
};

Function validateSignUpPassword = (AmplifyConfig? config) {
  PasswordProtectionSettings? _passwordProtectionSettings = config?.auth
      ?.awsCognitoAuthPlugin?.auth?['Default']?.passwordProtectionSettings;

  return (String? password) {
    List<String> passwordHints = ['Passwords must include:'];

    int? minLength = _passwordProtectionSettings?.passwordPolicyMinLength;
    List<PasswordPolicyCharacters>? passwordCharacters =
        _passwordProtectionSettings?.passwordPolicyCharacters;
    if (password == null || password.isEmpty || minLength! < password.length) {
      passwordHints.add('* at least $minLength characters');
    } else {
      if (passwordCharacters != null && passwordCharacters.isNotEmpty) {
        if (passwordCharacters
                .contains(PasswordPolicyCharacters.requiresLowercase) &&
            !_lowercase.hasMatch(password)) {
          passwordHints.add('* lowercase character(s)');
        }
        if (passwordCharacters
                .contains(PasswordPolicyCharacters.requiresUppercase) &&
            !_uppercase.hasMatch(password)) {
          passwordHints.add('* uppercase character(s)');
        }
        if (passwordCharacters
                .contains(PasswordPolicyCharacters.requiresNumbers) &&
            !_numeric.hasMatch(password)) {
          passwordHints.add('* number(s)');
        }
        // TODO: symbols regex does not handle singel quotes, currently handling with separate check.
        if (passwordCharacters
                .contains(PasswordPolicyCharacters.requiresSymbols) &&
            !_symbols.hasMatch(password) &&
            !password.contains("'")) {
          passwordHints.add('* symbol(s)');
        }
      }
    }
    return passwordHints.length > 0 ? passwordHints.join('\n') : null;
  };
};

Function validatePasswordConfirmation = (String? initialPassword) {
  return (String? passwordConfirmation) {
    if (passwordConfirmation == null || passwordConfirmation.isEmpty) {
      return 'Re-enter your password to confirm';
    } else if (initialPassword != passwordConfirmation) {
      return 'Passwords do not match';
    }
    return null;
  };
};

String? validatePhoneNumber(String? phoneNumber) {
  if (phoneNumber == null || phoneNumber.isEmpty) {
    return 'Phone number cannot be empty';
  }
  return null;
}

String? validateEmail(String? email) {
  if (email == null || email.isEmpty) {
    return 'Email cannot be empty';
  }
  if (!_emailRegex.hasMatch(email)) {
    return 'Invalid email format';
  }
  return null;
}

String? validateCode(String? code) {
  if (code == null || code.isEmpty) {
    return 'Please enter the verification code';
  }
  if (!_codeRegex.hasMatch(code)) {
    return 'Invalid code format';
  }

  return null;
}
