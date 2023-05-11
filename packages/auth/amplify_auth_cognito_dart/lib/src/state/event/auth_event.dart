// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/model/hosted_ui/oauth_parameters.dart';
import 'package:amplify_auth_cognito_dart/src/model/session/cognito_auth_session.dart';
import 'package:amplify_auth_cognito_dart/src/model/session/cognito_user_pool_tokens.dart';
import 'package:amplify_auth_cognito_dart/src/model/session/federate_to_identity_pool_options.dart';
import 'package:amplify_auth_cognito_dart/src/model/session/federate_to_identity_pool_request.dart';
import 'package:amplify_auth_cognito_dart/src/model/sign_in_parameters.dart';
import 'package:amplify_auth_cognito_dart/src/model/sign_up_parameters.dart';
import 'package:amplify_auth_cognito_dart/src/model/signin/cognito_sign_in_with_web_ui_plugin_options.dart';
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';

part 'configuration_event.dart';
part 'credential_store_event.dart';
part 'fetch_auth_session_event.dart';
part 'hosted_ui_event.dart';
part 'sign_in_event.dart';
part 'sign_out_event.dart';
part 'sign_up_event.dart';

/// {@template amplify_auth_cognito_dart.auth_event}
/// Base class for events of the [CognitoAuthStateMachine].
/// {@endtemplate}
sealed class AuthEvent<EventType extends Enum, StateType extends Enum>
    extends StateMachineEvent<EventType, StateType> {
  /// {@macro amplify_auth_cognito_dart.auth_event}
  const AuthEvent();
}
