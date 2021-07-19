import 'package:flutter/material.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';

///Inherited Auth Bloc
class InheritedAuthBloc extends InheritedWidget {
  ///Inherited Bloc
  final StateMachineBloc? authBloc;

  ///Inherited Auth Bloc Constructor
  InheritedAuthBloc({this.authBloc, Widget? child}) : super(child: child!);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  // ignore: public_member_api_docs
  static InheritedAuthBloc? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedAuthBloc>();
}
