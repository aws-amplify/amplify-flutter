import 'package:amplify_authenticator/src/views/confirm_signin_viewmodel.dart';
import 'package:amplify_authenticator/src/views/confirm_signup_viewmodel.dart';
import 'package:amplify_authenticator/src/views/confirm_verify_user_view_model.dart';
import 'package:amplify_authenticator/src/views/signin_viewmodel.dart';
import 'package:amplify_authenticator/src/views/signup_viewmodel.dart';
import 'package:amplify_authenticator/src/views/verify_user_view_model.dart';
import 'package:flutter/material.dart';

class InheritedAuthViewModel extends InheritedWidget {
  // ignore: public_member_api_docs
  const InheritedAuthViewModel(
      {Key? key,
      required this.signInViewModel,
      required this.signUpViewModel,
      required this.confirmSignUpViewModel,
      required this.confirmSignInViewModel,
      required this.verifyUserViewModel,
      required this.confirmVerifyUserViewModel,
      required Widget child})
      : super(key: key, child: child);

  final SignInViewModel signInViewModel;

  final SignUpViewModel signUpViewModel;

  final ConfirmSignUpViewModel confirmSignUpViewModel;

  final ConfirmSignInViewModel confirmSignInViewModel;

  final VerifyUserViewModel verifyUserViewModel;

  final ConfirmVerifyUserViewModel confirmVerifyUserViewModel;

  // ignore: public_member_api_docs
  static InheritedAuthViewModel? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedAuthViewModel>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
