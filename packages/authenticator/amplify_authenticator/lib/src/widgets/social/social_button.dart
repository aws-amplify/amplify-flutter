// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:math';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/src/l10n/auth_strings_resolver.dart';
import 'package:amplify_authenticator/src/state/authenticator_state.dart';
import 'package:amplify_authenticator/src/utils/list.dart';
import 'package:amplify_authenticator/src/widgets/button.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/social/social_icons.dart';
import 'package:aws_common/aws_common.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SocialSignInButtons extends StatelessAuthenticatorComponent {
  const SocialSignInButtons({
    Key? key,
    required this.providers,
  }) : super(key: key);

  final List<AuthProvider> providers;

  @override
  Widget builder(
    BuildContext context,
    AuthenticatorState state,
    AuthStringResolver stringResolver,
  ) {
    return LayoutBuilder(builder: (context, constraints) {
      // Perform a layout on each of the Text items to determine the maximum
      // width, so that we can size all button labels to that width and align
      // the logos in the column.
      var maxWidth = 0.0;
      for (var provider in providers) {
        final text = stringResolver.buttons.resolve(
          context,
          ButtonResolverKey.signInWith(provider),
        );
        final style = Theme.of(context)
                .outlinedButtonTheme
                .style
                ?.textStyle
                ?.resolve({}) ??
            Theme.of(context).textTheme.labelLarge;
        final tp = TextPainter(
          text: TextSpan(
            text: text,
            style: style,
          ),
          maxLines: 1,
          textDirection: TextDirection.ltr,
        )..layout(maxWidth: constraints.maxWidth);
        maxWidth = max(maxWidth, tp.width);
      }

      return Column(
        children: <Widget>[
          for (var provider in providers)
            SocialSignInButton(provider: provider, maxWidth: maxWidth),
        ].spacedBy(const SizedBox(height: 12)),
      );
    });
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<AuthProvider>('providers', providers));
  }
}

/// {@template amplify_authenticator.social_sign_in_button}
/// A button for launching a social sign in UI.
/// {@endtemplate}
class SocialSignInButton extends AuthenticatorButton<SocialSignInButton> {
  /// {@macro amplify_authenticator.social_sign_in_button}
  const SocialSignInButton({
    Key? key,
    required this.provider,
    this.maxWidth = double.infinity,
  }) : super(key: key);

  /// A social sign-in button for Facebook.
  const SocialSignInButton.facebook({Key? key})
      : this(key: key, provider: AuthProvider.facebook);

  /// A social sign-in button for Google.
  const SocialSignInButton.google({Key? key})
      : this(key: key, provider: AuthProvider.google);

  /// A social sign-in button for Amazon.
  const SocialSignInButton.amazon({Key? key})
      : this(key: key, provider: AuthProvider.amazon);

  /// A social sign-in button for Apple.
  const SocialSignInButton.apple({Key? key})
      : this(key: key, provider: AuthProvider.apple);

  /// The Cognito social sign-in provider.
  final AuthProvider provider;

  /// The maximum width of the button texts. Used to align logos properly.
  final double maxWidth;

  @override
  ButtonResolverKey get labelKey => ButtonResolverKey.signInWith(provider);

  @override
  Widget? get loadingIndicator => null;

  @override
  void onPressed(BuildContext context, AuthenticatorState state) {
    state.signInWithProvider(provider);
  }

  @override
  AuthenticatorButtonState<SocialSignInButton> createState() =>
      _SocialSignInButtonState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<AuthProvider>('provider', provider));
    properties.add(DoubleProperty('maxWidth', maxWidth));
  }
}

class _SocialSignInButtonState
    extends AuthenticatorButtonState<SocialSignInButton> {
  static const _spacing = 5.0;

  Widget get icon {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    if (widget.provider == AuthProvider.google) {
      return SocialIcons.googleLogo;
    }
    if (widget.provider == AuthProvider.facebook) {
      return const Icon(
        SocialIcons.facebook,
        color: SocialIcons.facebookPrimaryColor,
      );
    }
    if (widget.provider == AuthProvider.amazon) {
      return const Icon(
        SocialIcons.amazon,
        color: SocialIcons.amazonPrimaryColor,
      );
    }
    if (widget.provider == AuthProvider.apple) {
      // This icon renders slightly off-center without this padding.
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            SocialIcons.apple,
            color: isDark ? Colors.white : Colors.black,
          ),
          const SizedBox(height: 4),
        ],
      );
    }
    safePrint('Unsupported provider: ${widget.provider}');
    return const SizedBox.shrink();
  }

  double calculatePadding(BoxConstraints constraints) {
    final logoWidth = constraints.maxHeight + _spacing;
    final textWidth = widget.maxWidth;
    return max(
      0,
      (constraints.maxWidth - logoWidth - textWidth) / 2,
    );
  }

  MaterialStateProperty<Color?> getButtonForegroundColor(BuildContext context) {
    final theme = Theme.of(context);
    final foregroundColor = theme.outlinedButtonTheme.style?.foregroundColor;
    if (foregroundColor != null) {
      return foregroundColor;
    }

    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    return MaterialStateProperty.all(isDark ? Colors.white : Colors.black);
  }

  @override
  Widget build(BuildContext context) {
    final resolver = stringResolver.buttons;
    return SizedBox(
      height: 40,
      child: OutlinedButton(
        focusNode: focusNode,
        style: ButtonStyle(
          foregroundColor: getButtonForegroundColor(context),
        ),
        onPressed: state.isBusy
            ? null
            : () => state.signInWithProvider(widget.provider),
        child: LayoutBuilder(builder: (context, constraints) {
          final padding = calculatePadding(constraints);
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: Row(
              mainAxisAlignment: padding == 0
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.start,
              children: [
                Padding(
                  padding: widget.provider.padding,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: icon,
                  ),
                ),
                const SizedBox(width: _spacing),
                Text(resolver.resolve(
                  context,
                  ButtonResolverKey.signInWith(widget.provider),
                )),
              ],
            ),
          );
        }),
      ),
    );
  }
}

extension on AuthProvider {
  EdgeInsets get padding {
    if (this == AuthProvider.google) {
      return const EdgeInsets.all(8);
    }
    return EdgeInsets.zero;
  }
}
