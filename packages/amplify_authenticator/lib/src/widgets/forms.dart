import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:amplify_authenticator/src/widgets/buttons.dart';
import 'package:amplify_authenticator/src/widgets/containers.dart';

class FormFields extends StatelessWidget {
  FormFields({required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[...children],
    );
  }
}

class SignInForm extends StatelessWidget {
  SignInForm({required this.formFields});

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
  SignUpForm({required this.formFields});

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
  ConfirmSignUpForm({required this.formFields});

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
