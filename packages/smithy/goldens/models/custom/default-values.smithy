$version: "2.0"

namespace com.example.custom

use aws.protocols#restJson1
use smithy.test#httpRequestTests
use smithy.test#httpResponseTests

// Tests that the `@default` trait is handled correctly when applied with `@required` and `@clientOptional`.
//
// See also:
// - https://smithy.io/2.0/spec/type-refinement-traits.html
// - https://github.com/smithy-lang/smithy/blob/main/designs/defaults-and-model-evolution.md
//
// TODO(dnys1): Add `@clientOptional` tests
@http(method: "POST", uri: "/default")
operation DefaultValues {
    input: DefaultValuesInput
    output: DefaultValuesOutput
}

@default(42)
integer DefaultInt

@default("default")
string DefaultString

@default(true)
boolean DefaultBool

@default("A")
enum DefaultEnum { A, B, C }

@default([])
list DefaultList { 
    member: String 
}

@default({})
map DefaultMap {
    key: String
    value: String
}

@mixin
structure DefaultValuesBase {
    @required
    requiredDefaultInt: DefaultInt = 42
    optionalDefaultInt: DefaultInt = 42
    nullifiedDefaultInt: DefaultInt = null

    @required
    requiredDefaultString: DefaultString = "default"
    optionalDefaultString: DefaultString = "default"
    nullifiedDefaultString: DefaultString = null

    @required
    requiredDefaultEnum: DefaultEnum = "A"
    optionalDefaultEnum: DefaultEnum = "A"
    nullifiedDefaultEnum: DefaultEnum = null

    @required
    requiredDefaultList: DefaultList = []
    optionalDefaultList: DefaultList = []
    nullifiedDefaultList: DefaultList = null

    @required
    requiredDefaultMap: DefaultMap = {}
    optionalDefaultMap: DefaultMap = {}
    nullifiedDefaultMap: DefaultMap = null

    @required
    requiredDefaultBool: DefaultBool = true
    optionalDefaultBool: DefaultBool = true
    nullifiedDefaultBool: DefaultBool = null
}

@input
structure DefaultValuesInput with [DefaultValuesBase] {}

@output
structure DefaultValuesOutput with [DefaultValuesBase] {}

apply DefaultValues @httpRequestTests([
    {
        id: "DefaultValuesRequestSerialization",
        documentation: "Default values SHOULD be serialized and MUST be when @required",
        protocol: restJson1,
        method: "POST",
        uri: "/default",
        body: """
        {
            "requiredDefaultInt": 42,
            "optionalDefaultInt": 42,
            "requiredDefaultString": "default",
            "optionalDefaultString": "default",
            "requiredDefaultEnum": "A",
            "optionalDefaultEnum": "A",
            "requiredDefaultList": [],
            "optionalDefaultList": [],
            "requiredDefaultMap": {},
            "optionalDefaultMap": {},
            "requiredDefaultBool": true,
            "optionalDefaultBool": true
        }
        """
        bodyMediaType: "application/json",
        params: {
            // Members which are `@required` be passed for `@httpRequestTests` validation to succeed 
            // with IDL analyzer.
            requiredDefaultInt: null,
            requiredDefaultString: null,
            requiredDefaultEnum: null,
            requiredDefaultList: null,
            requiredDefaultMap: null,
            requiredDefaultBool: null
        }
    }
])

apply DefaultValues @httpResponseTests([
    {
        id: "DefaultValuesResponseSerialization",
        documentation: "Default values SHOULD be serialized and MUST be when @required",
        protocol: restJson1,
        code: 200,
        body: """
        {
            "requiredDefaultInt": 42,
            "requiredDefaultString": "default",
            "requiredDefaultEnum": "A",
            "requiredDefaultList": [],
            "requiredDefaultMap": {},
            "requiredDefaultBool": true
        }
        """
        bodyMediaType: "application/json",
        params: {
            requiredDefaultInt: 42,
            optionalDefaultInt: 42,
            nullifiedDefaultInt: null,
            requiredDefaultString: "default",
            optionalDefaultString: "default",
            nullifiedDefaultString: null,
            requiredDefaultEnum: "A",
            optionalDefaultEnum: "A",
            nullifiedDefaultEnum: null,
            requiredDefaultList: [],
            optionalDefaultList: [],
            nullifiedDefaultList: null,
            requiredDefaultMap: {},
            optionalDefaultMap: {},
            nullifiedDefaultMap: null,
            requiredDefaultBool: true,
            optionalDefaultBool: true,
            nullifiedDefaultBool: null
        }
    }
])
