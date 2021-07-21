import 'dart:async';

import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';

import 'package:amplify_authenticator/src/services/amplify_auth_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class StateMachineBloc {
  final AuthService _authService;

  /// State controller.
  StreamController<AuthState> _authStateController =
      StreamController<AuthState>.broadcast();

  /// Assigns state to the authStateController.
  StreamSink<AuthState> get _controllerSink => _authStateController.sink;

  /// Outputs states, which allow to render auth screens.
  Stream<AuthState> get stream => _authStateController.stream;

  /// Event controller.
  StreamController<AuthEvent> _authEventController =
      StreamController<AuthEvent>.broadcast();

  /// Assigns events to the event controller, which will be transformed into state.
  StreamSink<AuthEvent> get authEvent => _authEventController.sink;

  /// Outputs events into the event transformer.
  Stream<AuthEvent> get _authEventStream => _authEventController.stream;

  StateMachineBloc(this._authService) {
    _authEventStream.listen(_eventTransformer);
  }

  //Exception Controller
  final _exceptionController = StreamController<AuthException>.broadcast();

  Stream<AuthException> get exceptions => _exceptionController.stream;

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
      await _authService.signIn(data.username, data.password);

      _controllerSink.add(Authenticated());
    } catch (e) {
      print(e);
      _exceptionController.add(AuthException(e.toString()));
    }
  }

  _signUp(data) async {
    try {
      await _authService.signUp(data.username, data.password, data.attributes);

      _controllerSink.add(AuthFlow(screen: AuthScreen.confirmSignUp));
    } catch (e) {
      print(e);
      _exceptionController.add(AuthException(e.toString()));
    }
  }

  _confirmSignUp(data) async {
    try {
      await _authService.confirmSignUp(data.username, data.code);
      _authEventController.add(GetCurrentUser());
    } catch (e) {
      print(e);
      _exceptionController.add(AuthException(e.toString()));
    }
  }

  _signOut() async {
    try {
      await _authService.signOut();
      _authEventController.add(GetCurrentUser());
    } catch (e) {
      print(e);
      _exceptionController.add(AuthException(e.toString()));
    }
  }

  _changeScreen(screen) {
    _controllerSink.add(AuthFlow(screen: screen));
  }

  void dispose() {
    _authStateController.close();
    _authEventController.close();
    _exceptionController.close();
  }
}
