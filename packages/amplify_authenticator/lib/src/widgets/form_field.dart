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

library authenticator.form_field;

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/enums/confirm_signin_types.dart';
import 'package:amplify_authenticator/src/enums/confirm_signup_types.dart';
import 'package:amplify_authenticator/src/enums/signin_types.dart';
import 'package:amplify_authenticator/src/enums/signup_types.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/theme/amplify_theme.dart';
import 'package:amplify_authenticator/src/utils/validators.dart';
import 'package:amplify_authenticator/src/widgets/button.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_flutter/src/config/auth/login_mechanisms.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

part 'form_fields/sign_in_form_field.dart';
part 'form_fields/sign_up_form_field.dart';
part 'form_fields/confirm_sign_up_form_field.dart';
part 'form_fields/confirm_sign_in_form_field.dart';
part 'form_fields/verify_user_form_field.dart';
part 'form_fields/confirm_verify_user_form_field.dart';

/// {@template authenticator.authenticator_form_field}
/// Base class for form field components.
///
/// See also:
/// - [SignInFormField]
/// - [SignUpFormField]
/// - [ConfirmSignInFormField]
/// - [ConfirmSignUpFormField]
/// - [VerifyUserFormField]
/// - [ConfirmVerifyUserFormField]
/// {@endtemplate}
abstract class AuthenticatorFormField<FieldType,
        T extends AuthenticatorFormField<FieldType, T>>
    extends AuthenticatorComponent<T> {
  /// {@macro authenticator.authenticator_form_field}
  const AuthenticatorFormField._({
    Key? key,
    required this.field,
    this.titleKey,
    this.hintTextKey,
    this.title,
    this.hintText,
    FormFieldValidator<String>? validator,
  })  : assert(
          titleKey != null || title != null,
          'Either title or titleKey must be provided',
        ),
        _validatorOverride = validator,
        super(key: key);

  /// Resolver key for the title
  final InputResolverKey? titleKey;

  /// Custom title
  final String? title;

  /// Resolver key for the hint text
  final InputResolverKey? hintTextKey;

  /// Custom hint text
  final String? hintText;

  /// The field this form field controls.
  final FieldType field;

  /// Override of default validator.
  final FormFieldValidator<String>? _validatorOverride;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty('field', field));
    properties.add(EnumProperty('titleKey', titleKey));
    properties.add(EnumProperty('hintTextKey', hintTextKey));
    properties.add(StringProperty('title', title));
    properties.add(StringProperty('hintText', hintText));
  }
}

abstract class _AuthenticatorFormFieldState<FieldType,
        T extends AuthenticatorFormField<FieldType, T>>
    extends AuthenticatorComponentState<T> {
  @nonVirtual
  Widget get visibilityToggle => context
      .findAncestorStateOfType<AuthenticatorFormState>()!
      .obscureTextToggle;

  late final List<LoginMechanisms> _loginMechanisms = config.amplifyConfig?.auth
          ?.awsCognitoAuthPlugin?.auth?['Default']?.loginMechanisms ??
      const <LoginMechanisms>[];

  @nonVirtual
  TextInputType get usernameKeyboardTypeForAlias {
    if (_loginMechanisms.contains(LoginMechanisms.preferredUsername)) {
      return TextInputType.text;
    } else if (_loginMechanisms.contains(LoginMechanisms.email)) {
      if (_loginMechanisms.contains(LoginMechanisms.phoneNumber)) {
        // TODO: can we improve on just a text field
        // maybe include an icon/toggle to alert user.
        return TextInputType.text;
      }
      return TextInputType.emailAddress;
    } else if (_loginMechanisms.contains(LoginMechanisms.phoneNumber)) {
      return TextInputType.phone;
    } else {
      // No assumptions made
      return TextInputType.text;
    }
  }

  @nonVirtual
  ValueChanged<String> get usernameOnChangedForAlias {
    final List<ValueChanged<String>> ops = [];

    if (_loginMechanisms.contains(LoginMechanisms.preferredUsername)) {
      ops.add(viewModel.setUsername);
    }
    if (_loginMechanisms.contains(LoginMechanisms.email)) {
      ops.add(viewModel.setEmail);
    } else if (_loginMechanisms.contains(LoginMechanisms.phoneNumber)) {
      ops.add(viewModel.setPhoneNumber);
    }
    return (String value) {
      for (var op in ops) {
        op(value);
      }
    };
  }

  /// Callback for when `onChanged` is triggered on the [FormField].
  ValueChanged<String> get onChanged => (_) {};

  /// Validates inputs of this form field.
  FormFieldValidator<String>? get validator => null;

  /// Whether to hide input.
  bool get obscureText => false;

  /// The keyboard type to use when this field is focused.
  TextInputType get keyboardType => TextInputType.text;

  /// The initial value to show in the field.
  String? get initialValue => null;

  /// Whether the form field accepts input.
  bool get enabled => true;

  /// Widget to show at trailing end.
  Widget? get suffixIcon => null;

  /// Widget to show directly below this field.
  Widget? get companionWidget => null;

  /// Maximum number of lines to use for error text.
  int get errorMaxLines => 1;

  @override
  Widget build(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    final hintText = widget.hintText == null
        ? inputResolver.resolve(context, widget.hintTextKey!)
        : widget.hintText!;
    final title = widget.title == null
        ? inputResolver.resolve(context, widget.titleKey!)
        : widget.title!;
    return Container(
      margin: FormFieldConstants.marginBottom,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title),
          const Padding(padding: FormFieldConstants.gap),
          ValueListenableBuilder<bool>(
            valueListenable: context
                .findAncestorStateOfType<AuthenticatorFormState>()!
                .obscureTextToggleValue,
            builder: (BuildContext context, bool toggleObscureText, Widget? _) {
              var obscureText = this.obscureText && toggleObscureText;
              return TextFormField(
                style: enabled
                    ? null
                    : const TextStyle(
                        color: AmplifyColors.black20,
                      ),
                initialValue: initialValue,
                enabled: enabled,
                validator: widget._validatorOverride ?? validator,
                onChanged: onChanged,
                decoration: InputDecoration(
                  suffixIcon: suffixIcon,
                  errorMaxLines: errorMaxLines,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  hintText: hintText,
                  border: const OutlineInputBorder(),
                ),
                keyboardType: keyboardType,
                obscureText: obscureText,
              );
            },
          ),
          if (companionWidget != null) companionWidget!,
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        ObjectFlagProperty<ValueChanged<String>>.has('callback', onChanged));
    properties.add(ObjectFlagProperty<FormFieldValidator<String>?>.has(
        'validator', validator));
    properties.add(StringProperty('initialValue', initialValue));
    properties.add(DiagnosticsProperty<bool>('obscureText', obscureText));
    properties.add(DiagnosticsProperty<bool?>('enabled', enabled));
    properties
        .add(DiagnosticsProperty<TextInputType>('keyboardType', keyboardType));
    properties.add(IntProperty('errorMaxLines', errorMaxLines));
    properties.add(DiagnosticsProperty<TextInputType>(
        'keyboardTypeForAlias', usernameKeyboardTypeForAlias));
    properties.add(ObjectFlagProperty<ValueChanged<String>>.has(
        'usernameOnChangedForAlias', usernameOnChangedForAlias));
  }
}
