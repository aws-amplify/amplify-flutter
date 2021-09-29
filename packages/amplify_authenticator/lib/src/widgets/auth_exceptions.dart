import 'dart:async';

import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/models/authenticator_exceptions.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// {@template auth_exceptions_widget}
/// Displays exceptions from the Authenticator as a Material banner.
/// {@endtemplate}
class AuthExceptionsWidget extends StatefulWidget {
  /// {@macro auth_exceptions_widget}
  const AuthExceptionsWidget({Key? key}) : super(key: key);

  @override
  State<AuthExceptionsWidget> createState() => _AuthExceptionsWidgetState();
}

class _AuthExceptionsWidgetState extends State<AuthExceptionsWidget> {
  static const _bannerColor = Color.fromRGBO(49, 70, 95, 1);

  late final StreamSubscription<AuthenticatorException> _exceptionSub;
  AuthenticatorException? _currentException;

  @override
  void initState() {
    super.initState();
    final StateMachineBloc authBloc =
        InheritedAuthBloc.of(context, listen: false).authBloc;
    _exceptionSub = authBloc.exceptions.listen((exception) {
      if (mounted) {
        setState(() => _currentException = exception);
      }
    });
  }

  @override
  void dispose() {
    _exceptionSub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_currentException == null) {
      return const SizedBox.shrink();
    }
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: double.infinity,
      height: 53,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: _bannerColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              const Icon(
                Icons.error,
                size: 24,
                color: Colors.white,
              ),
              const SizedBox(width: 5),
              Expanded(
                child: Text(
                  _currentException.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () => setState(() => _currentException = null),
            hoverColor: Colors.red,
            icon: const Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
