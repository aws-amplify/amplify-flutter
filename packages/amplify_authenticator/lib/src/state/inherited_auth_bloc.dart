import 'package:flutter/material.dart';
import 'package:amplify_flutter_authenticator/src/blocs/auth/auth_bloc.dart';

class InheritedAuthBloc extends InheritedWidget {
  final StateMachineBloc? authBloc;

  InheritedAuthBloc({this.authBloc, Widget? child}) : super(child: child!);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static InheritedAuthBloc? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedAuthBloc>();
}
