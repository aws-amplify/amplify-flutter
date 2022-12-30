// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/widgets.dart';

import '../constants/authenticator_constants.dart';

enum Breakpoint {
  small(maxScreenSize: 0, verticalPadding: 0),
  medium(
      maxScreenSize: AuthenticatorContainerConstants.mediumView,
      verticalPadding: 16);

  const Breakpoint({
    required this.maxScreenSize,
    required this.verticalPadding,
  });

  final double maxScreenSize;
  final double verticalPadding;

  static const maxMobileWidth = AuthenticatorContainerConstants.smallView;
  static const maxMobileHeight =
      AuthenticatorContainerConstants.smallViewHeight;

  static Breakpoint of(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // Determind if phone is in portrait or landscape mode
    final isMobile = size.width < maxMobileWidth ||
        (size.width < maxMobileHeight && size.height < maxMobileWidth);

    if (isMobile) {
      return small;
    } else {
      return medium;
    }
  }
}
