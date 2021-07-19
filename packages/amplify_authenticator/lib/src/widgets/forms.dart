import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:amplify_authenticator/src/widgets/buttons.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';

///Form Fields
class FormFields extends StatelessWidget {
  ///Form Fields Constructor
  FormFields({required this.children});

  /// A list of form fields
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[...children],
    );
  }
}

///Sign In Form
class SignInForm extends StatelessWidget {
  ///Sign In Form Constructor
  SignInForm({required this.formFields});

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

///Sign Up Form
class SignUpForm extends StatelessWidget {
  ///Sign Up Form Constructor
  SignUpForm({required this.formFields});

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

///Confirm Sign Up Form
class ConfirmSignUpForm extends StatelessWidget {
  ///Confirm Sign Up Form Constructor
  ConfirmSignUpForm({required this.formFields});

  /// A list of form fields
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
