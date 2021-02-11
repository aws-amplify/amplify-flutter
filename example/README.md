# Amplify Flutter Example

Sample flutter app for getting started with the Amplify Flutter Library.  This example uses the Auth, Analytics, and Storage components of the Flutter library. 

Please check out our docs here:
https://docs.amplify.aws/start/q/integration/flutter

## Getting Started

**IMPORTANT** 

**The app will not compile until you use the Amplify CLI to configure AWS resources necessary for running this app, or create your own amplifyconfiguration.dart file using the example in our documentation'.** 

This is because it does not contain an `amplifyconfiguration.dart` file necessary for connecting with AWS services.

You will need to use Amplify CLI to init the app and configure Analytics, Auth, and Storage. Please follow the instructions here: 

https://docs.amplify.aws/start/getting-started/add-api/q/integration/flutter#setup-aws-cloud-resources-with-amplify-cli

For this example app you will also need to call `amplify add auth`, and `amplify add storage` with the Amplify CLI and call `amplify push` again.  

Running these steps will generate the `amplifyconfiguration.dart` file within the `lib` folder. 

## Important Notes 

This is a very basic app that interacts with AWS resources. We did not implement UI showing that the app is "loading" or "uploading" something from AWS. Some operations like logging in or uploading an image can take some time.

Please note when signing up that you MUST provide a country code for a new user's phone number.  For example, if your number is American, you will need to append +1 to the beginning.



