import 'package:flutter/widgets.dart';

import '../constants/authenticator_constants.dart';

enum Breakpoint {
  small(maxScreenSize: 0, verticalPadding: 0),
  medium(
      maxScreenSize: AuthenticatorContainerConstants.mediumView,
      verticalPadding: 64),
  large(
      maxScreenSize: AuthenticatorContainerConstants.largeView,
      verticalPadding: 96);

  const Breakpoint({
    required this.maxScreenSize,
    required this.verticalPadding,
  });

  final double maxScreenSize;
  final double verticalPadding;

  static Breakpoint of(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (size.shortestSide < medium.maxScreenSize) {
      return small;
    } else if (size.shortestSide < large.maxScreenSize) {
      return medium;
    } else {
      return large;
    }
  }
}
