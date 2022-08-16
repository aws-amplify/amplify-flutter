/// Test: Generates collection types for sparse maps with enum values

namespace com.test.sparse_enum_collection

service Test {
    version: "1.0.0",
    operations: [GetFoo]
}

@enum([
    {
        value: "rawValue1",
        name: "Variant1"
    },
    {
        value: "rawValue2",
        name: "Variant2"
    }
])
string MyEnum

@sparse
map EnumMap {
    key: String,
    value: MyEnum
}

operation GetFoo {
    input: GetFooInput
}

structure GetFooInput {
    enumMap: EnumMap
}