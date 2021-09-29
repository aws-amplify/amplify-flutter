import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InheritedAuthViewModel extends InheritedNotifier {
  const InheritedAuthViewModel({
    Key? key,
    required Widget child,
    required this.viewModel,
  }) : super(
          key: key,
          child: child,
          notifier: viewModel,
        );

  final AuthViewModel viewModel;

  static AuthViewModel of(BuildContext context) {
    final inheritedViewModel =
        context.dependOnInheritedWidgetOfExactType<InheritedAuthViewModel>();
    assert(() {
      if (inheritedViewModel == null) {
        throw FlutterError.fromParts([
          ErrorSummary('No InheritedAuthViewModel widget found.'),
          ErrorDescription(
              'Make sure your app is wrapped with an Authenticator widget.')
        ]);
      }
      return true;
    }());
    return inheritedViewModel!.viewModel;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<AuthViewModel>('viewModel', viewModel));
  }
}

// ignore_for_file: prefer_asserts_with_message
