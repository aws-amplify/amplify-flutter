import 'package:amplify_authenticator/src/l10n/button_resolver.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
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

  Uri get totpUri;

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
      logger.debug('Could not open Authenticator app.', [e, st]);
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
    final isMobile = Theme.of(context).platform == TargetPlatform.iOS ||
        Theme.of(context).platform == TargetPlatform.android;

    if (!isMobile) return const SizedBox.shrink();

    return FutureBuilder<bool>(
      future: canLaunchUrl(totpUri), // check if the url can be launched
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        if (snapshot.data ?? true) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              OutlinedButton.icon(
                onPressed: _launchUrl,
                icon: const Icon(Icons.app_shortcut),
                label: Center(
                  child: Text(
                    buttonText,
                  ),
                ),
              ),
            ],
          );
        }
        return const SizedBox.shrink(); // Return empty widget
      },
    );
  }
}
