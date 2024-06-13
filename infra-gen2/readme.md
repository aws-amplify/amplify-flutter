# Gen 2 Infra Stack

This folder contains the Gen 2 backend definitions for our integration tests.

To create and deploy backends run: `$ dart run tool/deploy_gen2.dart`

This will run the amplify sandbox command in each folder under `/backends`

## Deploying the Infra Stack

To deploy the infra stack to your personal account simply run:

`$ dart run tool/deploy_gen2.dart`

If this is your first deployment, grab a snack, it will take some time.

## Creating a new backend

1. Create a new directory for the backend.
2. Navigate via command line to the directory and run: `$ npm create amplify@latest -y`
3. Modify backend as desired.
4. Add an backend entry to `infraConfig` inside ` tool/deploy_gen2.dart`
5. Run and deploy backend with `dart run tool/deploy_gen2.dart`

## Deploying to the CI team account

Each backend requires AFS secrets to be added to secrets manager. Consult the Amplify Flutter Integration Tests Run Book.
