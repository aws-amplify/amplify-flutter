import 'package:amplify_flutter_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_flutter_authenticator/src/constants/theme_constants.dart';
import 'package:flutter/material.dart';

//Buttons Container
class ButtonsContainer extends StatelessWidget {
  ButtonsContainer({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var isDesktop =
        screenSize.width > AuthenticatorContainerConstants.landScapeView;

    var axis;
    var mainAlignment;
    var crossAlignment;

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

//Form Container
class FormContainer extends StatelessWidget {
  FormContainer({required this.form, required this.title});
  final Widget form;
  final String title;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var isDesktop =
        screenSize.width > AuthenticatorContainerConstants.landScapeView;
    var containerWidth;

    if (isDesktop) {
      containerWidth = AuthenticatorContainerConstants.mediumWidth;
    } else {
      containerWidth = AuthenticatorContainerConstants.smallWidth;
    }

    return Container(
      width: containerWidth,
      padding: AuthenticatorContainerConstants.padding,
      decoration: BoxDecoration(
          color: AuthenticatorColors.container,
          borderRadius: AuthenticatorContainerConstants.borderRadius,
          boxShadow: [AuthenticatorContainerConstants.boxShadow]),
      child: Column(children: <Widget>[
        Text(
          title,
          style: TextStyle(
              fontWeight: AuthenticatorContainerConstants.titleFontWeight,
              fontSize: AuthenticatorContainerConstants.titleFontSize),
        ),
        const Padding(padding: AuthenticatorContainerConstants.gap),
        form
      ]),
    );
  }
}
