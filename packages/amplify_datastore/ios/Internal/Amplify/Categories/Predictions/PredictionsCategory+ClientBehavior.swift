//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension PredictionsCategory: PredictionsCategoryBehavior {
    public func identify<Output>(
        _ request: Predictions.Identify.Request<Output>,
        in image: URL,
        options: Predictions.Identify.Options? = nil
    ) async throws -> Output {
        try await plugin.identify(request, in: image, options: options)
    }

    public func convert<Input, Options, Output>(
        _ request: Predictions.Convert.Request<Input, Options, Output>,
        options: Options? = nil
    ) async throws -> Output {
        try await plugin.convert(request, options: options)
    }

    public func interpret(
        text: String,
        options: Predictions.Interpret.Options? = nil
    ) async throws -> Predictions.Interpret.Result {
        try await plugin.interpret(
            text: text,
            options: options
        )
    }
}
