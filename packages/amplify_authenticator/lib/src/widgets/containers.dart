import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/internationalization/authenticator_localizations.dart';
import 'package:flutter/material.dart';

import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/constants/theme_constants.dart';
import 'package:amplify_authenticator/src/widgets/forms.dart';

// Reusable containers

class FormFieldContainer extends StatelessWidget {
  const FormFieldContainer(
      {Key? key,
      required this.keyboardType,
      required this.callback,
      required this.hintText,
      required this.title,
      required this.validator,
      required this.obscureText})
      : super(key: key);

  final String title;

  final String hintText;

  final String? Function(String?)? validator;

  final void Function(String) callback;

  final TextInputType keyboardType;

  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: FormFieldConstants.marginBottom,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          const Padding(padding: FormFieldConstants.gap),
          TextFormField(
            key: key,
            validator: validator,
            onChanged: callback,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).primaryColor != Colors.blue
                            ? Theme.of(context).primaryColor
                            : AuthenticatorColors.primary)),
                hintText: hintText,
                border: const OutlineInputBorder()),
            keyboardType: keyboardType,
            obscureText: obscureText,
          ),
        ],
      ),
    );
  }
}

class ButtonContainer extends StatelessWidget {
  const ButtonContainer(
      {Key? key,
      required this.text,
      required this.authViewModel,
      required this.authKey,
      required this.callback})
      : super(key: key);
  final dynamic authViewModel;
  final String authKey;
  final void Function() callback;
  final String text;
  @override
  Widget build(BuildContext context) {
    late dynamic Function() _callback;

    return AnimatedBuilder(
        animation: authViewModel,
        builder: (context, child) {
          Widget? _child;

          if (authViewModel.isBusy) {
            _child = const CircularProgressIndicator(color: Colors.white);
            _callback = () {};
          } else {
            _child = Text(text);
            _callback = callback;
          }

          return ElevatedButton(
            key: Key(authKey),
            onPressed: _callback,
            child: _child,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(10),
              primary: Theme.of(context).primaryColor != Colors.blue
                  ? Theme.of(context).primaryColor
                  : AuthenticatorColors.primary,
            ),
          );
        });
  }
}

class ButtonsContainer extends StatelessWidget {
  const ButtonsContainer({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    bool isDesktop =
        screenSize.width > AuthenticatorContainerConstants.landScapeView;

    Axis axis;
    MainAxisAlignment mainAlignment;
    CrossAxisAlignment crossAlignment;

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

class AuthenticatorContainer extends StatelessWidget {
  const AuthenticatorContainer({required this.form, required this.title});

  final Widget form;

  final String title;



  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    bool isDesktop =
        screenSize.width > AuthenticatorContainerConstants.landScapeView;
    double containerWidth;

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
          style: const TextStyle(
              fontWeight: AuthenticatorContainerConstants.titleFontWeight,
              fontSize: AuthenticatorContainerConstants.titleFontSize),
        ),
        const Padding(padding: AuthenticatorContainerConstants.gap),
        form
      ]),
    );
  }
}

class FormContainer extends StatelessWidget {
  const FormContainer(
      {Key? key,
      required this.formKey,
      required this.formFields,
      required this.buttonsContainer})
      : super(key: key);

  final FormFields formFields;

  final ButtonsContainer buttonsContainer;

  final Key formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          children: [formFields, buttonsContainer],
        ));
  }
}
