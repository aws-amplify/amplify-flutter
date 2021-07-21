import 'dart:async';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';

import 'package:amplify_authenticator/src/services/amplify_auth_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class StateMachineBloc {
  late final AuthService _authService;

  /// State controller.
  final StreamController<AuthState> _authStateController =
      StreamController<AuthState>.broadcast();

  /// Assigns state to the authStateController.
  StreamSink<AuthState> get _controllerSink => _authStateController.sink;

  /// Outputs states, which allow to render auth screens.
  Stream<AuthState> get stream => _authStateController.stream;

  /// Event controller.
  final StreamController<AuthEvent> _authEventController =
      StreamController<AuthEvent>.broadcast();

  /// Assigns events to the event controller, which will be transformed into state.
  StreamSink<AuthEvent> get authEvent => _authEventController.sink;

  /// Outputs events into the event transformer.
  late final Stream<AuthEvent> _authEventStream = _authEventController.stream;
  // ignore: unused_field
  late final StreamSubscription<AuthState> _subscription;

  // ignore: public_member_api_docs
  StateMachineBloc(this._authService) {
    _subscription =
        _authEventStream.asyncExpand(_eventTransformer).listen((state) {
      _controllerSink.add(state);
    });
  }

  //Exception Controller
  final _exceptionController =
      StreamController<AuthenticatorException>.broadcast();

  Stream<AuthenticatorException> get exceptions => _exceptionController.stream;

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
      final AuthUser? currentUser = await _authService.currentUser;

      if (currentUser != null) {
        yield const Authenticated();
      } else {
        yield AuthFlow(screen: AuthScreen.signin);
      }
    } on Exception catch (e) {
      print(e);
    }
  }

  Stream<AuthState> _signIn(AuthSignInData data) async* {
    try {
      await _authService.signIn(data.username, data.password);

      yield const Authenticated();
    } catch (e) {
      print(e);
      _exceptionController.add(AuthenticatorException(e.toString()));
    }
  }

  Stream<AuthState> _signUp(AuthSignUpData data) async* {
    try {
      await _authService.signUp(data.username, data.password, data.attributes);

      yield AuthFlow(screen: AuthScreen.confirmSignUp);
    } catch (e) {
      print(e);
      _exceptionController.add(AuthenticatorException(e.toString()));
    }
  }

  Stream<AuthState> _confirmSignUp(AuthConfirmSignUpData data) async* {
    try {
      await _authService.confirmSignUp(data.username, data.code);

      _authEventController.add(GetCurrentUser());
    } catch (e) {
      print(e);
      _exceptionController.add(AuthenticatorException(e.toString()));
    }
  }

  Stream<AuthState> _signOut() async* {
    try {
      await _authService.signOut();
      _authEventController.add(GetCurrentUser());
    } catch (e) {
      print(e);
      _exceptionController.add(AuthenticatorException(e.toString()));
    }
  }

  Stream<AuthState> _changeScreen(AuthScreen screen) async* {
    yield AuthFlow(screen: screen);
  }

  void dispose() {
    _authStateController.close();
    _authEventController.close();
    _exceptionController.close();
  }
}
