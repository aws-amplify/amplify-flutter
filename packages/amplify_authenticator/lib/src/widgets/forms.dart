import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:amplify_authenticator/src/widgets/buttons.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';

class FormFields extends StatelessWidget {
  ///Requires a list of any of these form fields:
  ///   1. SignInFormField
  ///   2. SignUpFormField
  ///   3. ConfirmSignUpFormField
  ///   4. ConfirmSignInFormField
  const FormFields({required this.children});

  /// A list of form fields
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: children,
    );
  }
}

class SignInForm extends StatelessWidget {
  /// Requires a list of sign in form fields.
  const SignInForm({required this.formFields});

  /// A list of sign in form fields

  final FormFields formFields;

  @override
  Widget build(BuildContext context) {
    final _authModelView = InheritedAuthViewModel.of(context)!.signInViewModel;

    return FormContainer(
        formKey: _authModelView.formKey,
        formFields: formFields,
        buttonsContainer: ButtonsContainer(children: <Widget>[
          SignInButton(),
          GoToSignUpButton(),
        ]));
  }
}

class SignUpForm extends StatelessWidget {
  /// Requires a list of sign up  form fields.
  const SignUpForm({required this.formFields});

  /// A list of  sign up form fields
  final FormFields formFields;

  @override
  Widget build(BuildContext context) {
    final _authModelView = InheritedAuthViewModel.of(context)!.signUpViewModel;

    return FormContainer(
        formKey: _authModelView.formKey,
        formFields: formFields,
        buttonsContainer: ButtonsContainer(
          children: <Widget>[SignUpButton(), GoToSignInButton()],
        ));
  }
}

class ConfirmSignUpForm extends StatelessWidget {
  /// Requires a list of confirm sign up  form fields.
  const ConfirmSignUpForm({required this.formFields, this.resendCodeButton});

  /// A list of confirm sign up form fields
  final FormFields formFields;

  ///This button will be used for resend a verification code.
  final Widget? resendCodeButton;

  @override
  Widget build(BuildContext context) {
    final _authModelView =
        InheritedAuthViewModel.of(context)!.confirmSignUpViewModel;
    return FormContainer(
        formKey: _authModelView.formKey,
        formFields: formFields,
        buttonsContainer: ButtonsContainer(children: <Widget>[
          BackToSignInButton(),
          ConfirmButton(),
        ]));
  }
}

class ConfirmSignInMFAForm extends StatelessWidget {
  /// Requires a list of confirm sign in form fields.
  const ConfirmSignInMFAForm({required this.formFields});

  /// A list of confirm sign in form fields

  final FormFields formFields;

  @override
  Widget build(BuildContext context) {
    final _authModelView =
        InheritedAuthViewModel.of(context)!.confirmSignInViewModel;
    return FormContainer(
        formKey: _authModelView.formKey,
        formFields: formFields,
        buttonsContainer: ButtonsContainer(children: <Widget>[
          BackToSignInButton(),
          ConfirmSignInMFAButton(),
        ]));
  }
}

class SendCodeForm extends StatelessWidget {
  const SendCodeForm({Key? key, required this.formFields}) : super(key: key);

  /// A list of sign in form fields

  final FormFields formFields;
  @override
  Widget build(BuildContext context) {
    final _authModelView = InheritedAuthViewModel.of(context)!.signInViewModel;
    return FormContainer(
        formKey: _authModelView.formKey,
        formFields: formFields,
        buttonsContainer: ButtonsContainer(children: <Widget>[
          BackToSignInButton(),
          SendCodeButton(),
        ]));
  }
}

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({Key? key, required this.formFields})
      : super(key: key);

  /// A list of sign in form fields
  final FormFields formFields;

  @override
  Widget build(BuildContext context) {
    final _authModelView = InheritedAuthViewModel.of(context)!.signInViewModel;
    return FormContainer(
        formKey: _authModelView.formKey,
        formFields: formFields,
        buttonsContainer: ButtonsContainer(children: <Widget>[
          BackToSignInButton(),
          SubmitButton(),
        ]));
  }
}

class ConfirmSignInNewPasswordForm extends StatelessWidget {
  const ConfirmSignInNewPasswordForm({Key? key, required this.formFields})
      : super(key: key);

  /// A list of sign in form fields
  final FormFields formFields;

  @override
  Widget build(BuildContext context) {
    final _authModelView =
        InheritedAuthViewModel.of(context)!.confirmSignInViewModel;
    return FormContainer(
        formKey: _authModelView.formKey,
        formFields: formFields,
        buttonsContainer: ButtonsContainer(children: <Widget>[
          BackToSignInButton(),
          ConfirmSignInNewPasswordButton(),
        ]));
  }
}
