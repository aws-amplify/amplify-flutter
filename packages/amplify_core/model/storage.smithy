$version: "2"

namespace com.amazonaws.amplify.core

@documentation("The Amplify Storage category configuration.")
union AWSStorageConfig {
    s3: AWSStorageS3Config
}

@documentation("The Amplify Storage S3 plugin configuration.")
structure AWSStorageS3Config {
    @required
    buckets: AWSStorageS3Buckets
}

@documentation("The configuration for an AWS S3 bucket.")
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
