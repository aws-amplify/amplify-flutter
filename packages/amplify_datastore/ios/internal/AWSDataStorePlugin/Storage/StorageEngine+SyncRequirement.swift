//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Combine
import Foundation
import AWSPluginsCore

extension StorageEngine {

    func startSync() -> Result<SyncEngineInitResult, DataStoreError> {
        let (result, syncEngine) = initalizeSyncEngine()

        if let syncEngine = syncEngine, !syncEngine.isSyncing() {
            guard let api = tryGetAPIPlugin() else {
               log.info("Unable to find suitable API plugin for syncEngine. syncEngine will not be started")
               return .failure(.configuration(
                   "Unable to find suitable API plugin for syncEngine. syncEngine will not be started",
                   "Ensure the API category has been setup and configured for your project",
                   nil
               ))
            }

            guard let apiGraphQL = api as? APICategoryGraphQLBehavior else {
                log.info("Unable to find GraphQL API plugin for syncEngine. syncEngine will not be started")
                return .failure(.configuration(
                    "Unable to find suitable GraphQL API plugin for syncEngine. syncEngine will not be started",
                    "Ensure the API category has been setup and configured for your project",
                    nil
                ))
            }

            let authPluginRequired = StorageEngine.requiresAuthPlugin(
                api,
                authModeStrategy: dataStoreConfiguration.authModeStrategyType
            )
            guard authPluginRequired else {
                syncEngine.start(api: apiGraphQL, auth: nil)
                return .success(.successfullyInitialized)
            }

            guard let auth = tryGetAuthPlugin() else {
                log.warn("Unable to find suitable Auth plugin for syncEngine. Models require auth")
                return .failure(.configuration(
                    "Unable to find suitable Auth plugin for syncEngine. Models require auth",
                    "Ensure the Auth category has been setup and configured for your project",
                    nil
                ))
            }

            syncEngine.start(api: apiGraphQL, auth: auth)
        }

        return .success(result)
    }

    private func initalizeSyncEngine() -> (SyncEngineInitResult, RemoteSyncEngineBehavior?) {
        if let syncEngine = syncEngine {
            return (.alreadyInitialized, syncEngine)
        } else {
            if isSyncEnabled, syncEngine == nil {
                self.syncEngine = try? RemoteSyncEngine(
                    storageAdapter: storageAdapter,
                    dataStoreConfiguration: dataStoreConfiguration
                )

                self.syncEngineSink = syncEngine?.publisher.sink(
                    receiveCompletion: onReceiveCompletion(receiveCompletion:),
                    receiveValue: onReceive(receiveValue:)
                )
            }
            return (.successfullyInitialized, syncEngine)
        }
    }

    /// Expresses whether the `StorageEngine` syncs from a remote source
    /// based on whether the `AWSAPIPlugin` is present.
    var syncsFromRemote: Bool {
        tryGetAPIPlugin() != nil
    }

    private func tryGetAPIPlugin() -> APICategoryPlugin? {
        do {
            return try Amplify.API.getPlugin(for: validAPIPluginKey)
        } catch {
            return nil
        }
    }

    private func tryGetAuthPlugin() -> AuthCategoryBehavior? {
        do {
            return try Amplify.Auth.getPlugin(for: validAuthPluginKey)
        } catch {
            return nil
        }
    }

    static func requiresAuthPlugin(
        _ apiPlugin: APICategoryPlugin,
        authModeStrategy: AuthModeStrategyType
    ) -> Bool {
        let modelsRequireAuthPlugin = ModelRegistry.modelSchemas.contains { schema in
            guard schema.isSyncable  else {
                return false
            }
            return requiresAuthPlugin(apiPlugin, 
                                      authRules: schema.authRules,
                                      authModeStrategy: authModeStrategy)
        }

        return modelsRequireAuthPlugin
    }

    static func requiresAuthPlugin(
        _ apiPlugin: APICategoryPlugin,
        authRules: [AuthRule],
        authModeStrategy: AuthModeStrategyType
    ) -> Bool {
        switch authModeStrategy {
        case .default:
            if authRules.isEmpty {
                return false
            }
            // Only use the auth rule as determination for auth plugin requirement when there is
            // exactly one. If there is more than one auth rule AND multi-auth is not enabled,
            // then immediately fall back to using the default auth type configured on the APIPlugin because
            // we do not have enough information to know which provider to use to make the determination.
            if authRules.count == 1,
               let singleAuthRule = authRules.first,
               let ruleRequireAuthPlugin = singleAuthRule.requiresAuthPlugin {
                return ruleRequireAuthPlugin
            }
        case .multiAuth:
            if let rulesRequireAuthPlugin = authRules.requireAuthPlugin {
                return rulesRequireAuthPlugin
            }
        }

        // Fall back to the endpoint's auth type if a determination cannot be made from the auth rules. This can
        // occur for older generation of the auth rules which do not have provider information such as the initial
        // single auth rule use cases. The auth type from the API is used to determine whether or not the auth
        // plugin is required.
        if let awsAPIAuthInfo = apiPlugin as? AWSAPIAuthInformation {
            do {
                return try awsAPIAuthInfo.defaultAuthType().requiresAuthPlugin
            } catch {
                log.error(error: error)
            }
        }

        log.warn("""
            Could not determine whether the auth plugin is required or not. The auth rules present
            may be missing provider information. When this happens, the API Plugin is used to determine
            whether the default auth type requires the auth plugin. The default auth type could not be determined.
        """)

        // If both checks above cannot determine if auth plugin is required, fallback to previous logic
        let apiAuthProvider = (apiPlugin as APICategoryAuthProviderFactoryBehavior).apiAuthProviderFactory()
        if apiAuthProvider.oidcAuthProvider() != nil {
            log.verbose("Found OIDC Auth Provider from the API Plugin.")
            return false
        }

        if apiAuthProvider.functionAuthProvider() != nil {
            log.verbose("Found Function Auth Provider from the API Plugin.")
            return false
        }

        // There are auth rules and no ODIC/Function providers on the API plugin, then return true.
        return true
    }
}

internal extension AuthRules {
    /// Convenience method to check whether we need Auth plugin
    /// - Returns: true  If **any** of the rules uses a provider that requires the Auth plugin, `nil` otherwise
    var requireAuthPlugin: Bool? {
        for rule in self {
            guard let requiresAuthPlugin = rule.requiresAuthPlugin else {
                return nil
            }
            if requiresAuthPlugin {
                return true
            }
        }
        return false
    }
}

internal extension AuthRule {
    var requiresAuthPlugin: Bool? {
        guard let provider = self.provider else {
            return nil
        }

        switch provider {
        // OIDC, Function and API key providers don't need
        // Auth plugin
        case .oidc, .function, .apiKey:
            return false
        case .userPools, .iam:
            return true
        }
    }
}
