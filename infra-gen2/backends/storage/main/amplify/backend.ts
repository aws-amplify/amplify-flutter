import { defineBackend } from "@aws-amplify/backend";
import * as s3 from "aws-cdk-lib/aws-s3";
import { auth } from "./auth/resource";
import { data } from "./data/resource";
import { storage } from "./storage/resource";

/**
 * @see https://docs.amplify.aws/react/build-a-backend/ to add storage, functions, and more
 */
const backend = defineBackend({
  auth,
  data,
  storage,
});

// extract L1 CfnUserPool resources
const { cfnUserPool } = backend.auth.resources.cfnResources;
// modify cfnUserPool policies directly
cfnUserPool.policies = {
  passwordPolicy: {
    minimumLength: 8,
    requireLowercase: true,
    requireNumbers: true,
    requireSymbols: false,
    requireUppercase: false,
  },
};

// custom storage configurations
const s3Bucket = backend.storage.resources.bucket;
const cfnBucket = s3Bucket.node.defaultChild as s3.CfnBucket;

cfnBucket.accelerateConfiguration = {
  accelerationStatus: "Enabled",
};

cfnBucket.corsConfiguration = {
  corsRules: [
    {
      allowedMethods: [
        s3.HttpMethods.GET,
        s3.HttpMethods.PUT,
        s3.HttpMethods.HEAD,
        s3.HttpMethods.POST,
        s3.HttpMethods.DELETE,
      ],
      allowedOrigins: ["*"],
      exposedHeaders: [
        "x-amz-server-side-encryption",
        "x-amz-request-id",
        "x-amz-id-2",
        "ETag",
        // This is required workaround on Web to retrieve metadata fields
        // via GetObject and HeadObject.
        // XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
        "x-amz-meta-filename",
        "x-amz-meta-description",
        "x-amz-meta-owner",
      ],
      maxAge: 3000,
    },
  ],
};

cfnBucket.ownershipControls = {
  rules: [{ objectOwnership: s3.ObjectOwnership.BUCKET_OWNER_ENFORCED }],
};

// cfnBucket.bucketProps = {
//   autoDeleteObjects: true,
//   enforceSSL: true,
//   blockPublicAccess: s3.BlockPublicAccess.BLOCK_ALL,
//   objectOwnership: s3.ObjectOwnership.BUCKET_OWNER_ENFORCED,
//   transferAcceleration: true,
//   cors: {
//     corsRules: [
//       {
//         allowedMethods: [
//           s3.HttpMethods.GET,
//           s3.HttpMethods.PUT,
//           s3.HttpMethods.HEAD,
//           s3.HttpMethods.POST,
//           s3.HttpMethods.DELETE,
//         ],
//         allowedHeaders: ["*"],
//         allowedOrigins: ["*"],
//         exposedHeaders: [
//           "x-amz-server-side-encryption",
//           "x-amz-request-id",
//           "x-amz-id-2",
//           "ETag",
//           // This is required workaround on Web to retrieve metadata fields
//           // via GetObject and HeadObject.
//           // XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
//           "x-amz-meta-filename",
//           "x-amz-meta-description",
//           "x-amz-meta-owner",
//         ],
//         maxAge: 3000,
//       },
//     ],
//   },
// };

// removalPolicy: RemovalPolicy.DESTROY,
//       autoDeleteObjects: true,
//       enforceSSL: true,
//       objectOwnership: s3.ObjectOwnership.BUCKET_OWNER_ENFORCED,

// cfnBucket.accelerationConfiguration = {
//   accelerationStatus: "Enabled",
// };

// cfnBucket.blockPublicAccess = {
//   blockPublicAcls: true,
//   blockPublicPolicy: true,
//   ignorePublicAcls: true,
//   restrictPublicBuckets: true,
// };

// cfnBucket.corsConfigurationProperty = {
//   corsRules: [
//     {
//       allowedMethods: [
//         s3.HttpMethods.GET,
//         s3.HttpMethods.PUT,
//         s3.HttpMethods.HEAD,
//         s3.HttpMethods.POST,
//         s3.HttpMethods.DELETE,
//       ],
//       allowedHeaders: ["*"],
//       allowedOrigins: ["*"],
//       exposedHeaders: [
//         "x-amz-server-side-encryption",
//         "x-amz-request-id",
//         "x-amz-id-2",
//         "ETag",
//         // This is required workaround on Web to retrieve metadata fields
//         // via GetObject and HeadObject.
//         // https://github.com/aws-amplify/amplify-js/issues/2903#issuecomment-475012164
//         "x-amz-meta-filename",
//         "x-amz-meta-description",
//         "x-amz-meta-owner",
//       ],
//       maxAge: 3000,
//     },
//   ],
// };
