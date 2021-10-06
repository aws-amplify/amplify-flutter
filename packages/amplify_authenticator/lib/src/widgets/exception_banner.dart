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
MaterialBanner createMaterialBanner({
  required StatusType type,
  required Widget content,
  required List<Widget> actions,
}) {
  return MaterialBanner(
    backgroundColor: type.backgroundColor,
    contentTextStyle: TextStyle(color: type.textColor),
    leading: Icon(type.icon),
    content: content,
    actions: actions,
  );
}

extension on StatusType {
  Color get backgroundColor {
    switch (this) {
      case StatusType.info:
        return AmplifyColors.statusInfo;
      case StatusType.success:
        return AmplifyColors.statusSuccess;
      case StatusType.warning:
        return AmplifyColors.statusWarning;
      case StatusType.error:
        return AmplifyColors.statusError;
    }
  }

  Color get textColor {
    switch (this) {
      case StatusType.info:
        return AmplifyColors.statusInfoText;
      case StatusType.success:
        return AmplifyColors.statusSuccessText;
      case StatusType.warning:
        return AmplifyColors.statusWarningText;
      case StatusType.error:
        return AmplifyColors.statusErrorText;
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
