//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify

public typealias IdentityClaimsDictionary = [String: AnyObject]

public enum AuthRuleDecoratorInput {
    case subscription(GraphQLSubscriptionType, IdentityClaimsDictionary?)
    case mutation
    case query
}

// Tracking issue: https://github.com/aws-amplify/amplify-cli/issues/4182 Once this issue is resolved, the behavior and
// the interface is expected to change. Subscription operations should not need to take in any owner fields in the
// document input, similar to how the mutations operate. For now, the provisioned backend requires owner field for
// the subscription operation corresponding to the operation defined on the auth rule. For example,
// @auth(rules: [ { allow: owner, operations: [create, delete] } ])
// contains create and delete, therefore the onCreate and onDelete subscriptions require the owner field, but not the
// onUpdate subscription.

/// Decorate the document with auth related fields. For `owner` strategy, fields include:
/// * add the value of `ownerField` to the model selection set, defaults "owner" when `ownerField` is not specified
/// * owner field value for subscription document inputs for the corresponding auth rule `operation`
public struct AuthRuleDecorator: ModelBasedGraphQLDocumentDecorator {

    private let input: AuthRuleDecoratorInput
    private let authType: AWSAuthorizationType?

    /// Initializes a new AuthRuleDecorator
    /// - Parameters:
    ///   - authRuleDecoratorInput: decorator input
    ///   - authType: authentication type, if provided will be used to filter the auth rules based on the provider field.
    ///               Only use when multi-auth is enabled.
    public init(_ authRuleDecoratorInput: AuthRuleDecoratorInput,
                authType: AWSAuthorizationType? = nil) {
        self.input = authRuleDecoratorInput
        self.authType = authType
    }

    public func decorate(_ document: SingleDirectiveGraphQLDocument,
                         modelType: Model.Type) -> SingleDirectiveGraphQLDocument {
        decorate(document, modelSchema: modelType.schema)
    }

    public func decorate(_ document: SingleDirectiveGraphQLDocument,
                         modelSchema: ModelSchema) -> SingleDirectiveGraphQLDocument {
        let authRules = modelSchema.authRules
                    .filterBy(authType: authType)
                    .filterBy(ownerFieldType: .string, modelSchema: modelSchema)
        guard !authRules.isEmpty else {
            return document
        }
        var decorateDocument = document

        let readRestrictingStaticGroups = authRules.groupClaimsToReadRestrictingStaticGroups()
        authRules.forEach { authRule in
            decorateDocument = decorateAuthStrategy(document: decorateDocument,
                                                    authRule: authRule,
                                                    readRestrictingStaticGroups: readRestrictingStaticGroups)
        }
        return decorateDocument
    }

    private func decorateAuthStrategy(document: SingleDirectiveGraphQLDocument,
                                      authRule: AuthRule,
                                      readRestrictingStaticGroups: [String: Set<String>]) -> SingleDirectiveGraphQLDocument {
        guard authRule.allow == .owner,
            var selectionSet = document.selectionSet else {
            return document
        }

        let ownerField = authRule.getOwnerFieldOrDefault()
        selectionSet = appendOwnerFieldToSelectionSetIfNeeded(selectionSet: selectionSet, ownerField: ownerField)

        if case let .subscription(_, claims) = input,
           let tokenClaims = claims,
            authRule.isReadRestrictingOwner() &&
                isNotInReadRestrictingStaticGroup(jwtTokenClaims: tokenClaims,
                                                  readRestrictingStaticGroups: readRestrictingStaticGroups) {
            var inputs = document.inputs
            let identityClaimValue = resolveIdentityClaimValue(identityClaim: authRule.identityClaimOrDefault(),
                                                               claims: tokenClaims)
            if let identityClaimValue = identityClaimValue {
                inputs[ownerField] = GraphQLDocumentInput(type: "String!", value: .scalar(identityClaimValue))
            }
            return document.copy(inputs: inputs, selectionSet: selectionSet)
        }

        // TODO: Subscriptions always require an `owner` field.
        //       We're sending an invalid owner value to receive a proper response from AppSync,
        //       when there's no authenticated user.
        //       We should be instead failing early and don't send the request.
        //       See: https://github.com/aws-amplify/amplify-ios/issues/1291
        if case let .subscription(_, claims) = input, authRule.isReadRestrictingOwner(), claims == nil {
            var inputs = document.inputs
            inputs[ownerField] = GraphQLDocumentInput(type: "String!", value: .scalar(""))
            return document.copy(inputs: inputs, selectionSet: selectionSet)
        }

        return document.copy(selectionSet: selectionSet)
    }

    private func isNotInReadRestrictingStaticGroup(jwtTokenClaims: IdentityClaimsDictionary,
                                                   readRestrictingStaticGroups: [String: Set<String>]) -> Bool {
        for (groupClaim, readRestrictingStaticGroupsPerClaim) in readRestrictingStaticGroups {
            let groupsFromClaim = groupsFrom(jwtTokenClaims: jwtTokenClaims, groupClaim: groupClaim)
            let doesNotBelongToGroupsFromClaim = readRestrictingStaticGroupsPerClaim.isEmpty ||
                readRestrictingStaticGroupsPerClaim.isDisjoint(with: groupsFromClaim)
            if doesNotBelongToGroupsFromClaim {
                continue
            } else {
                return false
            }
        }
        return true
    }

    private func groupsFrom(jwtTokenClaims: IdentityClaimsDictionary,
                            groupClaim: String) -> Set<String> {
        var groupSet = Set<String>()
        if let groups = (jwtTokenClaims[groupClaim] as? NSArray) as Array? {
            for group in groups {
                if let groupString = group as? String {
                    groupSet.insert(groupString)
                }
            }
        }
        return groupSet
    }

    private func resolveIdentityClaimValue(identityClaim: String, claims: IdentityClaimsDictionary) -> String? {
        guard let identityValue = claims[identityClaim] as? String else {
            log.error("""
                Attempted to subscribe to a model with owner based authorization without \(identityClaim)
                which was specified (or defaulted to) as the identity claim.
                """)
            return nil
        }
        return identityValue
    }

    /// First finds the first `model` SelectionSet. Then, only append it when the `ownerField` does not exist.
    private func appendOwnerFieldToSelectionSetIfNeeded(selectionSet: SelectionSet,
                                                        ownerField: String) -> SelectionSet {
        var selectionSetModel = selectionSet
        while selectionSetModel.value.fieldType != .model {
            selectionSetModel.children.forEach { selectionSet in
                if selectionSet.value.fieldType == .model {
                    selectionSetModel = selectionSet
                }
            }

        }

        let containersOwnerField =  selectionSetModel.children.contains { (field) -> Bool in
            if let fieldName = field.value.name, fieldName == ownerField {
                return true
            }
            return false
        }
        if !containersOwnerField {
            let child = SelectionSet(value: .init(name: ownerField, fieldType: .value))
            selectionSetModel.children.append(child)
        }

        return selectionSet
    }
}

private extension AuthRule {
    func ownerField(inSchema schema: ModelSchema) -> ModelField? {
        guard let fieldName = self.ownerField else {
            return nil
        }
        return schema.field(withName: fieldName)
    }
}

private extension AuthRules {
    func filterBy(authType: AWSAuthorizationType?) -> AuthRules {
        guard let authType = authType else {
            return self
        }

        return filter {
            guard let provider = $0.provider else {
                // if an authType is available but not a provider
                // means DataStore is using multi-auth with an outdated
                // version of models (prior to codegen v2.26.0).
                return true
            }
            return authType == provider.toAWSAuthorizationType()
        }
    }

    func filterBy(ownerFieldType: ModelFieldType,
                  modelSchema: ModelSchema) -> AuthRules {
        return filter {
            guard let modelField = $0.ownerField(inSchema: modelSchema) else {
                // if we couldn't find the owner field means it has been implicitly
                // declared in the model schema, therefore has the correct type "string"
                return true
            }
            if case .string = modelField.type {
                return true
            }
            return false
        }
    }
}

extension AuthRuleDecorator: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.auth.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}
