import 'package:flutter/material.dart';
import 'package:amplify_flutter_authenticator/src/models/auth_viewmodel.dart';

class InheritedAuthViewModel extends InheritedNotifier {
  InheritedAuthViewModel({required this.authViewModel, Widget? child})
      : super(child: child!, notifier: authViewModel);

  final AuthViewModel authViewModel;

  static InheritedAuthViewModel? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedAuthViewModel>();
  }
}
