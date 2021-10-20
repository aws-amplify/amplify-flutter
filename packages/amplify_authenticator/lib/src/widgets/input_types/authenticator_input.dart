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

import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/enums/alias.dart';
import 'package:amplify_authenticator/src/enums/input_type.dart';
import 'package:amplify_authenticator/src/state/inherited_config.dart';
import 'package:amplify_authenticator/src/state/inherited_input.dart';
import 'package:amplify_authenticator/src/utils/validators.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/form.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

abstract class AuthenticatorInput
    extends AuthenticatorComponent<AuthenticatorInput> {
  final bool obscureText;

  const AuthenticatorInput({required Key key, required this.obscureText})
      : super(key: key);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('obscureText', obscureText));
  }
}

abstract class AuthenticatorInputState<T extends AuthenticatorInput>
    extends AuthenticatorComponentState<AuthenticatorInput> {
  @nonVirtual
  Widget get visibilityToggle => context
      .findAncestorStateOfType<AuthenticatorFormState>()!
      .obscureTextToggle;

  InheritedInput? inheritedInput;

  @nonVirtual
  TextInputType get usernameKeyboardTypeForAlias {
    switch (config.usernameAlias) {
      case Alias.username:
        return TextInputType.text;
      case Alias.email:
        return TextInputType.emailAddress;
      case Alias.phoneNumber:
        return TextInputType.phone;
      case Alias.emailPhoneNumber:
        // TODO: can we improve on just a text field
        // maybe include an icon/toggle to alert user.
        return TextInputType.text;
    }
  }

  @nonVirtual
  void Function(String) get usernameOnChangedForAlias {
    switch (config.usernameAlias) {
      case Alias.username:
        return viewModel.setUsername;
      case Alias.email:
        return (String value) {
          viewModel.setUsername(value);
          viewModel.setEmail(value);
        };
      case Alias.phoneNumber:
        return (String value) {
          viewModel.setUsername(value);
          viewModel.setPhoneNumber(value);
        };
      case Alias.emailPhoneNumber:
        return (String value) {
          viewModel.setUsername(value);
          if (emailRegex.hasMatch(value)) {
            viewModel.setEmail(value);
          } else if (phoneNumberRegex.hasMatch(value)) {
            viewModel.setPhoneNumber(value);
          }
        };
    }
  }

  late String hintText;

  @override
  Widget build(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    inheritedInput = InheritedInput.of(context)!;

    final String titleText = inheritedInput?.field.hintText == null
        ? inputResolver.resolve(context, inheritedInput!.field.hintTextKey!)
        : inheritedInput!.field.hintText!;

    return Container(
      margin: FormFieldConstants.marginBottom,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(titleText),
          const Padding(padding: FormFieldConstants.gap),
          ValueListenableBuilder<bool?>(
              valueListenable: context
                  .findAncestorStateOfType<AuthenticatorFormState>()!
                  .obscureTextToggleValue,
              builder:
                  (BuildContext context, bool? toggleObscureText, Widget? _) {
                return inheritedInput!.child;
              }),
          if (inheritedInput?.companionWidget != null)
            inheritedInput!.companionWidget!,
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<TextInputType>(
        'keyboardTypeForAlias', usernameKeyboardTypeForAlias));
  }
}
