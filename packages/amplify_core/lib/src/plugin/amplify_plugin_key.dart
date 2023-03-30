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
    PluginConfirmResetPasswordResult extends ResetPasswordResult,
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
        PluginConfirmResetPasswordResult,
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
    PluginStorageGetPropertiesOperation extends StorageGetPropertiesOperation,
    PluginStorageGetUrlOperation extends StorageGetUrlOperation,
    PluginStorageUploadDataOperation extends StorageUploadDataOperation,
    PluginStorageUploadFileOperation extends StorageUploadFileOperation,
    PluginStorageDownloadDataOperation extends StorageDownloadDataOperation,
    PluginStorageDownloadFileOperation extends StorageDownloadFileOperation,
    PluginStorageCopyOperation extends StorageCopyOperation,
    PluginStorageMoveOperation extends StorageMoveOperation,
    PluginStorageRemoveOperation extends StorageRemoveOperation,
    PluginStorageRemoveManyOperation extends StorageRemoveManyOperation,
    PluginStorageItem extends StorageItem,
    PluginTransferProgress extends StorageTransferProgress,
    P extends StoragePluginInterface<
        PluginStorageListOperation,
        PluginStorageGetPropertiesOperation,
        PluginStorageGetUrlOperation,
        PluginStorageUploadDataOperation,
        PluginStorageUploadFileOperation,
        PluginStorageDownloadDataOperation,
        PluginStorageDownloadFileOperation,
        PluginStorageCopyOperation,
        PluginStorageMoveOperation,
        PluginStorageRemoveOperation,
        PluginStorageRemoveManyOperation,
        PluginStorageItem,
        PluginTransferProgress>> extends AmplifyPluginKey<P> {
  const StoragePluginKey();
}
