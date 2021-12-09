import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator_example/localized_country_resolver.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'amplifyconfiguration.dart';
import 'localized_button_resolver.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  /// When using the Authenticator, configuration of Amplify is still the
  /// responsibility of the developer. This allows you the opportunity to
  /// customize plugin options and add/remove them as needed.
  void _configureAmplify() async {
    try {
      await Amplify.addPlugin(AmplifyAuthCognito());
      await Amplify.configure(amplifyconfig);
      print('Successfully configured');
    } on Exception catch (e) {
      print('Error configuring Amplify: $e');
    }
  }

  /// Our custom username validator, which ensures that all usernames contain
  /// the word "amplify".
  String? _validateUsername(UsernameInput? input) {
    final username = input?.username;
    if (username == null || username.isEmpty) {
      return 'Username cannot be empty';
    }

    bool containsAmplify = username.contains('amplify');
    if (!containsAmplify) {
      return 'Username needs to include amplify';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    // First, we set up the custom localizations for Authenticator buttons by
    // creating a custom resolver which conforms to the `ButtonResolver` class
    // from the Authenticator library.
    //
    // In addition to ButtonResolver, which handles the labels for buttons, there
    // are also resolvers for input fields, screen titles, and navigation-related
    // items, all of which can be customized as well. To keep this demo simple,
    // we only specify a custom button resolver, which automatically configures
    // the default for the others.
    const stringResolver = AuthStringResolver(
      buttons: LocalizedButtonResolver(),
      countries: LocalizedCountryResolver(),
    );

    // We wrap our application in an Authenticator component. This component
    // handles all the screens and logic whenever the user is signed out. Once
    // the user is signed in, the Authenticator will show whichever Widget we
    // provide as `child`.
    final authenticator = Authenticator(
      // custom UI, built with the builder method
      builder: (context, state, viewModel) {
        if (state is Authenticated) {
          return const SignedInScreen();
        } else if (state is AuthFlow) {
          switch (state.screen) {
            case AuthScreen.signup:
            case AuthScreen.signin:
            case AuthScreen.confirmSignup:
              return SignInView(state: state, viewModel: viewModel);
            case AuthScreen.confirmSigninMfa:
              // TODO: Handle this case.
              break;
            case AuthScreen.confirmSigninNewPassword:
              // TODO: Handle this case.
              break;
            case AuthScreen.resetPassword:
              // TODO: Handle this case.
              break;
            case AuthScreen.confirmResetPassword:
              // TODO: Handle this case.
              break;
            case AuthScreen.verifyUser:
              // TODO: Handle this case.
              break;
            case AuthScreen.confirmVerifyUser:
              // TODO: Handle this case.
              break;
          }
        }
        return Container();
      },
      stringResolver: stringResolver,
      onException: (exception) {
        print('[ERROR]: $exception');
      },

      // Next, we create a custom Sign Up form which uses our custom username
      // validator.
      signUpForm: SignUpForm.custom(
        fields: [
          SignUpFormField.username(
            validator: _validateUsername,
          ),
          SignUpFormField.password(),
          SignUpFormField.passwordConfirmation(),
          SignUpFormField.address(
            required: false,
          ),
        ],
      ),

      // Finally, we specify the widget to use once the user is signed in.
      child: const SignedInScreen(),
    );

    return MaterialApp(
      title: 'Authenticator Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,

      // These lines enable our custom localizations specified in the lib/l10n
      // directory, which will be used later to customize the values displayed
      // in the Authenticator component.
      localizationsDelegates: const [
        AppLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('es'), // Spanish
      ],

      // The Authenticator component should be a descendant of your MaterialApp.
      home: authenticator,
    );
  }
}

/// The screen which is shown once the user is logged in. We can use [SignOutButton]
/// from the Authenticator library anywhere in our app to provide a pre-configured
/// sign out experience. Alternatively, we can call [Amplify.Auth.signOut] which
/// will also notify the Authenticator.
class SignedInScreen extends StatelessWidget {
  const SignedInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signed In'),
      ),
      body: const Center(child: SignOutButton()),
    );
  }
}

// custom sign up and sign in flow, inspired by lyft
class SignInView extends StatefulWidget {
  const SignInView({
    Key? key,
    required this.state,
    required this.viewModel,
  }) : super(key: key);

  final AuthState state;
  final AuthViewModel viewModel;

  @override
  _SignInViewState createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  PageController controller = PageController(initialPage: 0);

  // hacky way to figure out if user exists, just for demo purposes
  Future<bool> userExists(String username) async {
    try {
      await Amplify.Auth.signIn(username: username, password: 'password123');
      Amplify.Auth.signOut();
      return true;
    } on UserNotFoundException {
      return false;
    } on Exception {
      return true;
    }
  }

  void animateTo(int i) {
    controller.animateToPage(
      i,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    );
  }

  void goToUsernameScreen() => animateTo(0);
  void goToSignIn() => animateTo(1);
  void goToSignUp() => animateTo(2);
  void goToConfirmSignUp() => animateTo(3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: PageView(
              controller: controller,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Let\'s start with your phone number.',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Phone Number'),
                      ),
                      onChanged:
                          widget.viewModel.setUsername, // <-- set username
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          color: Colors.blue,
                          iconSize: 44,
                          onPressed: () async {
                            // see if username exists and direct to sign up or sign in
                            if (await userExists(widget.viewModel.username)) {
                              goToSignIn();
                            } else {
                              goToSignUp();
                            }
                          },
                          icon: const Icon(Icons.arrow_forward),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome back!',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Enter your password below to log back in',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Password'),
                      ),
                      obscureText: true,
                      onChanged:
                          widget.viewModel.setPassword, // <-- set password
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          color: Colors.blue,
                          iconSize: 44,
                          onPressed: () async {
                            await widget.viewModel.signIn(); // <-- sign in
                          },
                          icon: const Icon(Icons.arrow_forward),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Let\'s create your account.',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Enter and confirm your password to create your account.',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Password'),
                      ),
                      obscureText: true,
                      onChanged:
                          widget.viewModel.setPassword, // <-- set password
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Confirm Password'),
                      ),
                      obscureText: true,
                      onChanged: widget.viewModel
                          .setPasswordConfirmation, // <-- set password confirmation
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          color: Colors.blue,
                          iconSize: 44,
                          onPressed: () async {
                            await widget.viewModel.signUp(); // <-- sign up
                            goToConfirmSignUp();
                          },
                          icon: const Icon(Icons.arrow_forward),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter your confirmation code.',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Enter the code that was sent to your phone number.',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Confirmation code'),
                      ),
                      obscureText: true,
                      onChanged: widget.viewModel
                          .setConfirmationCode, // <-- set confirmation code
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          color: Colors.blue,
                          iconSize: 44,
                          onPressed: () async {
                            await widget.viewModel
                                .confirm(); // <-- confirm sign up
                          },
                          icon: const Icon(Icons.arrow_forward),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
