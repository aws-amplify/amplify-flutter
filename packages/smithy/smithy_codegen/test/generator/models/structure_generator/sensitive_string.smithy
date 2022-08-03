/// Test: Handles the sensitive trait in toString()

$version: "1"
namespace com.test.sensitive_string

service Test {
    version: "1.0.0",
    operations: [GetFoo]
}

@sensitive
string Baz

structure Foo {
    bar: Baz,
    @documentation("Member documentation")
    baz: Baz,
    qux: String
}

operation GetFoo {
    input: GetFooInput
}

structure GetFooInput {
    enumMap: Foo
}