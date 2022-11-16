# amplify_storage_s3

The Amplify Flutter Storage category plugin using the AWS S3 provider.

## Developer Preview

The Amplify Flutter libraries are being rewritten in Dart. This version is part of our developer preview for all platforms and is **not** intended for production usage. Please follow our [Web](https://github.com/aws-amplify/amplify-flutter/issues/234) and [Desktop](https://github.com/aws-amplify/amplify-flutter/issues/133) support tickets to monitor the status of supported categories. We will be releasing Web and Desktop support for all Amplify categories incrementally.

For production use cases please use the latest, non-tagged versions of amplify-flutter packages from `pub.dev`. They offer a stable, production-ready experience for Android and iOS.

## Category / Platform Support (Developer Preview)

| Category       | Android | iOS | Web | Windows | MacOS | Linux |
| -------------- | :-----: | :-: | :-: | :-----: | :---: | :---: |
| Analytics      |   ✅    | ✅  | ✅  |   ✅    |  ✅   |  ✅   |
| API (REST)     |   ✅    | ✅  | ✅  |   ✅    |  ✅   |  ✅   |
| API (GraphQL)  |   ✅    | ✅  | ✅  |   ✅    |  ✅   |  ✅   |
| Authentication |   ✅    | ✅  | ✅  |   ✅    |  ✅   |  ✅   |
| DataStore      |   ✅    | ✅  | 🔴  |   🔴    |  🔴   |  🔴   |
| Storage        |   ✅    | ✅  | ✅  |   ✅    |  ✅   |  ✅   |

## Getting Started

### Visit our [Web Site](https://docs.amplify.aws/) to learn more about AWS Amplify.

## Upgrade from Stable Version

All Storage S3 plugin APIs now return an operation object rather than the result object. The operation object contains a `Future` of the result. And the result object contains more information.

### How to upgrade

**Upload example**

See [documentation](https://docs.amplify.aws/lib/storage/upload/q/platform/flutter/) for details API usage example.

```dart
// before
final result = await Amplify.Storage.uploadFile(
    local: exampleFile,
    key: 'ExampleKey',
);
print('Uploaded file key: ${result.key}')

// after
final result = await Amplify.Storage.uploadFile(
    localFile: exampleFile,
    key: 'ExampleKey',
).result;
print('Uploaded file key: ${result.uploadedItem.key}');
```

**Download example**

See [documentation](https://docs.amplify.aws/lib/storage/download/q/platform/flutter/) for details API usage example.

```dart
// before
final result = await Amplify.Storage.downloadFile(
  key: 'ExampleKey',
  local: file,
);
print('Downloaded local file path: ${result.file.path}')


// after
final result = await Amplify.Storage.downloadFile(
  key: 'ExampleKey',
  localFile: file,
).result;
print('Downloaded file key: ${result.downloadedItem.key}');
print('Downloaded local file path: ${result.localFile.path}');
```

**List example**

See [documentation](https://docs.amplify.aws/lib/storage/list/q/platform/flutter/) for details API usage example.

```dart
// before
final result = await Amplify.Storage.list();
print('Listed items: ${result.items}');

// after
final result = await Amplify.Storage.list().result;
print('Listed items: ${result.items}');
print('Are there more items can be listed? ${result.hasNextPage}');
print('List nextToken: ${result.nextToken}');
```

**Remove example**

See [documentation](https://docs.amplify.aws/lib/storage/remove/q/platform/flutter/) for details API usage example.

```dart
// before
final result = await Amplify.Storage.remove(
  key: key,
);
print('Removed file key: ${result.key}');

// after
final result = await Amplify.Storage.remove(
  key: key,
).result;
print('Removed file key: ${result.removedItem.key}');
```

**Get URL example**

See [documentation](https://docs.amplify.aws/lib/storage/download/q/platform/flutter/#generate-a-download-url) for details API usage example.

```dart
// before
final result = await Amplify.Storage.getUrl(key: 'ExampleKey');
print('Got url: ${result.url}');

// after
final result = await Amplify.Storage.getUrl(key: 'ExampleKey').result;
print('Got url: ${result.url.toString()}');
```
