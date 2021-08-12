import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'amplifyconfiguration.dart';

import 'package:flutter/material.dart';

// Uncomment to use localizations
// import 'package:flutter_gen/gen_l10n/amplify_localizations.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.blue),
      // Uncomment this code to use localizations
      // localizationsDelegates: const [
      //   AppLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: const [
      //   Locale('en', ''), // English, no country code
      //   Locale('es', ''), // Spanish, no country code
      // ],
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();

    _amplifyConfig();
  }

  void _amplifyConfig() async {
    try {
      await Amplify.addPlugin(AmplifyAuthCognito());
      await Amplify.configure(amplifyconfig);
    } catch (e) {
      print(e);
    }
  }

//Validatior

  String? _validateUsername(String? username) {
    if (username == null || username.isEmpty) {
      return 'Username cannot be empty';
    }

    bool contains = username.contains("amplify");
    if (!contains) {
      return 'Username needs to include amplify';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    // Uncomment to use localizations

    // AuthStringResolver resolver = AuthStringResolver(
    //     buttons: ButtonResolver(
    //         signin: (_) => AppLocalizations.of(context)!.button_signin,
    //         signup: (_) => AppLocalizations.of(context)!.button_signup,
    //         submit: (_) => AppLocalizations.of(context)!.button_submit,
    //         sendCode: (_) => AppLocalizations.of(context)!.button_sendCode,
    //         changePassword: (_) =>
    //             AppLocalizations.of(context)!.button_new_password),
    //     inputs: InputResolver(
    //         username_title: (_) =>
    //             AppLocalizations.of(context)!.input_username_title,
    //         username_hint: (_) =>
    //             AppLocalizations.of(context)!.input_username_hint,
    //         password_title: (_) =>
    //             AppLocalizations.of(context)!.input_password_title,
    //         password_hint: (_) =>
    //             AppLocalizations.of(context)!.input_password_hint,
    //         email_title: (_) => AppLocalizations.of(context)!.input_email_title,
    //         email_hint: (_) => AppLocalizations.of(context)!.input_email_hint,
    //         phone_number_title: (_) =>
    //             AppLocalizations.of(context)!.input_phone_title,
    //         phone_number_hint: (_) =>
    //             AppLocalizations.of(context)!.input_phone_hint,
    //         verification_code_title: (_) =>
    //             AppLocalizations.of(context)!.input_verification_code_title,
    //         verification_code_hint: (_) =>
    //             AppLocalizations.of(context)!.input_verification_code_hint),
    //     navigation: NavigationResolver(
    //         navigateSignin: (_) => AppLocalizations.of(context)!.nav_signin,
    //         navigateSignup: (_) => AppLocalizations.of(context)!.nav_signup,
    //         navigateResetPassword: (_) =>
    //             AppLocalizations.of(context)!.nav_reset_password,
    //         noAccountQuestion: (_) =>
    //             AppLocalizations.of(context)!.nav_no_account,
    //         haveAccountQuestion: (_) =>
    //             AppLocalizations.of(context)!.nav_have_account,
    //         forgotPasswordQuestion: (_) =>
    //             AppLocalizations.of(context)!.nav_forgot_password,
    //         backToSignin: (_) => AppLocalizations.of(context)!.nav_back_signin),
    //     titles: TitleResolver(
    //         signin: (_) => AppLocalizations.of(context)!.title_signin,
    //         signup: (_) => AppLocalizations.of(context)!.title_signup,
    //         confirmSigninMfa: (_) =>
    //             AppLocalizations.of(context)!.title_confirm_signin_mfa,
    //         confirmSigninNewPassword: (_) =>
    //             AppLocalizations.of(context)!.title_confirm_signin_new_password,
    //         confirmSignup: (_) =>
    //             AppLocalizations.of(context)!.title_confirm_signup,
    //         resetPassword: (_) =>
    //             AppLocalizations.of(context)!.title_reset_password));

    return Authenticator(
      // Uncomment this code to use localizations
      // resolver: resolver,

      child: const CustomersApp(),
      signUpForm: SignUpForm(
        formFields: FormFields(children: [
          SignUpFormField(
              title: "Custom username*",
              hintText: "Username",
              validator: _validateUsername,
              type: "username"),
          const SignUpFormField(
              title: "Custom password*",
              hintText: "password",
              type: "password"),
          const SignUpFormField(
              title: "Custom email*", hintText: "email", type: "email"),
          const SignUpFormField(
              title: "Custom phone number*",
              hintText: "phone number",
              type: "phone_number")
        ]),
      ),
    );
  }
}

class CustomersApp extends StatelessWidget {
  const CustomersApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customer's App"),
      ),
      body: SignOutButton(),
    );
  }
}
