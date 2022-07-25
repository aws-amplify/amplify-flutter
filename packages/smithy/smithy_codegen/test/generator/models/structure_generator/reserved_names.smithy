namespace com.test.reserved_names

service Test {
    version: "1.0.0",
    operations: [GetFoo]
}

@enum([
    {
        name: "index",
        value: "INDEX_"
    }
])
string Function

structure Type { }

structure Image { }

structure ImageBuilder { }

@http(method: "POST", uri: "/")
operation GetFoo {
    input: GetFooInput
}

structure GetFooInput {
    type: Type,
    build: ImageBuilder,
    update: Image,
    function: Function,
}