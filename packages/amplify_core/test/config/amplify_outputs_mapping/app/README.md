This project is used to generate a Gen 1 and a Gen 2 config for the purpose of testing the mapping from AmplifyConfig to AmplifyOutputs.

To regenerate the config and outputs files, run the following commands:

- npx ampx sandbox
- npx ampx generate outputs --format dart --out-dir ../data && mv ../data/amplify_outputs.dart ../data/amplify_outputs.g.dart
- npx ampx generate outputs --format dart --out-dir ../data --outputs-version 0 && mv ../data/amplifyconfiguration.dart ../data/amplifyconfiguration.g.dart
- dart format ../data
