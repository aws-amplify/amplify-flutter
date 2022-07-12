Tests for the [`amplify_auth_cognito_dart`](../amplify_auth_cognito_dart) package separated out so that they can be easily tested using `build_runner`.

## Testing

To run tests:

```sh
$ dart run build_runner test --delete-conflicting-outputs -- -p vm,chrome
$ dart run build_runner test --release --delete-conflicting-outputs -- -p chrome
```
