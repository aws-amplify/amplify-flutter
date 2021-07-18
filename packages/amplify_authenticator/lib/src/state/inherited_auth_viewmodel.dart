import 'package:flutter/material.dart';
import 'package:amplify_authenticator/src/views/confirm_signup_viewmodel.dart';
import 'package:amplify_authenticator/src/views/signin_viewmodel.dart';
import 'package:amplify_authenticator/src/views/signup_viewmodel.dart';

class InheritedAuthViewModel extends InheritedWidget {
  InheritedAuthViewModel(
      {required this.signInViewModel,
      required this.signUpViewModel,
      required this.confirmSignUpViewModel,
      Widget? child})
      : super(child: child!);

  final SignInViewModel signInViewModel;
  final SignUpViewModel signUpViewModel;
  final ConfirmSignUpViewModel confirmSignUpViewModel;

  static InheritedAuthViewModel? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedAuthViewModel>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
