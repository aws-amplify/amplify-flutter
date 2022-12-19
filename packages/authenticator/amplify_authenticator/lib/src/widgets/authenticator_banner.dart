// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/enums/status_type.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:flutter/material.dart';

/// Creates an Authenticator-themed Material banner.
MaterialBanner createMaterialBanner(
  BuildContext context, {
  required StatusType type,
  required String message,
  required void Function() actionCallback,
}) {
  final theme = Theme.of(context);

  final colorsChoices = getColors(theme.bannerTheme.backgroundColor,
      theme.bannerTheme.contentTextStyle?.color, type, theme);

  return MaterialBanner(
    key: keyAuthenticatorBanner,
    backgroundColor: colorsChoices.background,
    leading: Icon(type.icon, color: colorsChoices.foreground),
    content: Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              message.trim(),
              style: TextStyle(
                color: colorsChoices.foreground,
              ),
            ),
          ),
        ],
      ),
    ),
    actions: [
      IconButton(
        onPressed: actionCallback,
        icon: Icon(
          Icons.close,
          color: colorsChoices.foreground,
        ),
      ),
    ],
  );
}

SnackBar createSnackBar(
  BuildContext context, {
  required StatusType type,
  required String message,
}) {
  final theme = Theme.of(context);

  final colorsChoices = getColors(theme.snackBarTheme.backgroundColor,
      theme.snackBarTheme.contentTextStyle?.color, type, theme);

  // if contentTextStyle is null, colorScheme.surface is used as a fallback
  // since SnackBarThemeData.backgroundColor uses colorScheme.onSurface as a fall back
  // this is only used for dark/light mode for the icon color
  final fallbackIconColor =
      theme.snackBarTheme.contentTextStyle?.color ?? theme.colorScheme.surface;

  return SnackBar(
    key: keyAuthenticatorBanner,
    backgroundColor: colorsChoices.background,
    content: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(type.icon, color: fallbackIconColor),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text(
            message.trim(),
            style: TextStyle(
              color: colorsChoices.foreground,
            ),
          ),
        ),
      ],
    ),
  );
}

class BannerColors {
  Color? background;
  Color? foreground;

  BannerColors(this.background, this.foreground);
}

BannerColors getColors(Color? customBackgroundColor,
    Color? customForegroundColor, StatusType type, ThemeData theme) {
  // foreground and background colors are based on material standards for text legibility
  // if they are not provided by the theme. See https://material.io/design/color/text-legibility.html#text-backgrounds

  // we want to defualt to the provided theme, unless type is `error`
  final isError = type == StatusType.error;

  // fallback on default color based on type.
  final backgroundColorByType = isError ? theme.colorScheme.error : null;
  final backgroundColor = backgroundColorByType ?? customBackgroundColor;

  // If there is no background color provided by the theme,
  // and StatusType is `error` use Colors.white (High-emphasis), otherwise
  // set it to null to let flutter control the foreground.
  final hasCustomBackground = customBackgroundColor != null;
  final foregroundColorByType = isError ? Colors.white : null;
  final foregroundColorFallBack =
      hasCustomBackground ? null : foregroundColorByType;

  // use contentTextStyle color if available, otherwise use fallback as defined above.
  final foregroundColor = customForegroundColor ?? foregroundColorFallBack;

  return BannerColors(backgroundColor, foregroundColor);
}

extension on StatusType {
  IconData get icon {
    switch (this) {
      case StatusType.info:
        return Icons.circle_notifications;
      case StatusType.error:
        return Icons.error;
    }
  }
}
