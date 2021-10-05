import 'dart:async';

import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/constants/theme_constants.dart';
import 'package:amplify_authenticator/src/models/authenticator_exception.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// {@template authenticator.authenticator_exception_banner}
/// Displays exceptions from the Authenticator as a Material banner.
/// {@endtemplate}
class AuthenticatorExceptionBanner extends StatefulWidget {
  /// {@macro authenticator.authenticator_exception_banner}
  const AuthenticatorExceptionBanner({Key? key}) : super(key: key);

  @override
  State<AuthenticatorExceptionBanner> createState() =>
      _AuthenticatorExceptionBannerState();
}

class _AuthenticatorExceptionBannerState
    extends State<AuthenticatorExceptionBanner> {
  late final StreamSubscription<AuthenticatorException> _exceptionSub;
  AuthenticatorException? _currentException;

  @override
  void initState() {
    super.initState();
    final StateMachineBloc authBloc =
        InheritedAuthBloc.of(context, listen: false);
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
      height: 53,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AuthenticatorColors.bannerColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
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
          ),
          IconButton(
            padding: EdgeInsets.zero,
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
