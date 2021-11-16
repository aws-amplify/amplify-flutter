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
import 'package:amplify_authenticator/src/theme/amplify_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// Creates an Authenticator-themed Material banner.
MaterialBanner createMaterialBanner(
  BuildContext context, {
  required StatusType type,
  required Widget content,
  required List<Widget> actions,
  required bool useAuthenticatorTheme,
  double margin = 0,
}) {
  final bool isDark = AmplifyTheme.of(context).isDark;
  return MaterialBanner(
    backgroundColor: useAuthenticatorTheme
        ? type.backgroundColor(context, isDark: isDark)
        : null,
    contentTextStyle: useAuthenticatorTheme
        ? TextStyle(
            fontSize: 16,
            color: isDark ? AmplifyColors.white : AmplifyColors.black,
          )
        : null,
    leading: Icon(
      type.icon,
      size: useAuthenticatorTheme ? 16 : null,
    ),
    padding: EdgeInsetsDirectional.only(
      start: 16.0,
      top: 2.0 + margin,
      bottom: 4.0,
    ),
    content: content,
    actions: actions,
  );
}

extension on StatusType {
  Color? backgroundColor(
    BuildContext context, {
    required bool isDark,
  }) {
    final theme = AmplifyTheme.of(context, useAmplifyTheme: true);
    switch (this) {
      case StatusType.info:
        return isDark ? theme.backgroundInfoDark : theme.backgroundInfo;
      case StatusType.success:
        return isDark ? theme.backgroundSuccessDark : theme.backgroundSuccess;
      case StatusType.warning:
        return isDark ? theme.backgroundWarningDark : theme.backgroundWarning;
      case StatusType.error:
        return isDark ? theme.backgroundErrorDark : theme.backgroundError;
    }
  }

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
