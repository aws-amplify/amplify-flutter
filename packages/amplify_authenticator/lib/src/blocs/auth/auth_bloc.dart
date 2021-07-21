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
  late final Stream<AuthEvent> _authEventStream = _authEventController.stream;
  late final StreamSubscription<AuthState> _subscription;

  // ignore: public_member_api_docs
  StateMachineBloc(this._authService) {
    _subscription =
        _authEventStream.asyncExpand(_eventTransformer).listen((state) {
      print(state);
      _controllerSink.add(state);
    });
  }

  //Exception Controller
  final _exceptionController = StreamController<AuthException>.broadcast();

  Stream<AuthException> get exceptions => _exceptionController.stream;

  Stream<AuthState> _eventTransformer(AuthEvent event) async* {
    if (event is AuthLoad) {
      yield* _authLoad();
    } else if (event is GetCurrentUser) {
      yield* _getCurrentUser();
    } else if (event is AuthSignIn) {
      yield* _signIn(event.data);
    } else if (event is AuthSignUp) {
      yield* _signUp(event.data);
    } else if (event is AuthConfirmSignUp) {
      yield* _confirmSignUp(event.data);
    } else if (event is AuthChangeScreen) {
      yield* _changeScreen(event.screen);
    } else if (event is AuthSignOut) {
      yield* _signOut();
    }
  }

  Stream<AuthState> _authLoad() async* {
    yield AuthLoading();
  }

  Stream<AuthState> _getCurrentUser() async* {
    try {
      final currentUser = await _authService.currentUser;

      if (currentUser != null) {
        yield Authenticated();
      } else {
        yield AuthFlow(screen: AuthScreen.signin);
      }
    } on Exception catch (e) {
      print(e);
    }
  }

  Stream<AuthState> _signIn(data) async* {
    try {
      await _authService.signIn(data.username, data.password);

      yield Authenticated();
    } catch (e) {
      print(e);
      _exceptionController.add(AuthException(e.toString()));
    }
  }

  Stream<AuthState> _signUp(data) async* {
    try {
      await _authService.signUp(data.username, data.password, data.attributes);

      yield AuthFlow(screen: AuthScreen.confirmSignUp);
    } catch (e) {
      print(e);
      _exceptionController.add(AuthException(e.toString()));
    }
  }

  Stream<AuthState> _confirmSignUp(data) async* {
    try {
      await _authService.confirmSignUp(data.username, data.code);

      _authEventController.add(GetCurrentUser());
    } catch (e) {
      print(e);
      _exceptionController.add(AuthException(e.toString()));
    }
  }

  Stream<AuthState> _signOut() async* {
    try {
      await _authService.signOut();
      _authEventController.add(GetCurrentUser());
    } catch (e) {
      print(e);
      _exceptionController.add(AuthException(e.toString()));
    }
  }

  Stream<AuthState> _changeScreen(screen) async* {
    yield AuthFlow(screen: screen);
  }

  void dispose() {
    _authStateController.close();
    _authEventController.close();
    _exceptionController.close();
  }
}
