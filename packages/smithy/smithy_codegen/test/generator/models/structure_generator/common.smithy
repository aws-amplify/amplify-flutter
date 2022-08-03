namespace com.test.common

service Test {
    version: "1.0.0",
    operations: [GetFoo]
}

structure Qux { }

@documentation("This *is* documentation about the shape.")
structure GetFooInput {
    foo: String,
    object: String,
    @documentation("This *is* documentation about the member.")
    bar: PrimitiveInteger,
    baz: Integer,
    Quux: Qux,
    @required
    byteValue: Byte
}

operation GetFoo {
    input: GetFooInput
}
