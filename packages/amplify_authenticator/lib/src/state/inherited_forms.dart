import 'package:amplify_authenticator/src/strings/auth_strings.dart';
import 'package:amplify_authenticator/src/widgets/forms.dart';
import 'package:flutter/material.dart';

class InheritedForms extends InheritedWidget {
  // ignore: public_member_api_docs
  const InheritedForms(
      {required this.signInForm,
      required this.signUpForm,
      required this.confirmSignUpForm,
      required this.confirmSignInForm,
      required this.authStrings,
      required Widget child})
      : super(child: child);

  final SignInForm signInForm;

  final SignUpForm signUpForm;

  final ConfirmSignUpForm confirmSignUpForm;

  final ConfirmSignInForm confirmSignInForm;

  final AuthStrings? authStrings;

  // ignore: public_member_api_docs
  static InheritedForms? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedForms>();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
