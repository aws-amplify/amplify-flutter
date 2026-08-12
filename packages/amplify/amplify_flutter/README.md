# amplify_flutter

The top level module for Amplify Flutter.

## Category / Platform Support

| Category       | Android | iOS | Web | Windows | MacOS | Linux |
| -------------- | :-----: | :-: | :-: | :-----: | :---: | :---: |
| Analytics      |   ✅    | ✅  | ✅  |   ✅    |  ✅   |  ✅   |
| API (REST)     |   ✅    | ✅  | ✅  |   ✅    |  ✅   |  ✅   |
| API (GraphQL)  |   ✅    | ✅  | ✅  |   ✅    |  ✅   |  ✅   |
| Authentication |   ✅    | ✅  | ✅  |   ✅    |  ✅   |  ✅   |
| DataStore      |   ✅    | ✅  | 🔴  |   🔴    |  🔴   |  🔴   |
| Storage        |   ✅    | ✅  | ✅  |   ✅    |  ✅   |  ✅   |
| Notifications  |   ✅    | ✅  | 🔴  |   🔴    |  🔴   |  🔴   |

## Isolates

Amplify must be configured and used on the **root isolate** — an app's main
isolate, or the Dart entry point of a headless `FlutterEngine`.

Dart state is isolate-local, so an isolate started with `Isolate.spawn` can
construct its own Amplify instance. Two limits make it unsafe to use one:

- **Platform channels only work in one direction.** After
  `BackgroundIsolateBinaryMessenger.ensureInitialized`, a secondary isolate can
  call into the host, but it can never receive messages back — Flutter delivers
  host messages to the root isolate only. Every callback-driven API is therefore
  root-isolate-only, permanently: DataStore `observe` and Hub events, push
  notification handlers, and Hosted UI redirects.
- **Persistent state is shared and not synchronized.** The native SDKs and the
  credential store are one per process, and Amplify does not serialize access to
  them across isolates. Two isolates refreshing tokens can interleave their
  writes and leave an inconsistent credential set.

`AmplifyDataStore.configure` and `AmplifyAuthCognito.addPlugin` fail fast with an
explanatory error when called from a secondary isolate, rather than failing later
in a way that is hard to attribute.

Progress on broader isolate support is tracked in
[#5302](https://github.com/aws-amplify/amplify-flutter/issues/5302).

## Getting Started

### Visit our [Web Site](https://docs.amplify.aws/) to learn more about AWS Amplify.

## Upgrade from V0

### Check out the [migration guide](https://docs.amplify.aws/lib/project-setup/upgrade-guide/q/platform/flutter/) for instructions on how to upgrade.
