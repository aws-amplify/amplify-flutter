import { defineBackend } from "@aws-amplify/backend";
import * as s3 from "aws-cdk-lib/aws-s3";
import { v4 as uuidv4 } from "uuid";
import { auth } from "./auth/resource";
import { storage } from "./storage/resource";

/**
 * @see https://docs.amplify.aws/react/build-a-backend/ to add storage, functions, and more
 */
const backend = defineBackend({
  auth,
  storage,
});

// extract L1 CfnUserPool resources
// const { cfnUserPool } = backend.auth.resources.cfnResources;
// // modify cfnUserPool policies directly
// cfnUserPool.policies = {
//   passwordPolicy: {
//     minimumLength: 8,
//     requireLowercase: true,
//     requireNumbers: true,
//     requireSymbols: false,
//     requireUppercase: false,
//   },
// };

// custom storage configurations
const s3Bucket = backend.storage.resources.bucket;
const cfnBucket = s3Bucket.node.defaultChild as s3.CfnBucket;

const randomBucketName = `dots.in.name-${uuidv4()}`;

cfnBucket.bucketName = randomBucketName;

backend.storage.resources.cfnResources.cfnBucket.corsConfiguration = {
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

// cfnBucket.accelerateConfiguration = {
//   accelerationStatus: "Suspended",
// };

// cfnBucket.corsConfiguration = {
//   corsRules: [
//     {
//       allowedMethods: [
//         s3.HttpMethods.GET,
//         s3.HttpMethods.PUT,
//         s3.HttpMethods.HEAD,
//         s3.HttpMethods.POST,
//         s3.HttpMethods.DELETE,
//       ],
//       allowedOrigins: ["*"],
//       allowedHeaders: ["*"],
//       exposedHeaders: [
//         "x-amz-server-side-encryption",
//         "x-amz-request-id",
//         "x-amz-id-2",
//         "ETag",
//         // This is required workaround on Web to retrieve metadata fields
//         // via GetObject and HeadObject.
//         // XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
//         "x-amz-meta-filename",
//         "x-amz-meta-description",
//         "x-amz-meta-owner",
//       ],
//       maxAge: 3000,
//     },
//   ],
// };

// cfnBucket.ownershipControls = {
//   rules: [{ objectOwnership: s3.ObjectOwnership.BUCKET_OWNER_ENFORCED }],
// };

// cfnBucket.publicAccessBlockConfiguration = {
//   blockPublicAcls: true,
//   blockPublicPolicy: true,
//   ignorePublicAcls: true,
//   restrictPublicBuckets: true,
// };

// cfnBucket.bucketProps = {
//   autoDeleteObjects: true,
//   enforceSSL: true,
//   blockPublicAccess: s3.BlockPublicAccess.BLOCK_ALL,
