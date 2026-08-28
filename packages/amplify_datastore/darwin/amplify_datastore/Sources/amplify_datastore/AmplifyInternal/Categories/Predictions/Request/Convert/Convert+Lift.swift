//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Predictions.Convert.Request.Kind {
    @_spi(PredictionsConvertRequestKind)
    public struct Lift<
        SpecificInput,
        GenericInput,
        SpecificOptions,
        GenericOptions,
        SpecificOutput,
        GenericOutput
    > {
        public let inputSpecificToGeneric: (SpecificInput) -> GenericInput
        public let inputGenericToSpecific: (GenericInput) -> SpecificInput
        public let optionsSpecificToGeneric: (SpecificOptions) -> GenericOptions
        public let optionsGenericToSpecific: (GenericOptions) -> SpecificOptions
        public let outputSpecificToGeneric: (SpecificOutput) -> GenericOutput
        public let outputGenericToSpecific: (GenericOutput) -> SpecificOutput
    }
}

extension Predictions.Convert.Request.Kind.Lift where
GenericInput == SpecificInput,
GenericOptions == SpecificOptions,
GenericOutput == SpecificOutput {
    static var lift: Self {
        .init(
            inputSpecificToGeneric: { $0 },
            inputGenericToSpecific: { $0 },
            optionsSpecificToGeneric: { $0 },
            optionsGenericToSpecific: { $0 },
            outputSpecificToGeneric: { $0 },
            outputGenericToSpecific: { $0 }
        )
    }
}
