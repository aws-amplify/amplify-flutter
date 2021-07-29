# amplify_storage_s3_example

Example app for the Amplify Flutter Storage plugin with AWS S3 provider.

## How to Configure Amplify Backend

This app (as well as integration tests) depend on an Amplify backend with the storage category 
configured for guest access.

First, initialize the Amplify backend with:

```
$ cd packages/amplify_storage_s3/example
$ amplify init
```

After completing the prompts, add storage category.

```
$ amplify add storage
  ? Please select from one of the below mentioned services: Content (Images, audio, video, etc.)
  ? You need to add auth (Amazon Cognito) to your project in order to add storage for user files. Do you want to add auth now?
    Yes
  Using service: Cognito, provided by: awscloudformation
 
  The current configured provider is Amazon Cognito. 
 
  Do you want to use the default authentication and security configuration? Default configuration
  Warning: you will not be able to edit these selections. 
  How do you want users to be able to sign in?
    Username
  Do you want to configure advanced settings?
    No, I am done.
  Successfully added auth resource MYRESOURCENAME locally

  Some next steps:
  "amplify push" will build all your local backend resources and provision it in the cloud
  "amplify publish" will build all your local backend and frontend resources (if you have hosting category added) and provision it in the cloud

  ? Please provide a friendly name for your resource that will be used to label this category in the project:
    myGreatProjectNameStorage
  ? Please provide bucket name:
    exampleBucketNameUnique12345
  ? Who should have access:
    Auth and guest users
  ? What kind of access do you want for Authenticated users?
    create/update, read, delete
  ? What kind of access do you want for Guest users?
    create/update, read, delete
  ? Do you want to add a Lambda Trigger for your S3 Bucket?
    No
```

Finally, run `$ amplify push` to provision the storage resource in the cloud.
