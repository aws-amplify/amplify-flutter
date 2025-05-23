// ignore: unused_import
import 'package:intl/intl.dart' as intl;

// ignore: unused_import
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get signIn => 'Sign In';

  @override
  String get signUp => 'Create Account';

  @override
  String get confirm => 'Confirm';

  @override
  String get submit => 'Submit';

  @override
  String get changePassword => 'Change Password';

  @override
  String get sendCode => 'Send Code';

  @override
  String get lostCode => 'Lost your code?';

  @override
  String get noAccount => 'No account?';

  @override
  String get haveAccount => 'Have an account?';

  @override
  String get forgotPassword => 'Forgot your password?';

  @override
  String get confirmResetPassword => 'Reset Password';

  @override
  String get verify => 'Verify';

  @override
  String get skip => 'Skip';

  @override
  String get signOut => 'Sign Out';

  @override
  String backTo(String previousStep) {
    String _temp0 = intl.Intl.selectLogic(previousStep, {
      'signUp': 'Sign Up',
      'signIn': 'Sign In',
      'confirmSignUp': 'Confirm Sign-up',
      'confirmSignInMfa': 'Confirm Sign-in',
      'confirmSignInNewPassword': 'Confirm Sign-in',
      'sendCode': 'Send Code',
      'resetPassword': 'Reset Password',
      'verifyUser': 'Verify User',
      'confirmVerifyUser': 'Confirm Verify User',
      'other': 'ERROR',
    });
    return 'Back to $_temp0';
  }

  @override
  String signInWith(String provider) {
    String _temp0 = intl.Intl.selectLogic(provider, {
      'google': 'Google',
      'facebook': 'Facebook',
      'amazon': 'Amazon',
      'apple': 'Apple',
      'other': 'ERROR',
    });
    return 'Sign In with $_temp0';
  }

  @override
  String get us => 'United States';

  @override
  String get selectDialCode => 'Select country';

  @override
  String get confirmSignInCustomAuth => 'Custom Login Challenge';
}
