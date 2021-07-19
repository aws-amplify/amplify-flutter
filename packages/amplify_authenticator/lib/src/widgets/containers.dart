import 'package:flutter/material.dart';

import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/constants/theme_constants.dart';
import 'package:amplify_authenticator/src/widgets/forms.dart';

///FormFieldContainer
class FormFieldContainer extends StatelessWidget {
  ///FormFieldContainer Constructor
  const FormFieldContainer(
      {Key? key,
      required this.keyboardType,
      required this.callback,
      required this.hintText,
      required this.title,
      required this.validator,
      required this.obscureText})
      : super(key: key);

  ///Form field title
  final String? title;

  ///Form field hint text
  final String? hintText;

  ///Form field validator
  final String? Function(String?)? validator;

  ///Form field callback
  final void Function(String) callback;

  ///Form field keyboard type
  final TextInputType keyboardType;

  ///Form field obscure text
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: FormFieldConstants.marginBottom,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title!),
          const Padding(padding: FormFieldConstants.gap),
          TextFormField(
            validator: validator,
            onChanged: callback,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).primaryColor != Colors.blue
                            ? Theme.of(context).primaryColor
                            : AuthenticatorColors.primary)),
                hintText: hintText!,
                border: OutlineInputBorder()),
            keyboardType: keyboardType,
            obscureText: obscureText,
          ),
        ],
      ),
    );
  }
}

///Buttons Container
class ButtonsContainer extends StatelessWidget {
  ///Buttons container constructor
  ButtonsContainer({required this.children});

  ///List of buttons
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

///Authenticator Container
class AuthenticatorContainer extends StatelessWidget {
  ///Authenticator container constructor
  AuthenticatorContainer({required this.form, required this.title});

  ///Authenticator's form
  final Widget form;

  ///Authenticator's title
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

///FormContainer
class FormContainer extends StatelessWidget {
  /// Form container constructor
  const FormContainer(
      {Key? key,
      required this.formKey,
      required this.formFields,
      required this.buttonsContainer})
      : super(key: key);

  /// Authenticator's form fields
  final FormFields formFields;

  /// Buttons container
  final ButtonsContainer buttonsContainer;

  /// form key
  final formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          children: [formFields, buttonsContainer],
        ));
  }
}
