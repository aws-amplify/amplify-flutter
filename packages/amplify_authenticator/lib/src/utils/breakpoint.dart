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

  static const maxMobileWidth = 480;
  static const maxMobileHeight = 960;

  static Breakpoint of(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < maxMobileWidth ||
        (size.width < maxMobileHeight && size.height < maxMobileWidth);
    if (size.shortestSide < medium.maxScreenSize && isMobile) {
      return small;
    } else {
      return medium;
    }
  }
}
