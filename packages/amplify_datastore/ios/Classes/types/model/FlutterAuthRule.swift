/*
* Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

import Foundation
import Amplify

public struct FlutterAuthRule {
    
    private var authStrategy : String
    private let ownerField : String?
    private let identityClaim : String?
    private let groupClaim : String?
    private let groups : [String]?
    private let groupsField : String?
    private let provider: String?
    private var operations : [String]?
    
    init(serializedData: [String: Any]) throws {

        guard let authStrategy = serializedData["authStrategy"] as? String
        else {
            throw ModelSchemaError.parse(
                className: "FlutterAuthRule",
                fieldName: "authStrategy",
                desiredType: "String")
        }

        self.authStrategy = authStrategy
        
        self.ownerField = serializedData["ownerField"] as? String

        self.identityClaim = serializedData["identityClaim"] as? String
        
        self.groupClaim = serializedData["groupClaim"] as? String
        
        self.groups = serializedData["groups"] as? [String]
        
        self.groupsField = serializedData["groupsField"] as? String

        self.provider = serializedData["provider"] as? String

        self.operations = serializedData["operations"] as? [String]
    }
    
    private func stringToAuthStrategy(authStrategyString: String) -> AuthStrategy{
        switch authStrategyString {
            case "OWNER":
                return AuthStrategy.owner
            case "GROUPS":
                return AuthStrategy.groups
            case "PRIVATE":
                return AuthStrategy.private
            case "PUBLIC":
                return AuthStrategy.public
            default:
                preconditionFailure("Could not create a AuthStrategy from \(authStrategyString)")
        }
    }

    private func stringToAuthProvider(providerString: String?) -> AuthRuleProvider? {
        switch providerString {
        case "APIKEY":
            return AuthRuleProvider.apiKey
        case "OIDC":
            return AuthRuleProvider.oidc
        case "IAM":
            return AuthRuleProvider.iam
        case "USERPOOLS":
            return AuthRuleProvider.userPools
        case "FUNCTION":
            return AuthRuleProvider.function
        default:
            return nil
        }
    }
    
    private func stringToModelOperation(modelOperationString: String) -> ModelOperation{
        switch modelOperationString {
            case "CREATE":
                return ModelOperation.create
            case "UPDATE":
                return ModelOperation.update
            case "DELETE":
                return ModelOperation.delete
            case "READ":
                return ModelOperation.read
            default:
            preconditionFailure("Could not create a ModelOperation from \(modelOperationString)")
        }
    }
    
    public func convertToNativeAuthRule() -> AuthRule{
        return AuthRule(
            allow: stringToAuthStrategy(authStrategyString: authStrategy),
            ownerField: ownerField,
            identityClaim: identityClaim,
            groupClaim: groupClaim,
            groups: groups ?? [String](),
            groupsField: groupsField,
            provider: stringToAuthProvider(providerString: provider),
            operations: (operations)?.map {
                stringToModelOperation(modelOperationString: $0)
            } ?? [ModelOperation]()
        )
    }
    
}
