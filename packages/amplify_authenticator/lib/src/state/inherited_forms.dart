import 'package:amplify_flutter_authenticator/src/widgets/forms.dart';
import 'package:flutter/material.dart';

class InheritedForms extends InheritedWidget {
  InheritedForms(
      {required this.signInForm,
      required this.signUpForm,
      required this.confirmSignUpForm,
      Widget? child})
      : super(child: child!);

  final SignInForm signInForm;
  final SignUpForm signUpForm;
  final ConfirmSignUpForm confirmSignUpForm;

  static InheritedForms? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedForms>();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
