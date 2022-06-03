// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';

/// {@template amplify_auth_cognito.srp_sign_in_exception}
/// Exception thrown from the SRP sign in state machine.
/// {@endtemplate}
abstract class SrpSignInException extends AuthException {
  /// {@macro amplify_auth_cognito.srp_sign_in_exception}
  const SrpSignInException(super.message);
}

/// {@template amplify_auth_cognito.srp_sign_in_configuration_exception}
/// Exception thrown from the SRP sign in state machine during configuration.
/// {@endtemplate}
class SrpSignInConfigurationException extends SrpSignInException {
  /// {@macro amplify_auth_cognito.srp_sign_in_configuration_exception}
  const SrpSignInConfigurationException(super.message);
}

/// {@template amplify_auth_cognito.srp_sign_in_service_exception}
/// Exception thrown from the SRP sign in state machine when an error is
/// reported by the Cognito service.
/// {@endtemplate}
class SrpSignInServiceException extends SrpSignInException {
  /// {@macro amplify_auth_cognito.srp_sign_in_service_exception}
  const SrpSignInServiceException(super.message);
}

/// {@template amplify_auth_cognito.srp_sign_in_input_validation_exception}
/// Exception thrown from the SRP sign in state machine when the user has
/// presented invalid input.
/// {@endtemplate}
class SrpSignInInputValidationException extends SrpSignInException {
  /// {@macro amplify_auth_cognito.srp_sign_in_input_validation_exception}
  const SrpSignInInputValidationException(super.message);
}

/// {@template amplify_auth_cognito.srp_sign_in_calculation_exception}
/// Exception thrown from the SRP sign in state machine when an SRP calculation
/// could not be completed.
/// {@endtemplate}
class SrpSignInCalculationException extends SrpSignInException {
  /// {@macro amplify_auth_cognito.srp_sign_in_calculation_exception}
  const SrpSignInCalculationException(super.message);
}

/// {@template amplify_auth_cognito.srp_sign_in_unknown_exception}
/// Exception thrown from the SRP sign in state machine when an unknown issue
/// is encountered.
/// {@endtemplate}
class SrpSignInUnknownException extends SrpSignInException {
  /// {@macro amplify_auth_cognito.srp_sign_in_unknown_exception}
  const SrpSignInUnknownException(super.message);
}
