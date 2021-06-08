/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
import amplify_core

func validateUserAttribute(attribute: Dictionary<String, Any>, validationErrorMessage: String) throws {
    if (attribute["userAttributeKey"] == nil) {
        throw InvalidRequestError.auth(comment: validationErrorMessage, suggestion: String(format: ErrorMessages.missingAttribute, "userAttributeKey"))
    } else if (attribute["value"] == nil) {
        throw InvalidRequestError.auth(comment: validationErrorMessage, suggestion: String(format: ErrorMessages.missingAttribute, "value"))
    } else if (!(attribute["value"] is String)) {
        // iOS SDK expects a string for user attr values, regardless of the configuration in cognito
        throw InvalidRequestError.auth(comment: validationErrorMessage, suggestion: "Attribute value is not a String.")
    }
}
