/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
*/

import 'package:amplify_authenticator/src/enums/status_type.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:flutter/material.dart';

/// Creates an Authenticator-themed Material banner.
MaterialBanner createMaterialBanner(
  BuildContext context, {
  required StatusType type,
  required String message,
  required Function() actionCallback,
}) {
  final theme = Theme.of(context);

  // foreground and background colors are based on material standards for text legibility
  // if they are not provided by the theme. See https://material.io/design/color/text-legibility.html#text-backgrounds

  // fallback on default color based on type.
  final backgroundColor = theme.bannerTheme.backgroundColor ?? type.color;

  // If there is no background color provided by the theme,
  // use on Colors.black87 (High-emphasis) as fallback, otherwise
  // set it to null to let flutter control the foreground.
  final hasCustomBackground = theme.bannerTheme.backgroundColor != null;
  final foregroundColorFallBack = hasCustomBackground ? null : Colors.black87;

  // use contentTextStyle color if available, otherwise use fallback as defined above.
  final foregroundColor =
      theme.bannerTheme.contentTextStyle?.color ?? foregroundColorFallBack;

  return MaterialBanner(
    key: keyAuthenticatorBanner,
    leading: Icon(
      type.icon,
      color: foregroundColor,
    ),
    backgroundColor: backgroundColor,
    content: Center(
        child: Text(
      message.trimRight(),
      textAlign: TextAlign.center,
      style: TextStyle(color: foregroundColor),
    )),
    actions: [
      IconButton(
        onPressed: actionCallback,
        icon: Icon(Icons.close, color: foregroundColor),
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

  // foreground and background colors are based on material standards for text legibility
  // if they are not provided by the theme. See https://material.io/design/color/text-legibility.html#text-backgrounds

  // fallback on default color based on type.
  final backgroundColor = theme.snackBarTheme.backgroundColor ?? type.color;

  // If there is no background color provided by the theme,
  // use on Colors.black87 (High-emphasis) as fallback, otherwise
  // set it to null to let flutter control the foreground.
  final hasCustomBackground = theme.snackBarTheme.backgroundColor != null;
  final foregroundColorFallBack = hasCustomBackground ? null : Colors.black87;

  // use contentTextStyle color if available, otherwise use fallback as defined above.
  final foregroundColor =
      theme.snackBarTheme.contentTextStyle?.color ?? foregroundColorFallBack;

  return SnackBar(
    key: keyAuthenticatorBanner,
    backgroundColor: backgroundColor,
    content: Row(
      children: [
        Icon(
          type.icon,
          color: foregroundColor,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(message.trimRight(),
              textAlign: TextAlign.center,
              style: TextStyle(color: foregroundColor)),
        )
      ],
    ),
  );
}

extension on StatusType {
  IconData get icon {
    switch (this) {
      case StatusType.info:
        return Icons.circle_notifications;
      case StatusType.success:
        return Icons.check_circle;
      case StatusType.warning:
        return Icons.warning;
      case StatusType.error:
        return Icons.error;
    }
  }

  ColorSwatch<int> get color {
    switch (this) {
      case StatusType.info:
        return Colors.blue;
      case StatusType.error:
        return Colors.red;
      default:
        return Colors.blue;
    }
  }
}
