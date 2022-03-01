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
  required Widget content,
  required List<Widget> actions,
}) {
  final margin = MediaQuery.of(context).viewPadding.top;

  return MaterialBanner(
    key: keyAuthenticatorBanner,
    leading: Icon(type.icon),
    padding: EdgeInsetsDirectional.only(
      start: 16.0,
      top: 2.0 + margin,
      bottom: 4.0,
    ),
    content: content,
    actions: actions,
  );
}

SnackBar createSnackBar(
  BuildContext context, {
  required StatusType type,
  required Widget content,
}) {
  final theme = Theme.of(context);

  // if contentTextStyle is null, colorScheme.surface is used as a fallback
  // since SnackBarThemeData.backgroundColor uses colorScheme.onSurface as a fall back
  final foregroundColor =
      theme.snackBarTheme.contentTextStyle?.color ?? theme.colorScheme.surface;

  return SnackBar(
    key: keyAuthenticatorBanner,
    content: Row(
      children: [
        Icon(
          type.icon,
          color: foregroundColor,
        ),
        const SizedBox(width: 16),
        Expanded(child: content),
      ],
    ),
  );
}

extension on StatusType {
  IconData get icon {
    switch (this) {
      case StatusType.info:
        return Icons.info;
      case StatusType.success:
        return Icons.check_circle;
      case StatusType.warning:
        return Icons.warning;
      case StatusType.error:
        return Icons.error;
    }
  }
}
