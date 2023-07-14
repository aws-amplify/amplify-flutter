import 'package:amplify_authenticator/src/l10n/button_resolver.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/// This widget performs an async check on the platform OS to check if the
/// otpAuth link can be opened. Then Conditionally displays the open button
mixin OpenAuthenticationAppButton<FieldType extends Enum,
        T extends AuthenticatorFormField<FieldType, String>>
    on AuthenticatorFormFieldState<FieldType, String, T> {
  Uri get totpUri;

  String get buttonText {
    return stringResolver.buttons.resolve(
      context,
      ButtonResolverKey.openTotpApp,
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(totpUri)) {
      throw InvalidStateException(
        'No authentication app found',
        underlyingException: 'Could not launch uri: $totpUri',
      );
    }
  }

  @override
  Widget buildFormField(BuildContext context) {
    final isMobile = Theme.of(context).platform == TargetPlatform.iOS ||
        Theme.of(context).platform == TargetPlatform.android;

    return FutureBuilder<bool>(
      future: canLaunchUrl(totpUri),
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        if (snapshot.data ?? true && isMobile) {
          return FilledButton(
            onPressed: _launchUrl,
            child: Text(
              buttonText,
            ),
          );
        }
        return const SizedBox.shrink(); // Return empty widget
      },
    );
  }
}
