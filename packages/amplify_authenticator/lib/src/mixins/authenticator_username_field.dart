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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/src/l10n/auth_strings_resolver.dart';
import 'package:amplify_authenticator/src/models/username_input.dart';
import 'package:amplify_authenticator/src/theme/amplify_theme.dart';
import 'package:amplify_authenticator/src/utils/validators.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/material.dart';

mixin AuthenticatorUsernameField<FieldType,
        T extends AuthenticatorFormField<FieldType, UsernameInput, T>>
    on AuthenticatorFormFieldState<FieldType, UsernameInput, T> {
  @override
  UsernameInput? get initialValue {
    String? username;
    switch (selectedUsernameType) {
      case UsernameType.username:
        username = viewModel.username;
        break;
      case UsernameType.email:
        username = viewModel.getAttribute(CognitoUserAttributeKey.email);
        break;
      case UsernameType.phoneNumber:
        username = viewModel.getAttribute(CognitoUserAttributeKey.phoneNumber);
        break;
    }

    return UsernameInput(type: selectedUsernameType, username: username ?? '');
  }

  @override
  ValueChanged<UsernameInput> get onChanged {
    switch (selectedUsernameType) {
      case UsernameType.username:
        return (input) {
          viewModel.setUsername(input.username);
        };
      case UsernameType.email:
        return (input) {
          viewModel.setEmail(input.username);
          viewModel.setUsername(input.username);
        };
      case UsernameType.phoneNumber:
        return (input) {
          viewModel.setPhoneNumber(input.username);
          viewModel.setUsername(input.username);
        };
    }
  }

  @override
  TextInputType get keyboardType {
    switch (selectedUsernameType) {
      case UsernameType.username:
        return TextInputType.text;
      case UsernameType.email:
        return TextInputType.emailAddress;
      case UsernameType.phoneNumber:
        return TextInputType.phone;
    }
  }

  InputResolverKey get hintKey {
    switch (selectedUsernameType) {
      case UsernameType.username:
        return InputResolverKey.usernameHint;
      case UsernameType.email:
        return InputResolverKey.emailHint;
      case UsernameType.phoneNumber:
        return InputResolverKey.phoneNumberHint;
    }
  }

  InputResolverKey get titleKey {
    switch (selectedUsernameType) {
      case UsernameType.username:
        return InputResolverKey.usernameTitle;
      case UsernameType.email:
        return InputResolverKey.emailTitle;
      case UsernameType.phoneNumber:
        return InputResolverKey.phoneNumberTitle;
    }
  }

  @override
  Widget get title {
    final inputResolver = stringResolver.inputs;
    final titleString = inputResolver.resolve(context, titleKey);
    final labelText = Text(
      isOptional ? inputResolver.optional(context, titleString) : titleString,
    );

    // Mirrors internal impl. to create an "always active" Switch theme.
    final thumbColor = Theme.of(context).toggleableActiveColor;
    final trackColor = thumbColor.withOpacity(0.5);

    switch (usernameType) {
      case UsernameConfigType.username:
      case UsernameConfigType.email:
      case UsernameConfigType.phoneNumber:
        return labelText;
      case UsernameConfigType.emailOrPhoneNumber:
      default:
        return SizedBox(
          height: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              labelText,
              IconTheme.merge(
                data: const IconThemeData(size: 16.0),
                child: Row(
                  children: [
                    const Icon(Icons.phone),
                    Switch(
                      thumbColor: MaterialStateProperty.all(thumbColor),
                      trackColor: MaterialStateProperty.all(trackColor),
                      value: useEmail.value,
                      onChanged: (val) {
                        setState(() {
                          useEmail.value = val;
                        });

                        // Reset current username value to align with the current switch state.
                        String newUsername = val
                            ? viewModel.getAttribute(
                                    CognitoUserAttributeKey.email) ??
                                ''
                            : viewModel.getAttribute(
                                    CognitoUserAttributeKey.phoneNumber) ??
                                '';
                        viewModel.setUsername(newUsername);
                      },
                    ),
                    const Icon(Icons.email),
                  ],
                ),
              ),
            ],
          ),
        );
    }
  }

  @override
  FormFieldValidator<UsernameInput> get validator {
    switch (selectedUsernameType) {
      case UsernameType.username:
        return (input) => simpleValidator(
              stringResolver.inputs.resolve(
                context,
                InputResolverKey.usernameEmpty,
              ),
              isOptional: isOptional,
            )(input?.username);
      case UsernameType.email:
        return (input) => validateEmail(
              input?.username,
              isOptional: isOptional,
            );
      case UsernameType.phoneNumber:
        return (input) => validatePhoneNumber(
              input?.username,
              isOptional: isOptional,
            );
    }
  }

  @override
  Widget buildFormField(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    final hintText = inputResolver.resolve(context, hintKey);

    void _onChanged(String username) {
      return onChanged(UsernameInput(
        type: selectedUsernameType,
        username: username,
      ));
    }

    String? _validator(String? username) {
      final _validator = widget.validatorOverride ?? validator;
      return _validator(UsernameInput(
        type: selectedUsernameType,
        username: username ?? '',
      ));
    }

    if (selectedUsernameType == UsernameType.phoneNumber) {
      return AuthenticatorPhoneField<FieldType>(
        field: widget.field,
        onChanged: _onChanged,
        validator: _validator,
        enabled: enabled,
        errorMaxLines: errorMaxLines,
        initialValue:
            viewModel.getAttribute(CognitoUserAttributeKey.phoneNumber),
      );
    }
    return TextFormField(
      style: enabled
          ? null
          : TextStyle(
              color: AmplifyTheme.of(context).fontDisabled,
            ),
      initialValue: initialValue?.username,
      enabled: enabled,
      validator: _validator,
      onChanged: _onChanged,
      autocorrect: false,
      decoration: InputDecoration(
        prefixIcon: prefix,
        suffixIcon: suffix,
        errorMaxLines: errorMaxLines,
        hintText: hintText,
        isDense: true,
      ),
      keyboardType: keyboardType,
      obscureText: false,
    );
  }
}

mixin UsernameAttributes<T extends AuthenticatorComponent<T>>
    on AuthenticatorComponentState<T> {
  late final Set<CognitoUserAttributeKey> usernameAttributes = config
          .amplifyConfig
          ?.auth
          ?.awsCognitoAuthPlugin
          ?.auth?['Default']
          ?.usernameAttributes
          ?.toSet() ??
      const <CognitoUserAttributeKey>{};

  /// Toggle value for the email or phone number case.
  final ValueNotifier<bool> useEmail = ValueNotifier(true);

  UsernameConfigType get usernameType {
    if (usernameAttributes.isEmpty) {
      return UsernameConfigType.username;
    }
    if (usernameAttributes.length >= 2) {
      return UsernameConfigType.emailOrPhoneNumber;
    }
    final usernameAttribute = usernameAttributes.single;
    if (usernameAttribute == CognitoUserAttributeKey.email) {
      return UsernameConfigType.email;
    }
    assert(
      usernameAttribute == CognitoUserAttributeKey.phoneNumber,
      'Unknown username attribute: $usernameAttribute',
    );
    return UsernameConfigType.phoneNumber;
  }

  UsernameType get selectedUsernameType {
    switch (usernameType) {
      case UsernameConfigType.username:
        return UsernameType.username;
      case UsernameConfigType.email:
        return UsernameType.email;
      case UsernameConfigType.phoneNumber:
        return UsernameType.phoneNumber;
      case UsernameConfigType.emailOrPhoneNumber:
        if (useEmail.value) {
          return UsernameType.email;
        }
        return UsernameType.phoneNumber;
    }
  }
}
