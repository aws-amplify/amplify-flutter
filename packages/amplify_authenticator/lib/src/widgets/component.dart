import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_config.dart';
import 'package:amplify_authenticator/src/state/inherited_strings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// {@template authenticator.stateless_authenticator_component}
/// Base class for all Authenticator components which do not manage their own state.
/// {@endtemplate}
abstract class StatelessAuthenticatorComponent extends StatelessWidget {
  /// {@macro authenticator.stateless_authenticator_component}
  const StatelessAuthenticatorComponent({
    Key? key,
  }) : super(key: key);

  /// A [StatelessWidget.build] replacement which injects inherited Authenticator
  /// components.
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

/// {@template authenticator.authenticator_component}
/// Base class for all stateful Authenticator components.
/// {@endtemplate}
abstract class AuthenticatorComponent<T extends AuthenticatorComponent<T>>
    extends StatefulWidget {
  /// {@macro authenticator.authenticator_component}
  const AuthenticatorComponent({Key? key}) : super(key: key);

  @override
  AuthenticatorComponentState<T> createState();
}

/// Base state class for [AuthenticatorComponent].
///
/// Subclasses of [AuthenticatorComponent] must have a [State] object which
/// subclasses this class.
abstract class AuthenticatorComponentState<T extends AuthenticatorComponent<T>>
    extends State<T> {
  /// The root Autheticator view model.
  late AuthViewModel viewModel;

  /// The root Authenticator string resolver.
  late AuthStringResolver stringResolver;

  /// The root Authenticator config.
  late AuthenticatorConfig config;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    viewModel = InheritedAuthViewModel.of(context);
    stringResolver = InheritedStrings.of(context);
    config = InheritedConfig.of(context);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<AuthViewModel>('viewModel', viewModel));
    properties.add(DiagnosticsProperty<AuthStringResolver>(
        'stringResolver', stringResolver));
    properties.add(DiagnosticsProperty<AuthenticatorConfig>('config', config));
  }
}
