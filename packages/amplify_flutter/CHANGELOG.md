## 0.1.1 (2021-03-29)

### Chores

- chore: remove upper constraints for flutter 2.0 (#479)
- chore(amplify_flutter): Add isConfigured API to Amplify (#452)

### Bug Fixes

- fix: Move AddPlugin from Register to MethodChannel (#411)
- fix: upgrade plugin_platform_interface (#447)

## 0.1.0 (2021-02-15)

### Chores

- chore: Bump android version to 1.16.13 (#391)

### Bug Fixes

- fix(amplify_api): Add @required annotation for subscribe callbacks (#392)

## 0.0.2-dev.2 (2021-02-09)

### Features

- feat: Implement the GraphQL Subscribe API (#338)

### Chores

- chore: Don't add API plugin by default for DataStore (#350)
- chore: Introduce new Temporal types (Date, DateTime, Time, Timestamp) for Dart codegen models (#307)
- chore: Updated amplify-android version 1.6.10 (#332)
- chore: Refactor error handling to use the new AmplifyException types (#314)

### Bug Fixes

- fix: MissingPluginException when android app restarts (#345)
- fix: Provide better error messages when configure() fails due to plugin's configuration not present (#355)

## 0.0.2-dev.1 (2021-01-25)

### Features

- feature: Amplify Auth Hosted UI (#309)

### Chore

- New package forked from amplify_core:0.0.1-dev.5 to provide top level Amplify facade APIs
