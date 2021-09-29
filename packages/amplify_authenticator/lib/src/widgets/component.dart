import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class AuthenticatorComponent extends StatelessWidget {
  const AuthenticatorComponent({
    Key? key,
  }) : super(key: key);

  Widget builder(BuildContext context, AuthViewModel viewModel);

  @override
  @nonVirtual
  Widget build(BuildContext context) {
    final viewModel = InheritedAuthViewModel.of(context);
    return builder(context, viewModel);
  }
}
