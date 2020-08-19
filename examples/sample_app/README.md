# sample_app

Sample app for getting started with the Amazon Amplify Flutter Library

## Getting Started

Please check out our docs here:
https://docs.amplify.aws/start/q/integration/flutter

!!! IMPORTANT !!!

The app will not compile until you have used the Amplify CLI to configure the
AWS resources necessary for running this app.
This is because it does not contain
an amplifyconfiguration.dart file necessary for connecting with AWS.

You will need to use Amplify CLi to configure Analytics, Auth, and Storage.
Make sure you are using the flutter-preview version of the CLI:

  npm install -g @aws-amplify/cli@flutter-preview

Afterwards, run "Amplify configure" for this project, and add analytics, auth, and storage before pushing.
If you haven't used the Amplify CLI before and the above instructions don't make sense, please follow the
link below on using Amplify CLI to configure a flutter project:

Please see the docs here for how to do this:
https://docs.amplify.aws/lib/project-setup/create-application/q/platform/flutter#n3-provision-the-backend-with-amplify-cli

Running these steps will generate your amplifyconfiguration.dart file within the "lib" folder.  At this point
the app can be compiled and run!


