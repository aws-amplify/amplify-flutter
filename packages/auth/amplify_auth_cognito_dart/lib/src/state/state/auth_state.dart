import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito_dart.auth_state}
/// Base class for states of the [CognitoAuthStateMachine].
/// {@endtemplate}
abstract class AuthState<StateType extends Enum>
    extends StateMachineState<StateType> {
  /// {@macro amplify_auth_cognito_dart.auth_state}
  const AuthState();
}
