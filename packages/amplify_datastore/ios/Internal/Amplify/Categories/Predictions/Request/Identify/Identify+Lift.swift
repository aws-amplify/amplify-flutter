//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Predictions.Identify.Request.Kind {
    public struct Lift<
        SpecificOutput,
        GenericOutput
    > {
        public let outputSpecificToGeneric: (SpecificOutput) -> GenericOutput
        public let outputGenericToSpecific: (GenericOutput) -> SpecificOutput
    }
}

extension Predictions.Identify.Request.Kind.Lift where GenericOutput == SpecificOutput {
    static var lift: Self {
        .init(
            outputSpecificToGeneric: { $0 },
            outputGenericToSpecific: { $0 }
        )
    }
}
