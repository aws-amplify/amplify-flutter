import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator_example/main.dart';
import 'package:flutter/material.dart';

// A custom authenticator widget that adds an onboarding view
class AuthenticatorWithOnboarding extends StatelessWidget {
  const AuthenticatorWithOnboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      // Sets the initial step to "onboarding" to display the onboarding
      // screen on app launch
      initialStep: AuthenticatorStep.onboarding,

      // If a builder method is provided the authenticator will
      // use this to build the authenticator based on the current state.
      //
      // This example only customizes the onboarding step. All other steps
      // will fallback to the prebuilt authenticator
      builder: (context, state, child) {
        switch (state.currentStep) {
          case AuthenticatorStep.onboarding:
            return OnboardingView(
              goToSignIn: state.goToSignIn,
              goToSignUp: state.goToSignUp,
            );
          default:
            return child;
        }
      },
      child: MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        builder: Authenticator.builder(),
        initialRoute: '/routeA',
        routes: {
          '/routeA': (BuildContext context) => const RouteA(),
          '/routeB': (BuildContext context) => const RouteB(),
        },
      ),
    );
  }
}

// An onboarding widget to display to unauthenticated users on initial app launch
class OnboardingView extends StatelessWidget {
  const OnboardingView({
    Key? key,
    required this.goToSignIn,
    required this.goToSignUp,
  }) : super(key: key);

  final void Function() goToSignIn;
  final void Function() goToSignUp;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const FlutterLogo(size: 200),
            const SizedBox(height: 32),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque faucibus viverra vehicula. In iaculis augue non lacinia imperdiet. Aenean tempor mi nec condimentum posuere.',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: goToSignUp,
                child: const Text('Get Started'),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: goToSignIn,
                child: const Text('Sign In'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
