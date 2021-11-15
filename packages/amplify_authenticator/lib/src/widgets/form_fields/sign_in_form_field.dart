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

part of authenticator.form_field;

/// {@template authenticator.sign_in_form_field}
/// A form field component on the Sign In screen.
/// {@endtemplate}
abstract class SignInFormField<FieldValue> extends AuthenticatorFormField<
    SignInField, FieldValue, SignInFormField<FieldValue>> {
  /// {@macro authenticator.sign_in_form_field}
  ///
  /// Either [titleKey] or [title] is required.
  const SignInFormField._({
    Key? key,
    required SignInField field,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    FormFieldValidator<FieldValue>? validator,
  }) : super._(
          key: key,
          field: field,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
          validator: validator,
        );

  /// Creates a username component.
  static SignInFormField username({
    Key? key,
    FormFieldValidator<UsernameInput>? validator,
  }) =>
      _SignInUsernameField(
        key: key ?? keyUsernameSignInFormField,
        validator: validator,
      );

  /// Creates a password component.
  static SignInFormField password({
    Key? key,
    FormFieldValidator<String>? validator,
  }) =>
      _SignInTextField(
        key: key ?? keyPasswordSignInFormField,
        titleKey: InputResolverKey.passwordTitle,
        hintTextKey: InputResolverKey.passwordHint,
        field: SignInField.password,
        validator: validator,
      );

  @override
  int get priority {
    switch (field) {
      case SignInField.username:
        return 2;
      case SignInField.password:
        return 1;
    }
  }

  @override
  bool get markRequired {
    switch (field) {
      case SignInField.username:
        return false;
      case SignInField.password:
        return true;
    }
  }
}

abstract class _SignInFormFieldState<FieldValue>
    extends AuthenticatorFormFieldState<SignInField, FieldValue,
        SignInFormField<FieldValue>> {
  @override
  bool get obscureText {
    switch (widget.field) {
      case SignInField.password:
      default:
        return false;
    }
  }

  @override
  TextInputType get keyboardType {
    switch (widget.field) {
      case SignInField.username:
      case SignInField.password:
        return TextInputType.visiblePassword;
    }
  }

  @override
  Widget? get suffix {
    switch (widget.field) {
      case SignInField.password:
        return visibilityToggle;
      default:
        return null;
    }
  }
}

class _SignInTextField extends SignInFormField<String> {
  const _SignInTextField({
    Key? key,
    required SignInField field,
    InputResolverKey? titleKey,
    InputResolverKey? hintTextKey,
    String? title,
    String? hintText,
    FormFieldValidator<String>? validator,
  }) : super._(
          key: key,
          field: field,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
          validator: validator,
        );

  @override
  _SignInTextFieldState createState() => _SignInTextFieldState();
}

class _SignInTextFieldState extends _SignInFormFieldState<String>
    with AuthenticatorTextField {
  @override
  String? get initialValue {
    switch (widget.field) {
      case SignInField.username:
        return viewModel.username;
      case SignInField.password:
        return viewModel.password;
    }
  }

  @override
  ValueChanged<String> get onChanged {
    switch (widget.field) {
      case SignInField.username:
        return viewModel.setUsername;
      case SignInField.password:
        return viewModel.setPassword;
      default:
        return super.onChanged;
    }
  }

  @override
  FormFieldValidator<String> get validator {
    switch (widget.field) {
      case SignInField.username:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.usernameEmpty,
          ),
        );
      case SignInField.password:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.passwordEmpty,
          ),
        );
    }
  }
}

class _SignInUsernameField extends SignInFormField<UsernameInput> {
  const _SignInUsernameField({
    Key? key,
    FormFieldValidator<UsernameInput>? validator,
  }) : super._(
          key: key ?? keyUsernameSignInFormField,
          titleKey: InputResolverKey.usernameTitle,
          hintTextKey: InputResolverKey.usernameHint,
          field: SignInField.username,
          validator: validator,
        );

  @override
  _SignInUsernameFieldState createState() => _SignInUsernameFieldState();
}

class _SignInUsernameFieldState extends _SignInFormFieldState<UsernameInput>
    with AuthenticatorUsernameField {}
