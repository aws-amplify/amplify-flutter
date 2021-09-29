import 'package:amplify_authenticator/src/widgets/forms.dart';
import 'package:flutter/material.dart';

class InheritedForms extends InheritedWidget {
  const InheritedForms({
    Key? key,
    required this.signInForm,
    required this.signUpForm,
    required this.confirmSignUpForm,
    required this.confirmSignInMFAForm,
    required this.sendCodeForm,
    required this.resetPasswordForm,
    required this.confirmSignInNewPasswordForm,
    required Widget child,
  }) : super(key: key, child: child);

  final SignInForm signInForm;

  final SignUpForm signUpForm;

  final ConfirmSignUpForm confirmSignUpForm;

  final ConfirmSignInMFAForm confirmSignInMFAForm;

  final SendCodeForm sendCodeForm;

  final ResetPasswordForm resetPasswordForm;

  final ConfirmSignInNewPasswordForm confirmSignInNewPasswordForm;

  //final ResetPasswordForm resetPasswordForm;

  static InheritedForms of(BuildContext context) {
    final forms = context.dependOnInheritedWidgetOfExactType<InheritedForms>();

    assert(() {
      if (forms == null) {
        throw FlutterError.fromParts([
          ErrorSummary('No InheritedForms widget found.'),
          ErrorDescription(
              'Make sure your app is wrapped with an Authenticator widget.')
        ]);
      }
      return true;
    }());
    return forms!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}

// ignore_for_file: prefer_asserts_with_message
