namespace com.test.deprecated

service Test {
    version: "1.0.0",
    operations: [GetFoo]
}

structure Qux { }

@deprecated
structure GetFooInput {
    foo: String,
    bar: String,

    @deprecated
    baz: Qux,
}

operation GetFoo {
    input: GetFooInput
}