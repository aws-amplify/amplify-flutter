import 'package:flutter/material.dart';
import 'package:amplify_authenticator/src/views/confirm_signup_viewmodel.dart';
import 'package:amplify_authenticator/src/views/signin_viewmodel.dart';
import 'package:amplify_authenticator/src/views/signup_viewmodel.dart';

///Inherited Auth View Model
class InheritedAuthViewModel extends InheritedWidget {
  ///Inherited Auth View Model Constructor
  InheritedAuthViewModel(
      {required this.signInViewModel,
      required this.signUpViewModel,
      required this.confirmSignUpViewModel,
      Widget? child})
      : super(child: child!);

  /// inherited sign in view model
  final SignInViewModel signInViewModel;

  ///inherited sign up view model
  final SignUpViewModel signUpViewModel;

  /// inherited confirm sign up view model
  final ConfirmSignUpViewModel confirmSignUpViewModel;

  // ignore: public_member_api_docs
  static InheritedAuthViewModel? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedAuthViewModel>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
