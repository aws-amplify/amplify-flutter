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
import 'package:amplify_auth_cognito_dart/src/model/cognito_device_secrets.dart';
import 'package:amplify_core/amplify_core.dart';

/// Discrete state types of the credential store state machine.
enum CredentialStoreStateType {
  /// {@macro amplify_auth_cognito.credential_store_not_configured}
  notConfigured,

  /// {@macro amplify_auth_cognito.credential_store_migrating_legacy_store}
  migratingLegacyStore,

  /// {@macro amplify_auth_cognito.credential_store_loading_stored_credentials}
  loadingStoredCredentials,

  /// {@macro amplify_auth_cognito.credential_store_storing_credentials}
  storingCredentials,

  /// {@macro amplify_auth_cognito.credential_store_clearing_credentials}
  clearingCredentials,

  /// {@macro amplify_auth_cognito.credential_store_success}
  success,

  /// {@macro amplify_auth_cognito.credential_store_failure}
  failure,
}

/// Discrete states of the credential store state machine.
abstract class CredentialStoreState
    extends StateMachineState<CredentialStoreStateType> {
  const CredentialStoreState._();

  /// {@macro amplify_auth_cognito.credential_store_not_configured}
  const factory CredentialStoreState.notConfigured() =
      CredentialStoreNotConfigured;

  /// {@macro amplify_auth_cognito.credential_store_migrating_legacy_store}
  const factory CredentialStoreState.migratingLegacyStore() =
      CredentialStoreMigratingLegacyStore;

  /// {@macro amplify_auth_cognito.credential_store_loading_stored_credentials}
  const factory CredentialStoreState.loadingStoredCredentials() =
      CredentialStoreLoadingStoredCredentials;

  /// {@macro amplify_auth_cognito.credential_store_storing_credentials}
  const factory CredentialStoreState.storingCredentials() =
      CredentialStoreStoringCredentials;

  /// {@macro amplify_auth_cognito.credential_store_clearing_credentials}
  const factory CredentialStoreState.clearingCredentials() =
      CredentialStoreClearingCredentials;

  /// {@macro amplify_auth_cognito.credential_store_success}
  const factory CredentialStoreState.success({
    String? identityId,
    AWSCredentials? awsCredentials,
    CognitoUserPoolTokens? userPoolTokens,
    CognitoDeviceSecrets? deviceSecrets,
  }) = CredentialStoreSuccess;

  /// {@macro amplify_auth_cognito.credential_store_failure}
  const factory CredentialStoreState.failure(Exception exception) =
      CredentialStoreFailure;

  @override
  String get runtimeTypeName => 'CredentialStoreState';
}

/// {@template amplify_auth_cognito.credential_store_not_configured}
///
/// {@endtemplate}
class CredentialStoreNotConfigured extends CredentialStoreState {
  /// {@macro amplify_auth_cognito.credential_store_not_configured}
  const CredentialStoreNotConfigured() : super._();

  @override
  CredentialStoreStateType get type => CredentialStoreStateType.notConfigured;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito.credential_store_migrating_legacy_store}
///
/// {@endtemplate}
class CredentialStoreMigratingLegacyStore extends CredentialStoreState {
  /// {@macro amplify_auth_cognito.credential_store_migrating_legacy_store}
  const CredentialStoreMigratingLegacyStore() : super._();

  @override
  CredentialStoreStateType get type =>
      CredentialStoreStateType.migratingLegacyStore;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito.credential_store_loading_stored_credentials}
///
/// {@endtemplate}
class CredentialStoreLoadingStoredCredentials extends CredentialStoreState {
  /// {@macro amplify_auth_cognito.credential_store_loading_stored_credentials}
  const CredentialStoreLoadingStoredCredentials() : super._();

  @override
  CredentialStoreStateType get type =>
      CredentialStoreStateType.loadingStoredCredentials;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito.credential_store_storing_credentials}
///
/// {@endtemplate}
class CredentialStoreStoringCredentials extends CredentialStoreState {
  /// {@macro amplify_auth_cognito.credential_store_storing_credentials}
  const CredentialStoreStoringCredentials() : super._();

  @override
  CredentialStoreStateType get type =>
      CredentialStoreStateType.storingCredentials;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito.credential_store_clearing_credentials}
///
/// {@endtemplate}
class CredentialStoreClearingCredentials extends CredentialStoreState {
  /// {@macro amplify_auth_cognito.credential_store_clearing_credentials}
  const CredentialStoreClearingCredentials() : super._();

  @override
  CredentialStoreStateType get type =>
      CredentialStoreStateType.clearingCredentials;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito.credential_store_success}
///
/// {@endtemplate}
class CredentialStoreSuccess extends CredentialStoreState {
  /// {@macro amplify_auth_cognito.credential_store_success}
  const CredentialStoreSuccess({
    this.identityId,
    this.awsCredentials,
    this.userPoolTokens,
    this.deviceSecrets,
  }) : super._();

  /// AWS Identity ID
  final String? identityId;

  /// AWS Identity Pool credentials
  final AWSCredentials? awsCredentials;

  /// Cognito User Pool tokens
  final CognitoUserPoolTokens? userPoolTokens;

  /// Registered device secrets
  final CognitoDeviceSecrets? deviceSecrets;

  @override
  CredentialStoreStateType get type => CredentialStoreStateType.success;

  @override
  List<Object?> get props => [
        type,
        identityId,
        awsCredentials,
        userPoolTokens,
        deviceSecrets,
      ];
}

/// {@template amplify_auth_cognito.credential_store_failure}
///
/// {@endtemplate}
class CredentialStoreFailure extends CredentialStoreState with ErrorState {
  /// {@macro amplify_auth_cognito.credential_store_failure}
  const CredentialStoreFailure(this.exception) : super._();

  /// The exception thrown during credential storage.
  @override
  final Exception exception;

  @override
  CredentialStoreStateType get type => CredentialStoreStateType.failure;

  @override
  List<Object?> get props => [type, exception];
}
