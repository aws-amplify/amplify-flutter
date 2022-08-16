/// Test: Handles shape and member docs

namespace com.test.documentation

@title("Test Service")
@externalDocumentation(
    "Homepage": "https://www.example.com/",
    "API Reference": "https://www.example.com/api-ref",
)
service Test {
    version: "1.0.0",
    operations: [GetFoo]
}

structure GetFooInput {
    @documentation("Member documentation")
    baz: Baz,

    bar: Baz,


    qux: String
}

@documentation("Shape documentation")
string Baz

@http(method: "POST", uri: "/", code: 200)
operation GetFoo {
    input: GetFooInput,
    errors: [GetFooError]
}

@error("client")
structure GetFooError {
    @required
    @documentation("The error message returned from the server")
    message: String
}

apply GetFoo @examples([
    {
        title: "Invoke GetFoo",
        input: {
            baz: "baz",
            bar: "bar",
        }
    },
    {
        title: "Error example for GetFoo",
        input: {
            bar: "baz",
        },
        error: {
            shapeId: GetFooError,
            content: {
                message: "Invalid 'bar'",
            }
        }
    },
])