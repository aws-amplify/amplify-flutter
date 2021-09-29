import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_strings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class StatelessAuthenticatorComponent extends StatelessWidget {
  const StatelessAuthenticatorComponent({
    Key? key,
  }) : super(key: key);

  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  );

  @override
  @nonVirtual
  Widget build(BuildContext context) {
    final viewModel = InheritedAuthViewModel.of(context);
    final strings = InheritedStrings.of(context);
    return builder(context, viewModel, strings);
  }
}

abstract class AuthenticatorComponent extends StatefulWidget {
  const AuthenticatorComponent({Key? key}) : super(key: key);
}

abstract class AuthenticatorComponentState<T extends AuthenticatorComponent>
    extends State<T> {
  late final AuthViewModel viewModel;
  late final AuthStringResolver stringResolver;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    viewModel = InheritedAuthViewModel.of(context);
    stringResolver = InheritedStrings.of(context);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<AuthViewModel>('viewModel', viewModel));
    properties.add(DiagnosticsProperty<AuthStringResolver>(
        'stringResolver', stringResolver));
  }
}
