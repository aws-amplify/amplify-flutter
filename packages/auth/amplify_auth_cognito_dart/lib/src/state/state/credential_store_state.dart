// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of 'auth_state.dart';

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
sealed class CredentialStoreState extends AuthState<CredentialStoreStateType> {
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
  const factory CredentialStoreState.success(CredentialStoreData data) =
      CredentialStoreSuccess;

  /// {@macro amplify_auth_cognito.credential_store_failure}
  const factory CredentialStoreState.failure(
    Exception exception,
    StackTrace stackTrace,
  ) = CredentialStoreFailure;

  @override
  String get runtimeTypeName => 'CredentialStoreState';
}

/// {@template amplify_auth_cognito.credential_store_not_configured}
/// The credential store has not yet been configured.
/// {@endtemplate}
final class CredentialStoreNotConfigured extends CredentialStoreState {
  /// {@macro amplify_auth_cognito.credential_store_not_configured}
  const CredentialStoreNotConfigured() : super._();

  @override
  CredentialStoreStateType get type => CredentialStoreStateType.notConfigured;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito.credential_store_migrating_legacy_store}
/// Credentials are being migrated from the V1 credential store.
/// {@endtemplate}
final class CredentialStoreMigratingLegacyStore extends CredentialStoreState {
  /// {@macro amplify_auth_cognito.credential_store_migrating_legacy_store}
  const CredentialStoreMigratingLegacyStore() : super._();

  @override
  CredentialStoreStateType get type =>
      CredentialStoreStateType.migratingLegacyStore;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito.credential_store_loading_stored_credentials}
/// Credentials are being loading from the credential store.
/// {@endtemplate}
final class CredentialStoreLoadingStoredCredentials
    extends CredentialStoreState {
  /// {@macro amplify_auth_cognito.credential_store_loading_stored_credentials}
  const CredentialStoreLoadingStoredCredentials() : super._();

  @override
  CredentialStoreStateType get type =>
      CredentialStoreStateType.loadingStoredCredentials;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito.credential_store_storing_credentials}
/// Credentials are being written to the credential store.
/// {@endtemplate}
final class CredentialStoreStoringCredentials extends CredentialStoreState {
  /// {@macro amplify_auth_cognito.credential_store_storing_credentials}
  const CredentialStoreStoringCredentials() : super._();

  @override
  CredentialStoreStateType get type =>
      CredentialStoreStateType.storingCredentials;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito.credential_store_clearing_credentials}
/// Credentials are being cleared from the credential store.
/// {@endtemplate}
final class CredentialStoreClearingCredentials extends CredentialStoreState {
  /// {@macro amplify_auth_cognito.credential_store_clearing_credentials}
  const CredentialStoreClearingCredentials() : super._();

  @override
  CredentialStoreStateType get type =>
      CredentialStoreStateType.clearingCredentials;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito.credential_store_success}
/// A successful result to a requested save/load of credentials.
/// {@endtemplate}
final class CredentialStoreSuccess extends CredentialStoreState
    with SuccessState {
  /// {@macro amplify_auth_cognito.credential_store_success}
  const CredentialStoreSuccess(this.data) : super._();

  /// {@macro amplify_auth_cognito_dart.credential_store_state.credential_store_data}
  final CredentialStoreData data;

  @override
  CredentialStoreStateType get type => CredentialStoreStateType.success;

  @override
  List<Object?> get props => [
        type,
        data,
      ];
}

/// {@template amplify_auth_cognito.credential_store_failure}
/// A failure saving/loading data from the credential store.
/// {@endtemplate}
final class CredentialStoreFailure extends CredentialStoreState
    with ErrorState {
  /// {@macro amplify_auth_cognito.credential_store_failure}
  const CredentialStoreFailure(this.exception, this.stackTrace) : super._();

  /// The exception thrown during credential storage.
  @override
  final Exception exception;

  @override
  final StackTrace stackTrace;

  @override
  CredentialStoreStateType get type => CredentialStoreStateType.failure;

  @override
  List<Object?> get props => [type, exception, stackTrace];
}

/// {@template amplify_auth_cognito_dart.credential_store_state.credential_store_data}
/// Data stored by the Credential Store.
/// {@endtemplate}
@zAmplifySerializable
class CredentialStoreData
    with
        AWSEquatable<CredentialStoreData>,
        AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_auth_cognito_dart.credential_store_state.credential_store_data}
  const CredentialStoreData({
    this.identityId,
    this.awsCredentials,
    this.userPoolTokens,
    this.signInDetails,
  });

  /// {@macro amplify_auth_cognito_dart.credential_store_state.credential_store_data}
  factory CredentialStoreData.fromJson(Map<String, Object?> json) =>
      _$CredentialStoreDataFromJson(json);

  /// AWS Identity ID
  final String? identityId;

  /// AWS Identity Pool credentials
  final AWSCredentials? awsCredentials;

  /// Cognito User Pool tokens
  final CognitoUserPoolTokens? userPoolTokens;

  /// Cognito sign-in details
  final CognitoSignInDetails? signInDetails;

  @override
  List<Object?> get props => [
        identityId,
        awsCredentials,
        userPoolTokens,
        signInDetails,
      ];

  @override
  Map<String, Object?> toJson() => _$CredentialStoreDataToJson(this);
}
