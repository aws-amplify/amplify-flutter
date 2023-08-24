// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/model/session/cognito_auth_session.dart';
import 'package:amplify_auth_cognito_dart/src/model/session/cognito_sign_in_details.dart';
import 'package:amplify_auth_cognito_dart/src/model/session/cognito_user_pool_tokens.dart';
import 'package:amplify_auth_cognito_dart/src/model/signout/cognito_sign_out_result.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/challenge_name_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/code_delivery_details_type.dart';
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_core/amplify_core.dart';

part 'auth_state.g.dart';
part 'configuration_state.dart';
part 'credential_store_state.dart';
part 'fetch_auth_session_state.dart';
part 'hosted_ui_state.dart';
part 'sign_in_state.dart';
part 'sign_out_state.dart';
part 'sign_up_state.dart';
part 'totp_setup_state.dart';

/// {@template amplify_auth_cognito_dart.auth_state}
/// Base class for states of the [CognitoAuthStateMachine].
/// {@endtemplate}
sealed class AuthState<StateType extends Enum>
    extends StateMachineState<StateType> {
  /// {@macro amplify_auth_cognito_dart.auth_state}
  const AuthState();
}
