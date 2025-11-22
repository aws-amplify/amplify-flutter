// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

import 'amplifyconfiguration.dart';

/// Example demonstrating the use of TextEditingController with
/// Amplify Authenticator form fields.
///
/// This allows programmatic control over form field values, enabling
/// use cases such as:
/// - Pre-populating fields with data from APIs (e.g., GPS location)
/// - Auto-filling verification codes from SMS
/// - Dynamic form validation and manipulation
class AuthenticatorWithControllers extends StatefulWidget {
  const AuthenticatorWithControllers({super.key});

  @override
  State<AuthenticatorWithControllers> createState() =>
      _AuthenticatorWithControllersState();
}

class _AuthenticatorWithControllersState
    extends State<AuthenticatorWithControllers> {
  // Controllers for programmatic access to form fields
  final _usernameController = AuthenticatorTextFieldController();
  final _emailController = AuthenticatorTextFieldController();
  final _addressController = AuthenticatorTextFieldController();
  final _phoneController = AuthenticatorTextFieldController();

  @override
  void initState() {
    super.initState();
    _configureAmplify();

    // Example: Pre-populate fields with default/fetched data
    _usernameController.text = 'amplify_user';
    _emailController.text = 'user@amplify.example.com';
  }

  @override
  void dispose() {
    // Clean up controllers when the widget is disposed
    _usernameController.dispose();
    _emailController.dispose();
    _addressController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _configureAmplify() async {
    final authPlugin = AmplifyAuthCognito(
      // FIXME: In your app, make sure to remove this line and set up
      /// Keychain Sharing in Xcode as described in the docs:
      /// https://docs.amplify.aws/lib/project-setup/platform-setup/q/platform/flutter/#enable-keychain
      secureStorageFactory: AmplifySecureStorage.factoryFrom(
        macOSOptions:
            // ignore: invalid_use_of_visible_for_testing_member
            MacOSSecureStorageOptions(useDataProtection: false),
      ),
    );
    try {
      await Amplify.addPlugin(authPlugin);
      await Amplify.configure(amplifyconfig);
      safePrint('Successfully configured');
    } on Exception catch (e) {
      safePrint('Error configuring Amplify: $e');
    }
  }

  /// Simulates fetching user location and populating the address field
  Future<void> _fetchAndPopulateAddress() async {
    // In a real app, you would use a geolocation service here
    await Future<void>.delayed(const Duration(seconds: 1));

    // Simulate fetched address
    final fetchedAddress = '123 Main Street, Seattle, WA 98101';

    // Update the address field programmatically
    _addressController.text = fetchedAddress;

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Address populated: $fetchedAddress')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      // Custom sign-up form with controller support
      signUpForm: SignUpForm.custom(
        fields: [
          // Username field with controller - can be pre-populated or modified
          SignUpFormField.username(
            authenticatorTextFieldController: _usernameController,
          ),

          // Email field with controller
          SignUpFormField.email(
            authenticatorTextFieldController: _emailController,
            required: true,
          ),

          SignUpFormField.password(),
          SignUpFormField.passwordConfirmation(),

          // Address field with controller - can be populated from GPS/API
          SignUpFormField.address(
            authenticatorTextFieldController: _addressController,
          ),

          // Phone number field with controller
          SignUpFormField.phoneNumber(
            authenticatorTextFieldController: _phoneController,
          ),
        ],
      ),

      child: MaterialApp(
        title: 'Authenticator with Controllers',
        theme: ThemeData.light(useMaterial3: true),
        darkTheme: ThemeData.dark(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        builder: Authenticator.builder(),
        home: Scaffold(
          appBar: AppBar(title: const Text('Controller Example')),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'You are logged in!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),

                // Display current controller values
                Card(
                  margin: const EdgeInsets.all(16),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Form Field Values:',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text('Username: ${_usernameController.text}'),
                        Text('Email: ${_emailController.text}'),
                        Text('Address: ${_addressController.text}'),
                        Text('Phone: ${_phoneController.text}'),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                ElevatedButton.icon(
                  onPressed: _fetchAndPopulateAddress,
                  icon: const Icon(Icons.location_on),
                  label: const Text('Fetch GPS Address'),
                ),

                const SizedBox(height: 20),
                const SignOutButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const AuthenticatorWithControllers());
}
