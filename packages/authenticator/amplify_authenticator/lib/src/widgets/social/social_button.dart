// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:math';

import 'package:amplify_authenticator/src/l10n/auth_strings_resolver.dart';
import 'package:amplify_authenticator/src/state/authenticator_state.dart';
import 'package:amplify_authenticator/src/utils/list.dart';
import 'package:amplify_authenticator/src/widgets/button.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/social/social_icons.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:flutter/material.dart';

class SocialSignInButtons extends StatelessAuthenticatorComponent {
  const SocialSignInButtons({
    super.key,
    required this.providers,
  });

  final List<AuthProvider> providers;

  @override
  Widget builder(
    BuildContext context,
    AuthenticatorState state,
    AuthStringResolver stringResolver,
  ) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Perform a layout on each of the Text items to determine the maximum
        // width, so that we can size all button labels to that width and align
        // the logos in the column.
        var maxWidth = 0.0;
        for (final provider in providers) {
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
            textScaler: MediaQuery.textScalerOf(context),
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
            for (final provider in providers)
              SocialSignInButton(provider: provider, maxWidth: maxWidth),
          ].spacedBy(const SizedBox(height: 12)),
        );
      },
    );
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
    super.key,
    required this.provider,
    this.maxWidth = double.infinity,
  });

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
    properties
      ..add(DiagnosticsProperty<AuthProvider>('provider', provider))
      ..add(DoubleProperty('maxWidth', maxWidth));
  }
}

class _SocialSignInButtonState
    extends AuthenticatorButtonState<SocialSignInButton> {
  /// The spacing between the logo and its text, in pixels.
  static const double spacing = 5;

  /// The size of the (square) logo, in pixels.
  static const double logoSize = 40;

  static final AmplifyLogger logger = AmplifyLogger.category(Category.auth)
      .createChild('Authenticator')
      .createChild('SocialSignInButton');

  Widget get icon {
    final isDark = Theme.of(context).brightness == Brightness.dark;
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
    logger.error('Unsupported provider: ${widget.provider}');
    return const SizedBox.shrink();
  }

  /// Calculates the horizontal padding of the logo, its text, and the
  /// spacing given the current layout [constraints].
  double calculatePadding(BoxConstraints constraints) {
    // Split the space remaining after laying out the logo, its text,
    // and the spacing.
    final textWidth = widget.maxWidth;
    return max(
      0,
      (constraints.maxWidth - logoSize - spacing - textWidth) / 2,
    );
  }

  // TODO(Jordan-Nelson): use `WidgetStateProperty` when min flutter sdk is 3.22.0
  // ignore: deprecated_member_use
  MaterialStateProperty<Color?> getButtonForegroundColor(BuildContext context) {
    final theme = Theme.of(context);
    final foregroundColor = theme.outlinedButtonTheme.style?.foregroundColor;
    if (foregroundColor != null) {
      return foregroundColor;
    }

    final isDark = Theme.of(context).brightness == Brightness.dark;
    // TODO(Jordan-Nelson): use `WidgetStateProperty` when min flutter sdk is 3.22.0
    // ignore: deprecated_member_use
    return MaterialStateProperty.all(isDark ? Colors.white : Colors.black);
  }

  @override
  Widget build(BuildContext context) {
    final resolver = stringResolver.buttons;
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 40),
      child: OutlinedButton(
        focusNode: focusNode,
        style: ButtonStyle(
          foregroundColor: getButtonForegroundColor(context),
        ),
        onPressed: state.isBusy
            ? null
            : () => state.signInWithProvider(widget.provider),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final padding = calculatePadding(constraints);
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: Row(
                mainAxisAlignment: padding == 0
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.start,
                children: [
                  SizedBox.square(
                    dimension: logoSize,
                    child: Padding(
                      padding: widget.provider.logoInsets,
                      child: icon,
                    ),
                  ),
                  const SizedBox(width: spacing),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        resolver.resolve(
                          context,
                          ButtonResolverKey.signInWith(widget.provider),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

extension on AuthProvider {
  /// The insets of the logo image in its bounding box.
  ///
  /// Used to provide additional padding for the logos which don't have
  /// padding built into their vector image.
  EdgeInsets get logoInsets => switch (this) {
        AuthProvider.google => const EdgeInsets.all(8),
        _ => EdgeInsets.zero,
      };
}
