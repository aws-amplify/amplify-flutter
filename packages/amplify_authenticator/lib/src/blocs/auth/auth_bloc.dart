import 'dart:async';

import 'package:amplify_flutter_authenticator/src/blocs/auth/auth_data.dart';

import 'package:amplify_flutter_authenticator/src/services/amplify_auth_service.dart';
import 'package:amplify_flutter_authenticator/src/services/amplify_configure.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class StateMachineBloc {
  final AuthService _authService;
  final AmplifyConfigureService _amplifyConfigureService;

  StreamController<AuthState> _authStateController =
      StreamController<AuthState>.broadcast();

  //State Controller

  StreamSink<AuthState> get _controllerSink => _authStateController.sink;
  Stream<AuthState> get stream => _authStateController.stream;

  //Event Controller

  StreamController<AuthEvent> _authEventController =
      StreamController<AuthEvent>.broadcast();

  StreamSink<AuthEvent> get authEvent => _authEventController.sink;

  Stream<AuthEvent> get _authEventStream => _authEventController.stream;

  StateMachineBloc(this._authService, this._amplifyConfigureService) {
    _authEventStream.listen(_eventTransformer);
  }

  _eventTransformer(AuthEvent event) {
    if (event is AuthLoad) {
      _authLoad();
    } else if (event is GetCurrentUser) {
      _getCurrentUser();
    } else if (event is AuthSignIn) {
      _signIn(event.data);
    } else if (event is AuthSignUp) {
      _signUp(event.data);
    } else if (event is AuthConfirmSignUp) {
      _confirmSignUp(event.data);
    } else if (event is AuthChangeScreen) {
      _changeScreen(event.screen);
    } else if (event is AuthSignOut) {
      _signOut();
    }
  }

  void _authLoad() {
    _controllerSink.add(AuthLoading());
  }

  _getCurrentUser() async {
    try {
      final currentUser = await _authService.currentUser;

      if (currentUser != null) {
        _controllerSink.add(Authenticated());
      } else {
        _controllerSink.add(AuthFlow(screen: AuthScreen.signin));
      }
    } on Exception catch (e) {
      print(e);
    }
  }

  _signIn(data) async {
    try {
      var resp = await _authService.signIn(data.username, data.password);

      _controllerSink.add(Authenticated());
    } catch (e) {
      print(e);
    }
  }

  _signUp(data) async {
    try {
      var resp = await _authService.signUp(
          data.username, data.password, data.attributes);

      _controllerSink.add(AuthFlow(screen: AuthScreen.confirmSignUp));
    } catch (e) {
      print(e);
    }
  }

  _confirmSignUp(data) async {
    try {
      var resp = await _authService.confirmSignUp(data.username, data.code);
      _authEventController.add(GetCurrentUser());
    } catch (e) {
      print(e);
    }
  }

  _signOut() async {
    try {
      await _authService.signOut();
      _authEventController.add(GetCurrentUser());
    } catch (e) {
      print(e);
    }
  }

  _changeScreen(screen) {
    _controllerSink.add(AuthFlow(screen: screen));
  }

  void dispose() {
    _authStateController.close();
    _authEventController.close();
  }
}
