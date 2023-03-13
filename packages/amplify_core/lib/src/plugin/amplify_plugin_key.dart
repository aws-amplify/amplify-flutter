// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.plugin.amplify_plugin_key}
/// A plugin identifier which can be passed to a category's `getPlugin` method
/// to retrieve a plugin-specific category wrapper.
/// {@endtemplate}
abstract class AmplifyPluginKey<P extends AmplifyPluginInterface>
    with AWSDebuggable {
  /// {@macro amplify_core.plugin.amplify_plugin_key}
  const AmplifyPluginKey();
}

/// {@template amplify_core.plugin.auth_plugin_key}
/// A plugin identifier which can be passed to the Auth category's `getPlugin`
/// method to retrieve a plugin-specific Auth category wrapper.
/// {@endtemplate}
abstract class AuthPluginKey<
    PluginAuthUser extends AuthUser,
    PluginUserAttributeKey extends AuthUserAttributeKey,
    PluginAuthUserAttribute extends AuthUserAttribute<PluginUserAttributeKey>,
    PluginAuthDevice extends AuthDevice,
    PluginSignUpResult extends SignUpResult,
    PluginConfirmSignUpResult extends SignUpResult,
    PluginResendSignUpCodeResult extends ResendSignUpCodeResult,
    PluginSignInResult extends SignInResult<PluginUserAttributeKey>,
    PluginConfirmSignInResult extends SignInResult<PluginUserAttributeKey>,
    PluginSignOutResult extends SignOutResult,
    PluginUpdatePasswordResult extends UpdatePasswordResult,
    PluginResetPasswordResult extends ResetPasswordResult,
    PluginConfirmResetPasswordOptions extends ConfirmResetPasswordOptions,
    PluginConfirmResetPasswordResult extends ResetPasswordResult,
    PluginAuthUserOptions extends AuthUserOptions,
    PluginAuthSessionOptions extends AuthSessionOptions,
    PluginAuthSession extends AuthSession,
    PluginSignInWithWebUIResult extends SignInResult<PluginUserAttributeKey>,
    PluginUpdateUserAttributeResult extends UpdateUserAttributeResult,
    PluginConfirmUserAttributeResult extends ConfirmUserAttributeResult,
    PluginResendUserAttributeConfirmationCodeResult extends ResendUserAttributeConfirmationCodeResult,
    P extends AuthPluginInterface<
        PluginAuthUser,
        PluginUserAttributeKey,
        PluginAuthUserAttribute,
        PluginAuthDevice,
        PluginSignUpResult,
        PluginConfirmSignUpResult,
        PluginResendSignUpCodeResult,
        PluginSignInResult,
        PluginConfirmSignInResult,
        PluginSignOutResult,
        PluginUpdatePasswordResult,
        PluginResetPasswordResult,
        PluginConfirmResetPasswordOptions,
        PluginConfirmResetPasswordResult,
        PluginAuthUserOptions,
        PluginAuthSessionOptions,
        PluginAuthSession,
        PluginSignInWithWebUIResult,
        PluginUpdateUserAttributeResult,
        PluginConfirmUserAttributeResult,
        PluginResendUserAttributeConfirmationCodeResult>> extends AmplifyPluginKey<
    P> {
  /// {@macro amplify_core.plugin.auth_plugin_key}
  const AuthPluginKey();
}

abstract class StoragePluginKey<
    PluginStorageListOperation extends StorageListOperation,
    PluginStorageListOptions extends StorageListOptions,
    PluginStorageGetPropertiesOperation extends StorageGetPropertiesOperation,
    PluginStorageGetPropertiesOptions extends StorageGetPropertiesOptions,
    PluginStorageGetUrlOperation extends StorageGetUrlOperation,
    PluginStorageGetUrlOptions extends StorageGetUrlOptions,
    PluginStorageUploadDataOperation extends StorageUploadDataOperation,
    PluginStorageUploadDataOptions extends StorageUploadDataOptions,
    PluginStorageUploadFileOperation extends StorageUploadFileOperation,
    PluginStorageUploadFileOptions extends StorageUploadFileOptions,
    PluginStorageDownloadDataOperation extends StorageDownloadDataOperation,
    PluginStorageDownloadDataOptions extends StorageDownloadDataOptions,
    PluginStorageDownloadFileOperation extends StorageDownloadFileOperation,
    PluginStorageDownloadFileOptions extends StorageDownloadFileOptions,
    PluginStorageCopyOperation extends StorageCopyOperation,
    PluginStorageCopyOptions extends StorageCopyOptions,
    PluginStorageMoveOperation extends StorageMoveOperation,
    PluginStorageMoveOptions extends StorageMoveOptions,
    PluginStorageRemoveOperation extends StorageRemoveOperation,
    PluginStorageRemoveOptions extends StorageRemoveOptions,
    PluginStorageRemoveManyOperation extends StorageRemoveManyOperation,
    PluginStorageRemoveManyOptions extends StorageRemoveManyOptions,
    PluginStorageItem extends StorageItem,
    PluginTransferProgress extends StorageTransferProgress,
    P extends StoragePluginInterface<
        PluginStorageListOperation,
        PluginStorageListOptions,
        PluginStorageGetPropertiesOperation,
        PluginStorageGetPropertiesOptions,
        PluginStorageGetUrlOperation,
        PluginStorageGetUrlOptions,
        PluginStorageUploadDataOperation,
        PluginStorageUploadDataOptions,
        PluginStorageUploadFileOperation,
        PluginStorageUploadFileOptions,
        PluginStorageDownloadDataOperation,
        PluginStorageDownloadDataOptions,
        PluginStorageDownloadFileOperation,
        PluginStorageDownloadFileOptions,
        PluginStorageCopyOperation,
        PluginStorageCopyOptions,
        PluginStorageMoveOperation,
        PluginStorageMoveOptions,
        PluginStorageRemoveOperation,
        PluginStorageRemoveOptions,
        PluginStorageRemoveManyOperation,
        PluginStorageRemoveManyOptions,
        PluginStorageItem,
        PluginTransferProgress>> extends AmplifyPluginKey<P> {
  const StoragePluginKey();
}
