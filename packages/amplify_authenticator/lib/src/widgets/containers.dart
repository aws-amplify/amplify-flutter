import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/constants/theme_constants.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/widgets/forms.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Reusable containers

class FormFieldContainer extends StatelessWidget {
  const FormFieldContainer(
      {Key? key,
      required this.keyboardType,
      required this.callback,
      required this.hintText,
      required this.title,
      required this.validator,
      required this.obscureText,
      this.color,
      this.initialValue,
      this.enable,
      this.resendCodeButton})
      : super(key: key);

  final String? initialValue;

  final String title;

  final String? hintText;

  final String? Function(String?)? validator;

  final void Function(String) callback;

  final TextInputType keyboardType;

  final bool obscureText;

  ///This button will be used for resend a verification code.
  final Widget? resendCodeButton;

  final bool? enable;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    bool _enable = enable ?? true;
    Widget? _child;

    if (resendCodeButton != null) {
      _child = resendCodeButton;
    } else {
      _child = null;
    }
    return Container(
      margin: FormFieldConstants.marginBottom,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title),
          const Padding(padding: FormFieldConstants.gap),
          TextFormField(
            style: TextStyle(color: color),
            initialValue: initialValue,
            enabled: _enable,
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
          Container(
            child: _child,
          )
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('color', color));
    properties.add(StringProperty('title', title));
    properties.add(DiagnosticsProperty<bool?>('enable', enable));
    properties.add(DiagnosticsProperty<bool>('obscureText', obscureText));
    properties.add(StringProperty('hintText', hintText));
    properties.add(StringProperty('initialValue', initialValue));
    properties
        .add(DiagnosticsProperty<TextInputType>('keyboardType', keyboardType));
  }
}

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({
    Key? key,
    required this.text,
    required this.authViewModel,
    required this.authKey,
    required this.callback,
  }) : super(key: key);

  final AuthViewModel authViewModel;
  final String authKey;
  final void Function() callback;
  final String text;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: authViewModel,
      builder: (context, child) {
        Widget _child;
        if (authViewModel.isBusy) {
          _child = const CircularProgressIndicator(color: Colors.white);
        } else {
          _child = Text(text);
        }

        return ElevatedButton(
          key: Key(authKey),
          onPressed: authViewModel.isBusy ? null : callback,
          child: _child,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(10),
            primary: Theme.of(context).primaryColor != Colors.blue
                ? Theme.of(context).primaryColor
                : AuthenticatorColors.primary,
          ),
        );
      },
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('text', text));
    properties.add(StringProperty('authKey', authKey));
    properties.add(DiagnosticsProperty('authViewModel', authViewModel));
  }
}

class ButtonsContainer extends StatelessWidget {
  const ButtonsContainer({
    required this.children,
  });

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
  const AuthenticatorContainer({
    required this.form,
    required this.title,
  });

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
      padding: const EdgeInsets.all(AuthenticatorContainerConstants.padding),
      decoration: const BoxDecoration(
        color: AuthenticatorColors.container,
        borderRadius: AuthenticatorContainerConstants.borderRadius,
        boxShadow: [AuthenticatorContainerConstants.boxShadow],
      ),
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: AuthenticatorContainerConstants.titleFontWeight,
              fontSize: AuthenticatorContainerConstants.titleFontSize,
            ),
          ),
          const SizedBox(
            height: AuthenticatorContainerConstants.gap,
          ),
          form,
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('title', title));
  }
}

/// Wraps [fields] and [buttonsContainer] with a [Form] with key [formKey].
class FormContainer extends StatelessWidget {
  const FormContainer({
    Key? key,
    required this.formKey,
    required this.fields,
    required this.buttonsContainer,
  }) : super(key: key);

  final List<AuthenticatorFormField> fields;

  final ButtonsContainer buttonsContainer;

  final Key formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          ...fields,
          buttonsContainer,
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Key>('formKey', formKey));
  }
}
