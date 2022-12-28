// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:flutter/material.dart';

/// {@template amplify_authenticator.adaptive_flex}
/// Creates a [Flex] which changes direction based on the step size.
/// {@endtemplate}
class AdaptiveFlex extends StatelessWidget {
  /// {@macro amplify_authenticator.adaptive_flex}}
  const AdaptiveFlex({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final bool isDesktop =
        screenSize.width > AuthenticatorContainerConstants.mediumView;

    final Axis axis;
    final MainAxisAlignment mainAlignment;
    final CrossAxisAlignment crossAlignment;

    if (isDesktop) {
      axis = Axis.horizontal;
      crossAlignment = CrossAxisAlignment.center;
      mainAlignment = MainAxisAlignment.spaceBetween;
    } else {
      axis = Axis.vertical;
      crossAlignment = CrossAxisAlignment.stretch;
      mainAlignment = MainAxisAlignment.end;
    }

    return Flex(
      direction: axis,
      crossAxisAlignment: crossAlignment,
      mainAxisAlignment: mainAlignment,
      children: isDesktop ? children.reversed.toList() : children,
    );
  }
}
