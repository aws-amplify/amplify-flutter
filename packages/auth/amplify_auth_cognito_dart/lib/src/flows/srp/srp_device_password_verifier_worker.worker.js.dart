import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_device_password_verifier_worker.dart';

/// The JS implementation of [SrpDevicePasswordVerifierWorker].
class SrpDevicePasswordVerifierWorkerImpl
    extends SrpDevicePasswordVerifierWorker {
  @override
  String get name => 'SrpDevicePasswordVerifierWorker';
  @override
  String get jsEntrypoint =>
      'packages/amplify_auth_cognito_dart/workers.dart.js';
  @override
  List<String> get fallbackUrls =>
      const ['packages/amplify_auth_cognito_dart/workers.js'];
}
