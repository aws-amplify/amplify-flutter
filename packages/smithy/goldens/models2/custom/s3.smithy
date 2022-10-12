$version: "2.0"

metadata suppressions = [
    {
        id: "HttpMethodSemantics",
        namespace: "com.amazonaws.s3",
    },
    {
        id: "EnumTrait",
        namespace: "com.amazonaws.s3",
    },
    {
        id: "UnstableTrait",
        namespace: "com.amazonaws.s3"
    }
    {
        id: "HttpHeaderTrait",
        namespace: "com.amazonaws.s3"
    }
]

namespace com.amazonaws.s3

use aws.api#service
use aws.auth#sigv4
use aws.protocols#restXml
use aws.protocols#httpChecksum
use smithy.test#httpRequestTests
use smithy.test#httpResponseTests

@service(
    sdkId: "S3",
    arnNamespace: "s3",
    cloudFormationName: "S3",
    cloudTrailEventSource: "s3.amazonaws.com",
    endpointPrefix: "s3",
)
@sigv4(
    name: "s3",
)
@restXml(
    noErrorWrapping: true
)
@title("Amazon Simple Storage Service")
@xmlNamespace(
    uri: "http://s3.amazonaws.com/doc/2006-03-01/",
)
service AmazonS3 {
    version: "2006-03-01",
    operations: [
        GetObject,
    ],
}

@httpChecksum(
    requestValidationModeMember: "ChecksumMode",
    responseAlgorithms: [
        "CRC32",
        "CRC32C",
        "SHA256",
        "SHA1"
    ]
)
@http(method: "GET", uri: "/{Bucket}/{Key+}?x-id=GetObject", code: 200)
operation GetObject {
    input: GetObjectRequest,
    output: GetObjectOutput
}

structure GetObjectRequest {
    @httpLabel
    @required
    Bucket: String,
    
    @httpLabel
    @required
    Key: String,

    @httpHeader("Range")
    Range: String
}

@streaming
blob StreamingBlob

structure GetObjectOutput {
    @default("")
    @httpPayload
    Body: StreamingBlob,

    @httpHeader("Content-Length")
    ContentLength: Integer,

    @httpHeader("Content-Range")
    ContentRange: String
}

apply GetObject @httpResponseTests([
    {
        id: "GetObjectFullResponse",
        documentation: """
            S3 clients should properly decode a full response (as indicated by a 200 status code).
        """,
        code: 200,
        body: "hello, world",
        params: {
            "Body": "aGVsbG8sIHdvcmxk",
            "ContentLength": 12
        },
        headers: {
            "Content-Length": "12"
        },
        protocol: restXml
    },
    {
        id: "GetObjectPartialResponse",
        documentation: """
            S3 clients should properly decode a partial response (as indicated by a 206 status code).
        """,
        code: 206,
        body: "hello",
        params: {
            "Body": "aGVsbG8=",
            "ContentLength": 5,
            "ContentRange": "bytes 0-5/12"
        },
        headers: {
            "Content-Length": "5",
            "Content-Range": "bytes 0-5/12"
        },
        protocol: restXml
    }
])
