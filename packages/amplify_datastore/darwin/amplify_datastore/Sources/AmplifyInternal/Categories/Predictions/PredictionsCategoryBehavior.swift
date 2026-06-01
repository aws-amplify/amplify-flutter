//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Behavior of the Predictions category that clients will use
public protocol PredictionsCategoryBehavior {

    /// Detect contents of an image based on `IdentifyAction`
    /// - Parameter type: The type of image detection you want to perform
    /// - Parameter image: The image you are sending
    /// - Parameter options: Parameters to specific plugin behavior
    /// - Parameter listener: Triggered when the event occurs
    func identify<Output>(
        _ request: Predictions.Identify.Request<Output>,
        in image: URL,
        options: Predictions.Identify.Options?
    ) async throws -> Output

    ///
    /// - Parameters:
    ///   - request:
    ///   - options:
    /// - Returns:
    func convert<Input, Options, Output>(
        _ request: Predictions.Convert.Request<Input, Options, Output>,
        options: Options?
    ) async throws -> Output

    /// Interpret the text and return sentiment analysis, entity detection, language detection,
    /// syntax detection, key phrases detection
    /// - Parameter text: Text to interpret
    /// - Parameter options:Parameters to specific plugin behavior
    /// - Parameter options:Parameters to specific plugin behavior
    func interpret(
        text: String,
        options: Predictions.Interpret.Options?
    ) async throws -> Predictions.Interpret.Result
}
