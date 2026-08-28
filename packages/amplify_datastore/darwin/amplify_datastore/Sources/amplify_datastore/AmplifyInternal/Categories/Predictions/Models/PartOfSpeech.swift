//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Predictions {
    /// Part of speech identified in a text from interpret() API
    public struct PartOfSpeech: Equatable {
        let description: String

        public static let adjective = Self(description: "adjective")
        public static let adposition = Self(description: "adposition")
        public static let adverb = Self(description: "adverb")
        public static let auxiliary = Self(description: "auxiliary")
        public static let conjunction = Self(description: "conjunction")
        public static let coordinatingConjunction = Self(description: "coordinatingConjunction")
        public static let determiner = Self(description: "determiner")
        public static let interjection = Self(description: "interjection")
        public static let noun = Self(description: "noun")
        public static let numeral = Self(description: "numeral")
        public static let other = Self(description: "other")
        public static let particle = Self(description: "particle")
        public static let pronoun = Self(description: "pronoun")
        public static let properNoun = Self(description: "properNoun")
        public static let punctuation = Self(description: "punctuation")
        public static let preposition = Self(description: "preposition")
        public static let subordinatingConjunction = Self(description: "subordinatingConjunction")
        public static let symbol = Self(description: "symbol")
        public static let verb = Self(description: "verb")
        public static let unknown = Self(description: "unknown")
    }
}
