import 'package:flutter/material.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_bloc.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:flutter/rendering.dart';

class AuthExceptionsWidget extends StatelessWidget {
  const AuthExceptionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final StateMachineBloc _authenticatorExceptions =
        InheritedAuthBloc.of(context)!.authBloc;

    return StreamBuilder(
        stream: _authenticatorExceptions.exceptions,
        builder: (context, snapshot) {
          final exception = snapshot.data;

          if (exception != null) {
            return Container(
              margin: const EdgeInsets.only(bottom: 20),
              width: double.infinity,
              height: 53,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(49, 70, 95, 1),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(children: <Widget>[
                      const Icon(
                        Icons.error,
                        size: 24,
                        color: Colors.white,
                      ),
                      const Padding(padding: EdgeInsets.only(left: 5)),
                      Expanded(
                        child: Text(
                          exception.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ]),
                  ),
                  IconButton(
                      onPressed: _authenticatorExceptions.clearException,
                      hoverColor: Colors.red,
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                      )),
                ],
              ),
            );
          } else
            return const SizedBox.shrink();
        });
  }
}
