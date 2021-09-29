import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/constants/theme_constants.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/text_customization/auth_strings_resolver.dart';
import 'package:amplify_authenticator/src/widgets/component.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AuthenticatorScreen extends StatelessAuthenticatorComponent {
  const AuthenticatorScreen({
    Key? key,
    required this.screen,
  }) : super(key: key);

  const AuthenticatorScreen.signup({Key? key})
      : this(key: key, screen: AuthScreen.signup);

  const AuthenticatorScreen.signin({Key? key})
      : this(key: key, screen: AuthScreen.signin);

  const AuthenticatorScreen.confirmSignup({Key? key})
      : this(key: key, screen: AuthScreen.confirmSignup);

  const AuthenticatorScreen.confirmSignInMfa({Key? key})
      : this(key: key, screen: AuthScreen.confirmSigninMfa);

  const AuthenticatorScreen.confirmSignInNewPassword({Key? key})
      : this(key: key, screen: AuthScreen.confirmSigninNewPassword);

  const AuthenticatorScreen.sendCode({Key? key})
      : this(key: key, screen: AuthScreen.sendCode);

  const AuthenticatorScreen.resetPassword({Key? key})
      : this(key: key, screen: AuthScreen.resetPassword);

  final AuthScreen screen;

  @override
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  ) {
    final TitleResolver titleResolver = stringResolver.titles;
    final Size screenSize = MediaQuery.of(context).size;
    final bool isDesktop =
        screenSize.width > AuthenticatorContainerConstants.landScapeView;
    final double containerWidth;

    if (isDesktop) {
      containerWidth = AuthenticatorContainerConstants.mediumWidth;
    } else {
      containerWidth = AuthenticatorContainerConstants.smallWidth;
    }

    final form = InheritedForms.of(context)[screen];
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
            titleResolver.resolve(context, screen),
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
    properties.add(EnumProperty<AuthScreen>('screen', screen));
  }
}
