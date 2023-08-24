$version: "2"

namespace com.amazonaws.amplify.core

@documentation("The Amplify Storage category configuration.")
union StorageConfig {
    s3: StorageS3Config
}

@documentation("The Amplify Storage S3 plugin configuration.")
structure StorageS3Config {
    @required
    buckets: StorageS3Buckets
}

@documentation("The configuration for an AWS S3 bucket.")
structure StorageS3Bucket {
    @required
    bucketName: BucketName

    @required
    region: AWSRegion

    @required
    defaultAccessLevel: StorageAccessLevel = "guest"
}

list StorageS3Buckets {
    member: StorageS3Bucket
}

string BucketName

enum StorageAccessLevel {
    GUEST = "guest"
    PROTECTED = "protected"
    PRIVATE = "private"
}
