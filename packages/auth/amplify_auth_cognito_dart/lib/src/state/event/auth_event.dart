import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito_dart.auth_event}
/// Base class for events of the [CognitoAuthStateMachine].
/// {@endtemplate}
abstract class AuthEvent<EventType extends Enum, StateType extends Enum>
    extends StateMachineEvent<EventType, StateType> {
  /// {@macro amplify_auth_cognito_dart.auth_event}
  const AuthEvent();
}
