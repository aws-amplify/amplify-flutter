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
<<<<<<< HEAD
=======

>>>>>>> 96879076b3d28697bb9b906e4b2e598e02eb28d5
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

<<<<<<< HEAD
  /// A list of sign in form fields
=======

  /// A list of sign in form fields

>>>>>>> 96879076b3d28697bb9b906e4b2e598e02eb28d5
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
<<<<<<< HEAD
=======

>>>>>>> 96879076b3d28697bb9b906e4b2e598e02eb28d5
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

// It's good to mention that this form might not be exposed
// to the consumer due to the fact that the authenticator may only
// support three custom forms only, sign in, sign up and confirm sign in.
// This is currently used as a default form.
class ConfirmSignUpForm extends StatelessWidget {
  /// Requires a list of confirm sign up  form fields.
  const ConfirmSignUpForm({required this.formFields});


  /// A list of confirm sign up form fields

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

class ConfirmSignInForm extends StatelessWidget {
  /// Requires a list of confirm sign in form fields.
  const ConfirmSignInForm({required this.formFields});

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
          ConfirmSignInButton(),
        ]));
  }
}
