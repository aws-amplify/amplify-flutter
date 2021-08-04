import 'package:amplify_authenticator/amplify_authenticator.dart';

AuthStringResolver defaultMerge(
    {required AuthStringResolver resolver,
    required AuthStringResolver defaults}) {
  resolver.titles ?? TitleResolver();
  resolver.buttons ?? ButtonResolver();
  resolver.inputs ?? InputResolver();
  resolver.navigation ?? NavigationResolver();

  resolver.titles!.signin ?? defaults.titles!.signin;
  resolver.titles!.confirm_signin ?? defaults.titles!.confirm_signin;
  resolver.titles!.signup ?? defaults.titles!.signup;
  resolver.titles!.confirm_signup ?? defaults.titles!.confirm_signup;

  resolver.buttons!.signin ?? defaults.buttons!.signin;
  resolver.buttons!.signup ?? defaults.buttons!.signup;
  resolver.buttons!.confirm ?? defaults.buttons!.confirm;

  resolver.inputs!.username_title ?? defaults.inputs!.username_title;
  resolver.inputs!.username_hint ?? defaults.inputs!.username_hint;
  resolver.inputs!.password_title ?? defaults.inputs!.password_title;
  resolver.inputs!.password_hint ?? defaults.inputs!.password_hint;
  resolver.inputs!.email_title ?? defaults.inputs!.email_title;
  resolver.inputs!.email_hint ?? defaults.inputs!.email_hint;
  resolver.inputs!.phone_number_title ?? defaults.inputs!.phone_number_title;
  resolver.inputs!.phone_number_hint ?? defaults.inputs!.phone_number_hint;
  resolver.inputs!.verification_code_title ??
      defaults.inputs!.verification_code_title;
  resolver.inputs!.verification_code_hint ??
      defaults.inputs!.verification_code_hint;

  resolver.navigation!.back_to_signin ?? defaults.navigation!.back_to_signin;
  resolver.navigation!.have_account_question ??
      defaults.navigation!.have_account_question;
  resolver.navigation!.navigate_signin ?? defaults.navigation!.navigate_signin;
  resolver.navigation!.navigate_signup ?? defaults.navigation!.navigate_signup;
  resolver.navigation!.no_account_question ??
      defaults.navigation!.no_account_question;

  return resolver;
}
