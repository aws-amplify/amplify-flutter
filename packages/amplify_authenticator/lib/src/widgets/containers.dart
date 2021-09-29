import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/constants/theme_constants.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:amplify_authenticator/src/widgets/form_fields.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FormFieldContainer extends StatelessWidget {
  const FormFieldContainer({
    Key? key,
    required this.keyboardType,
    required this.callback,
    required this.hintText,
    required this.title,
    required this.validator,
    required this.obscureText,
    this.errorMaxLines = 1,
    this.visible,
    this.color,
    this.initialValue,
    bool? enabled,
    this.resendCodeButton,
  })  : enabled = enabled ?? true,
        super(key: key);

  final Widget? visible;

  final String? initialValue;

  final String title;

  final String? hintText;

  final FormFieldValidator<String>? validator;

  final void Function(String) callback;

  final TextInputType keyboardType;

  final bool obscureText;

  final int errorMaxLines;

  ///This button will be used for resend a verification code.
  final Widget? resendCodeButton;

  final bool enabled;
  final Color? color;

  @override
  Widget build(BuildContext context) {
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
            enabled: enabled,
            key: key,
            validator: validator,
            onChanged: callback,
            decoration: InputDecoration(
                suffix: visible,
                errorMaxLines: errorMaxLines,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor != Colors.blue
                        ? Theme.of(context).primaryColor
                        : AuthenticatorColors.primary,
                  ),
                ),
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
    properties.add(DiagnosticsProperty<bool?>('enable', enabled));
    properties.add(DiagnosticsProperty<bool>('obscureText', obscureText));
    properties.add(StringProperty('hintText', hintText));
    properties.add(StringProperty('initialValue', initialValue));
    properties
        .add(DiagnosticsProperty<TextInputType>('keyboardType', keyboardType));
    properties.add(ObjectFlagProperty<FormFieldValidator<String>?>.has(
        'validator', validator));
    properties.add(
        ObjectFlagProperty<void Function(String)>.has('callback', callback));
    properties.add(IntProperty('errorMaxLines', errorMaxLines));
  }
}

class ButtonContainer extends StatelessAuthenticatorComponent {
  const ButtonContainer({
    Key? key,
    required this.text,
    required this.authKey,
    required this.callback,
  }) : super(key: key);

  final String authKey;
  final void Function() callback;
  final String text;

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    return AnimatedBuilder(
      animation: viewModel,
      builder: (context, child) {
        Widget _child;
        if (viewModel.isBusy) {
          _child = const CircularProgressIndicator(color: Colors.white);
        } else {
          _child = Text(text);
        }

        return ElevatedButton(
          key: Key(authKey),
          onPressed: viewModel.isBusy ? null : callback,
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
    properties
        .add(ObjectFlagProperty<void Function()>.has('callback', callback));
  }
}

class ButtonsContainer extends StatelessWidget {
  const ButtonsContainer({
    Key? key,
    required this.children,
  }) : super(key: key);

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

/// Wraps [fields] and [buttonsContainer] with a [Form].
class FormContainer extends StatelessAuthenticatorComponent {
  const FormContainer({
    Key? key,
    required this.fields,
    required this.buttonsContainer,
  }) : super(key: key);

  final List<AuthenticatorFormField> fields;
  final ButtonsContainer buttonsContainer;

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    return Form(
      key: viewModel.formKey,
      child: Column(
        children: [
          ...fields,
          buttonsContainer,
        ],
      ),
    );
  }
}
