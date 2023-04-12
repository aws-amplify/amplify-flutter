// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of authenticator.form_field;

/// {@category Prebuilt Widgets}
/// {@template amplify_authenticator.sign_in_form_field}
/// A prebuilt form field widget for the Sign In step.
///
/// Can be used to create [username] or [password] form field.
///
/// See also: [SignInForm.custom]
/// {@endtemplate}
abstract class SignInFormField<FieldValue extends Object>
    extends AuthenticatorFormField<SignInField, FieldValue> {
  /// {@macro amplify_authenticator.sign_in_form_field}
  ///
  /// Either [titleKey] or [title] is required.
  const SignInFormField._({
    super.key,
    required super.field,
    super.titleKey,
    super.hintTextKey,
    super.title,
    super.hintText,
    super.validator,
    bool? required,
    super.autofillHints,
  }) : super._(
          requiredOverride: required,
        );

  /// {@macro amplify_authenticator.username_form_field}
  static SignInFormField<UsernameInput> username({
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
  static SignInFormField<String> password({
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

abstract class _SignInFormFieldState<FieldValue extends Object>
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
    if (widget.autofillHints != null) return widget.autofillHints;
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
    super.key,
    required super.field,
    super.titleKey,
    super.hintTextKey,
    super.validator,
    super.autofillHints,
  }) : super._();

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
    super.validator,
    super.autofillHints,
  }) : super._(
          key: key ?? keyUsernameSignInFormField,
          titleKey: InputResolverKey.usernameTitle,
          hintTextKey: InputResolverKey.usernameHint,
          field: SignInField.username,
        );

  @override
  _SignInUsernameFieldState createState() => _SignInUsernameFieldState();
}

class _SignInUsernameFieldState extends _SignInFormFieldState<UsernameInput>
    with AuthenticatorUsernameField {}
