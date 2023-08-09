// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/utils/responsive.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:amplify_authenticator/src/widgets/totp/totp_setup_fields.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

/// This widget performs an async check on the platform OS to check if the
/// otpAuth link can be opened. Then Conditionally displays the open button
mixin OpenAuthenticationAppButton<FieldType extends Enum,
        T extends AuthenticatorFormField<FieldType, String>>
    on AuthenticatorFormFieldState<FieldType, String, T> {
  final logger = AWSLogger().createChild('Open Authenticator App Button');

  /// A link which opens the registered Authenticator app.
  /// This will open the app, but not add the account.
  /// Used on confirm totp screen after user has already setup totp
  static final _authenticatorAppLink = Uri.parse('otpauth://');

  @override
  double? get marginBottom => 0;

  Uri get totpUri {
    return switch (state.currentStep) {
      AuthenticatorStep.continueSignInWithTotpSetup => state.totpSetupUri!,
      _ => _authenticatorAppLink,
    };
  }

  String get buttonText {
    return stringResolver.buttons.resolve(
      context,
      ButtonResolverKey.openTotpApp,
    );
  }

  Future<void> _launchUrl() async {
    // If the url can be launched, then launch it and return
    try {
      await launchUrl(totpUri);
    } on PlatformException catch (e, st) {
      logger.error('Could not open Authenticator app.', e, st);
      // If the widget is no longer mounted, then return
      if (!context.mounted) return;

      // Otherwise, show a error snack bar
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red[900],
          content: const Text(
            'Could not open Authenticator app.',
          ),
        ),
      );
    }
  }

  @override
  Widget buildFormField(BuildContext context) {
    final show = isMobileOrWebMobile(context);

    if (!show) return const SizedBox.shrink();

    return FutureBuilder<bool>(
      future: canLaunchUrl(totpUri), // check if the url can be launched
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        final canLaunch = snapshot.data ?? false;
        if (!canLaunch) {
          return const SizedBox.shrink(); // Return empty widget
        }

        return Column(
          children: [
            SizedBox(
              child: OutlinedButton.icon(
                onPressed: _launchUrl,
                icon: const Icon(Icons.app_shortcut),
                label: Center(
                  child: Text(buttonText),
                ),
              ),
            ),
            if (state.currentStep ==
                AuthenticatorStep.continueSignInWithTotpSetup) ...[
              const SizedBox(height: 20),
              optionDivider(),
            ],
          ],
        );
      },
    );
  }
}
