import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_init_worker.dart';

/// The JS implementation of [SrpInitWorker].
class SrpInitWorkerImpl extends SrpInitWorker {
  @override
  String get name => 'SrpInitWorker';
  @override
  String get jsEntrypoint =>
      'packages/amplify_auth_cognito_dart/workers.dart.js';
  @override
  List<String> get fallbackUrls =>
      const ['packages/amplify_auth_cognito_dart/workers.js'];
}
