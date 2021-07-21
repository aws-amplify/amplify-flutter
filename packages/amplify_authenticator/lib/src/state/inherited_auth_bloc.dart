import 'package:flutter/material.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';

class InheritedAuthBloc extends InheritedWidget {
  // ignore: public_member_api_docs
  const InheritedAuthBloc({required this.authBloc, required Widget child})
      : super(child: child);

  final StateMachineBloc authBloc;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  // ignore: public_member_api_docs
  static InheritedAuthBloc? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedAuthBloc>();
}
