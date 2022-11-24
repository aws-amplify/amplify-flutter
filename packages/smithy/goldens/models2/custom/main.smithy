$version: "2.0"

namespace com.example.custom

use aws.api#service
use aws.protocols#restJson1
use aws.protocols#httpChecksum
use smithy.test#httpRequestTests
use smithy.test#httpResponseTests

@service(sdkId: "Custom Service")
@restJson1
service CustomService {
    operations: [
        HttpChecksumRequired,
        HttpChecksumRequiredWithMember,
        HttpChecksumNotRequiredWithMember,
        HttpChecksumReallyRequired,
        HttpChecksumReallyNotRequired,
        NestedCollections
    ]
}

@http(method: "POST", uri: "/required")
@httpChecksum(
    requestChecksumRequired: true
)
operation HttpChecksumRequired {
    input: HttpChecksumRequiredInput
}

@input
structure HttpChecksumRequiredInput {
    @httpPayload
    content: Blob
}

@http(method: "POST", uri: "/requiredWithMember")
@httpChecksum(
    requestChecksumRequired: true,
    requestAlgorithmMember: "checksumAlgorithm"
)
operation HttpChecksumRequiredWithMember {
    input: HttpChecksumRequiredWithMemberInput
}

@input
structure HttpChecksumRequiredWithMemberInput {
    @httpHeader("x-amz-request-algorithm")
    checksumAlgorithm: ChecksumAlgorithm

    @httpPayload
    content: Blob
}

@http(method: "POST", uri: "/notRequiredWithMember")
@httpChecksum(
    requestChecksumRequired: false,
    requestAlgorithmMember: "checksumAlgorithm"
)
operation HttpChecksumNotRequiredWithMember {
    input: HttpChecksumNotRequiredWithMemberInput
}

@input
structure HttpChecksumNotRequiredWithMemberInput {
    @httpHeader("x-amz-request-algorithm")
    checksumAlgorithm: ChecksumAlgorithm

    @httpPayload
    content: Blob
}

@documentation("""
Tests the behavior of @httpChecksum combined with @httpChecksumRequired as described 
[here](https://awslabs.github.io/smithy/2.0/aws/aws-core.html#behavior-with-httpchecksumrequired).
""")
@http(method: "POST", uri: "/reallyRequired")
@httpChecksum(
    requestChecksumRequired: true
)
@httpChecksumRequired
operation HttpChecksumReallyRequired {
    input: HttpChecksumReallyRequiredInput
}

@input
structure HttpChecksumReallyRequiredInput {
    @httpPayload
    content: Blob
}

@documentation("""
Tests the behavior of @httpChecksum combined with @httpChecksumRequired as described 
[here](https://awslabs.github.io/smithy/2.0/aws/aws-core.html#behavior-with-httpchecksumrequired).
""")
@http(method: "POST", uri: "/reallyNotRequired")
@httpChecksum(
    requestChecksumRequired: false
)
@httpChecksumRequired
operation HttpChecksumReallyNotRequired {
    input: HttpChecksumReallyNotRequiredInput
}

@input
structure HttpChecksumReallyNotRequiredInput {
    @httpPayload
    content: Blob
}

enum ChecksumAlgorithm {
    CRC32C
    CRC32
    SHA1
    SHA256
}

apply HttpChecksumRequired @httpRequestTests([
    {
        id: "HttpChecksumRequiredNoAlgorithm",
        documentation: "Adds an MD5 checksum when required and no algorithm is provided",
        protocol: restJson1,
        method: "POST",
        uri: "/required",
        body: "hello, world",
        bodyMediaType: "application/octet-stream",
        headers: {
            "Content-Type": "application/octet-stream",
            "Content-MD5": "5NfxtO0uQtFYmPSyewGdpA=="
        },
        forbidHeaders: [
            "x-amz-request-algorithm"
        ],
        params: {
            content: "hello, world"
        }
    }
])

apply HttpChecksumRequiredWithMember @httpRequestTests([
    {
        id: "HttpChecksumRequiredWithMemberNoAlgorithm",
        documentation: "Adds an MD5 checksum when required and no algorithm is provided",
        protocol: restJson1,
        method: "POST",
        uri: "/requiredWithMember",
        body: "hello, world",
        bodyMediaType: "application/octet-stream",
        headers: {
            "Content-Type": "application/octet-stream",
            "Content-MD5": "5NfxtO0uQtFYmPSyewGdpA=="
        },
        forbidHeaders: [
            "x-amz-request-algorithm"
        ],
        params: {
            content: "hello, world"
        }
    },
    {
        id: "HttpChecksumRequiredWithMemberWithSHA1",
        documentation: "Adds a SHA-1 checksum when that algorithm is provided",
        protocol: restJson1,
        method: "POST",
        uri: "/requiredWithMember",
        body: "hello, world",
        bodyMediaType: "application/octet-stream",
        headers: {
            "Content-Type": "application/octet-stream",
            "x-amz-checksum-sha1": "t+I+wpryKwtOQdox6GjVciYSHIQ=",
            "x-amz-request-algorithm": "SHA1"
        },
        params: {
            checksumAlgorithm: "SHA1",
            content: "hello, world"
        }
    },
    {
        id: "HttpChecksumRequiredWithMemberWithSHA256",
        documentation: "Adds a SHA-256 checksum when that algorithm is provided",
        protocol: restJson1,
        method: "POST",
        uri: "/requiredWithMember",
        body: "hello, world",
        bodyMediaType: "application/octet-stream",
        headers: {
            "Content-Type": "application/octet-stream",
            "x-amz-checksum-sha256": "Ccp+TqpuiunH0mEWcSkYSINkTQffuny/vEyKLgg2DVs=",
            "x-amz-request-algorithm": "SHA256"
        },
        params: {
            checksumAlgorithm: "SHA256",
            content: "hello, world"
        }
    },
    {
        id: "HttpChecksumRequiredWithMemberWithCRC32",
        documentation: "Adds a CRC32 checksum when that algorithm is provided",
        protocol: restJson1,
        method: "POST",
        uri: "/requiredWithMember",
        body: "hello, world",
        bodyMediaType: "application/octet-stream",
        headers: {
            "Content-Type": "application/octet-stream",
            "x-amz-checksum-crc32": "/6tyOg==",
            "x-amz-request-algorithm": "CRC32"
        },
        params: {
            checksumAlgorithm: "CRC32",
            content: "hello, world"
        }
    },
    {
        id: "HttpChecksumRequiredWithMemberWithSHA1",
        documentation: "Adds a CRC32C checksum when that algorithm is provided",
        protocol: restJson1,
        method: "POST",
        uri: "/requiredWithMember",
        body: "hello, world",
        bodyMediaType: "application/octet-stream",
        headers: {
            "Content-Type": "application/octet-stream",
            "x-amz-checksum-crc32c": "aZmkHw==",
            "x-amz-request-algorithm": "CRC32C"
        },
        params: {
            checksumAlgorithm: "CRC32C",
            content: "hello, world"
        }
    }
])

apply HttpChecksumNotRequiredWithMember @httpRequestTests([
    {
        id: "HttpChecksumNotRequiredWithMemberNoAlgorithm",
        documentation: "Adds no checksum when not required and no algorithm is provided",
        protocol: restJson1,
        method: "POST",
        uri: "/notRequiredWithMember",
        body: "hello, world",
        bodyMediaType: "application/octet-stream",
        headers: {
            "Content-Type": "application/octet-stream"
        },
        forbidHeaders: [
            "Content-MD5",
            "x-amz-request-algorithm"
        ],
        params: {
            content: "hello, world"
        }
    },
    {
        id: "HttpChecksumNotRequiredWithMemberWithSHA1",
        documentation: "Adds a SHA-1 checksum when that algorithm is provided",
        protocol: restJson1,
        method: "POST",
        uri: "/notRequiredWithMember",
        body: "hello, world",
        bodyMediaType: "application/octet-stream",
        headers: {
            "Content-Type": "application/octet-stream",
            "x-amz-checksum-sha1": "t+I+wpryKwtOQdox6GjVciYSHIQ=",
            "x-amz-request-algorithm": "SHA1"
        },
        params: {
            checksumAlgorithm: "SHA1",
            content: "hello, world"
        }
    }
])

apply HttpChecksumReallyRequired @httpRequestTests([
    {
        id: "HttpChecksumReallyRequiredNoAlgorithm",
        documentation: "Adds an MD5 checksum when required and no algorithm is provided",
        protocol: restJson1,
        method: "POST",
        uri: "/reallyRequired",
        body: "hello, world",
        bodyMediaType: "application/octet-stream",
        headers: {
            "Content-Type": "application/octet-stream",
            "Content-MD5": "5NfxtO0uQtFYmPSyewGdpA=="
        },
        forbidHeaders: [
            "x-amz-request-algorithm"
        ],
        params: {
            content: "hello, world"
        }
    }
])

apply HttpChecksumReallyNotRequired @httpRequestTests([
    {
        id: "HttpChecksumReallyNotRequiredNoAlgorithm",
        documentation: "Adds no checksum since @httpChecksumRequired supercedes @httpChecksum",
        protocol: restJson1,
        method: "POST",
        uri: "/reallyNotRequired",
        body: "hello, world",
        bodyMediaType: "application/octet-stream",
        headers: {
            "Content-Type": "application/octet-stream",
            "Content-MD5": "5NfxtO0uQtFYmPSyewGdpA=="
        },
        forbidHeaders: [
            "x-amz-request-algorithm"
        ],
        params: {
            content: "hello, world"
        }
    }
])
