import 'package:amplify_authenticator/src/widgets/forms.dart';
import 'package:flutter/material.dart';

///Inherited Forms
class InheritedForms extends InheritedWidget {
  ///Inherited Forms Constructor
  InheritedForms(
      {required this.signInForm,
      required this.signUpForm,
      required this.confirmSignUpForm,
      Widget? child})
      : super(child: child!);

  ///Inherited sign in form
  final SignInForm signInForm;

  ///Inherited sign up form
  final SignUpForm signUpForm;

  ///Inherited confirm sign up form
  final ConfirmSignUpForm confirmSignUpForm;

  // ignore: public_member_api_docs
  static InheritedForms? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedForms>();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
