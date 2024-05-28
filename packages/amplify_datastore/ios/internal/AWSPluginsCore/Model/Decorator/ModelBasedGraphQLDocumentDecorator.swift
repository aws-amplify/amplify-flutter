//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify

public protocol ModelBasedGraphQLDocumentDecorator {

    @available(*, deprecated, message: """
    Decorating using Model.Type is deprecated, instead use modelSchema method.
    """)
    func decorate(_ document: SingleDirectiveGraphQLDocument,
                  modelType: Model.Type) -> SingleDirectiveGraphQLDocument

    func decorate(_ document: SingleDirectiveGraphQLDocument,
                  modelSchema: ModelSchema) -> SingleDirectiveGraphQLDocument
}
