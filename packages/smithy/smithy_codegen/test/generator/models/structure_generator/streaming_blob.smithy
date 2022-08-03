/// Test: Blobs (with and without streaming) require special attention in == and hashCode implementations

namespace com.test.streaming_blob

service Test {
    version: "1.0.0",
    operations: [GetFoo]
}

@streaming
blob BlobStream

structure GetFooInput {
    foo: Blob,
    bar: BlobStream
}

operation GetFoo {
    input: GetFooInput
}