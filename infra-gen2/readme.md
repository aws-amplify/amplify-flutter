# Gen 2 Infra Stack

This folder contains the Gen 2 backend definitions for our integration tests.

To create and deploy backends run: `$ dart run tool/deploy_gen2.dart`

This will run the amplify sandbox command in each folder under `/backends`

### Creating a new backend

1. Create a new directory with a given name under a category.
2. Navigate via command line to directory and run: `$ npm create amplify@latest -y`
3. Modify backend as desired.
4. Add an entry to `infraConfig` inside `deploy_gen2.dart`
5. Run and deploy backend with `dart run tool/deploy_gen2.dart`
