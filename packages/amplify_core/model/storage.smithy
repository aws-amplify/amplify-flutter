$version: "2"

namespace com.amazonaws.amplify.core

union AWSStorageConfig {
    s3: AWSStorageS3Config
}

structure AWSStorageS3Config {
    @required
    buckets: AWSStorageS3Buckets
}

structure AWSStorageS3Bucket {
    @required
    bucketName: BucketName

    @required
    region: AWSRegion

    @required
    defaultAccessLevel: AWSStorageAccessLevel = "guest"
}

map AWSStorageS3Buckets {
    key: BucketName
    value: AWSStorageS3Bucket
}

string BucketName

enum AWSStorageAccessLevel {
    GUEST = "guest"
    PROTECTED = "protected"
    PRIVATE = "private"
}
