import { defineBackend } from "@aws-amplify/backend";
import * as s3 from "aws-cdk-lib/aws-s3";
import { auth } from "./auth/resource";
import { firstBucket, secondBucket } from "./storage/resource";

/**
 * @see https://docs.amplify.aws/react/build-a-backend/ to add storage, functions, and more
 */
const backend = defineBackend({
  auth,
  firstBucket,
  secondBucket,
});

// custom storage configurations
const s3Bucket = backend.firstBucket.resources.bucket;
const cfnBucket = s3Bucket.node.defaultChild as s3.CfnBucket;
const s3SecondaryBucket = backend.secondBucket.resources.bucket;
const cfnSecondaryBucket = s3SecondaryBucket.node.defaultChild as s3.CfnBucket;

cfnBucket.accelerateConfiguration = {
  accelerationStatus: "Enabled",
};

cfnSecondaryBucket.accelerateConfiguration = {
  accelerationStatus: "Enabled",
};

// required to add the metadata header, which amplify-backend does not support
backend.firstBucket.resources.cfnResources.cfnBucket.corsConfiguration = {
  corsRules: [
    {
      allowedHeaders: ["*"],
      allowedMethods: ["GET", "HEAD", "PUT", "POST", "DELETE"],
      allowedOrigins: ["*"],
      exposedHeaders: [
        "x-amz-server-side-encryption",
        "x-amz-request-id",
        "x-amz-id-2",
        "ETag",
        "x-amz-meta-description",
      ],
      maxAge: 3000,
    },
  ],
};

// required to add the metadata header, which amplify-backend does not support
backend.secondBucket.resources.cfnResources.cfnBucket.corsConfiguration = {
  corsRules: [
    {
      allowedHeaders: ["*"],
      allowedMethods: ["GET", "HEAD", "PUT", "POST", "DELETE"],
      allowedOrigins: ["*"],
      exposedHeaders: [
        "x-amz-server-side-encryption",
        "x-amz-request-id",
        "x-amz-id-2",
        "ETag",
        "x-amz-meta-description",
      ],
      maxAge: 3000,
    },
  ],
};
