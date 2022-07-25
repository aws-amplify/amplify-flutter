/// Test: Generates collection types for maps with enum values

$version: "1"
namespace com.test.enum_collection

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