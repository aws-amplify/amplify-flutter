# Gen 2 Infra Stack

This folder contains the Gen 2 backend definitions for our integration tests.

To create and deploy backends run: `$ dart run tool/deploy_gen2.dart`

This will:

1. Run the amplify sandbox command in each folder under `/backends`
2. Combine multiple backend outputs for a given category into `amplifyEnvironments`
3. Copy and distribute the `amplify_outputs.dart` to example apps
4. Create and upload the config files to respective S3 buckets for CI use

## Deploying the Infra Stack

To deploy the infra stack to your personal account simply run:

`$ npm i`

`$ dart run tool/deploy_gen2.dart`

If this is your first deployment, grab a snack, it will be a few minutes for each backend to deploy.

### Debuggings

The same command can be run with verbose logging

`$ dart run tool/deploy_gen2.dart -v`

## Creating a new backend

1. Create a new directory for the backend.
2. Navigate via command line to the directory and run: `$ npm create amplify@latest -y`
3. Review [NPM Workspaces](#NPM-Workspaces)
4. Modify backend as desired.
5. Add an backend entry to `infraConfig` inside ` tool/deploy_gen2.dart`
6. Run and deploy backend with `dart run tool/deploy_gen2.dart`

## Deploying to the CI team account

Each backend requires AFS secrets to be added to secrets manager. Consult the Amplify Flutter Integration Tests Run Book.

### NPM Workspaces

This project uses [workspaces](https://docs.npmjs.com/cli/v10/using-npm/workspaces) to manage a shared workspace between all the backends. This is to avoid having multiple node_module folders, and provide a central location for all dependencies to be managed.

As such, the only information required to be in a backend's package.json is:

```json
{
  "name": "maininteg",
  "version": "1.0.0",
  "main": "index.js"
}
```

**Ensure if there are other backends from other categories with the same name, the package.json key `name` needs to be updated to be unique.**
