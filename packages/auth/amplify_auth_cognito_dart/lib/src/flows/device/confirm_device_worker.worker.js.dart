import 'package:amplify_auth_cognito_dart/src/flows/device/confirm_device_worker.dart';

/// The JS implementation of [ConfirmDeviceWorker].
class ConfirmDeviceWorkerImpl extends ConfirmDeviceWorker {
  @override
  String get name => 'ConfirmDeviceWorker';
  @override
  String get jsEntrypoint =>
      'packages/amplify_auth_cognito_dart/workers.dart.js';
  @override
  List<String> get fallbackUrls =>
      const ['packages/amplify_auth_cognito_dart/workers.js'];
}
