# Amplify Flutter Example

Sample application for getting started with the Amplify Flutter Library

## Getting Started

Please check out our docs here:
https://docs.amplify.aws/start/q/integration/flutter

!!! IMPORTANT !!!

The app will not compile until you have used the Amplify CLI to configure the
AWS resources necessary for running this app.
This is because it does not contain an `amplifyconfiguration.dart` file necessary for connecting with AWS services.

You will need to use Amplify CLi to configure Analytics, Auth, and Storage. Make sure you are using the flutter-preview version of the CLI:

  npm install -g @aws-amplify/cli@flutter-preview

Afterwards, run `amplify configure` for this project, then `add analytics`, `auth`, and `storage` before pushing.
If you haven't used the Amplify CLI before, please follow the link below on using Amplify CLI to configure a flutter project:

Please see the docs here:
https://docs.amplify.aws/lib/project-setup/create-application/q/platform/flutter#n3-provision-the-backend-with-amplify-cli

Running these steps will generate the `amplifyconfiguration.dart` file within the `lib` folder. 


