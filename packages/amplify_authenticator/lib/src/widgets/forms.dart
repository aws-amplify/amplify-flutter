import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:amplify_authenticator/src/widgets/buttons.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';

class FormFields extends StatelessWidget {
  ///Requires a list of any of these form fields:
  ///   1. SignInFormField
  ///   2. SignUpFormField
  ///   3. ConfirmSignUpFormField
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

  /// A list of form fields
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
  /// Requires a list of confirm sign up  form fields.
  const SignUpForm({required this.formFields});

  /// A list of form fields
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

/// It's good to mention that this form might not be exposed
/// to the consumer due to the fact that the authenticator may only
/// support three custom forms only, sign in, sign up and confirm sign in.
/// This is currently used as a default form.
class ConfirmSignUpForm extends StatelessWidget {
  /// Requires a list of confirm sign up  form fields.
  const ConfirmSignUpForm({required this.formFields});

  /// A list of form fields
  ///
  /// The following form fields can be passed:
  ///   1. SignInFormField()
  ///   2. SignUpFormField()
  ///   3. ConfirmSignUpFormField()
  ///

  final FormFields formFields;

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
