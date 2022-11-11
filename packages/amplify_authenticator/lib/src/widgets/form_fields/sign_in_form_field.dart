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

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.sign_in_form_field}
/// A prebuilt form field widget for the Sign In step.
///
/// Can be used to create [username] or [password] form field.
///
/// See also: [SignInForm.custom]
/// {@endtemplate}
abstract class SignInFormField<FieldValue> extends AuthenticatorFormField<
    SignInField, FieldValue, SignInFormField<FieldValue>> {
  /// {@macro amplify_authenticator.sign_in_form_field}
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
    bool? required,
    Iterable<String>? autofillHints,
  }) : super._(
          key: key,
          field: field,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
          validator: validator,
          requiredOverride: required,
          autofillHints: autofillHints,
        );

  /// {@macro amplify_authenticator.username_form_field}
  static SignInFormField username({
    Key? key,
    FormFieldValidator<UsernameInput>? validator,
    Iterable<String>? autofillHints,
  }) =>
      _SignInUsernameField(
        key: key ?? keyUsernameSignInFormField,
        validator: validator,
        autofillHints: autofillHints,
      );

  /// Creates a password FormField for the sign in step.
  static SignInFormField password({
    Key? key,
    FormFieldValidator<String>? validator,
    Iterable<String>? autofillHints,
  }) =>
      _SignInTextField(
        key: key ?? keyPasswordSignInFormField,
        titleKey: InputResolverKey.passwordTitle,
        hintTextKey: InputResolverKey.passwordHint,
        field: SignInField.password,
        validator: validator,
        autofillHints: autofillHints,
      );

  @override
  int get displayPriority {
    switch (field) {
      case SignInField.username:
        return 2;
      case SignInField.password:
        return 1;
    }
  }

  @override
  bool get required {
    switch (field) {
      case SignInField.username:
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
      case SignInField.username:
        return false;
      case SignInField.password:
        return true;
    }
  }

  @override
  TextInputType get keyboardType {
    switch (widget.field) {
      case SignInField.username:
        return TextInputType.text;
      case SignInField.password:
        return TextInputType.visiblePassword;
    }
  }

  @override
  Widget? get suffix {
    switch (widget.field) {
      case SignInField.username:
        return null;
      case SignInField.password:
        return visibilityToggle;
    }
  }

  @override
  Iterable<String>? get autofillHints {
    //Checks for override value
    if (widget.autofillHints != null) return widget.autofillHints;

    //Returns default value
    switch (widget.field) {
      case SignInField.username:
        return const [
          AutofillHints.username,
        ];
      case SignInField.password:
        return const [
          AutofillHints.password,
        ];
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
    bool? required,
    Iterable<String>? autofillHints,
  }) : super._(
          key: key,
          field: field,
          titleKey: titleKey,
          hintTextKey: hintTextKey,
          title: title,
          hintText: hintText,
          validator: validator,
          required: required,
          autofillHints: autofillHints,
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
        return state.username;
      case SignInField.password:
        return state.password;
    }
  }

  @override
  ValueChanged<String> get onChanged {
    switch (widget.field) {
      case SignInField.username:
        return (v) => state.username = v;
      case SignInField.password:
        return (v) => state.password = v;
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
          isOptional: isOptional,
        );
      case SignInField.password:
        return simpleValidator(
          stringResolver.inputs.resolve(
            context,
            InputResolverKey.passwordEmpty,
          ),
          isOptional: isOptional,
        );
    }
  }
}

class _SignInUsernameField extends SignInFormField<UsernameInput> {
  const _SignInUsernameField({
    Key? key,
    FormFieldValidator<UsernameInput>? validator,
    Iterable<String>? autofillHints,
  }) : super._(
          key: key ?? keyUsernameSignInFormField,
          titleKey: InputResolverKey.usernameTitle,
          hintTextKey: InputResolverKey.usernameHint,
          field: SignInField.username,
          validator: validator,
          autofillHints: autofillHints,
        );

  @override
  _SignInUsernameFieldState createState() => _SignInUsernameFieldState();
}

class _SignInUsernameFieldState extends _SignInFormFieldState<UsernameInput>
    with AuthenticatorUsernameField {}
