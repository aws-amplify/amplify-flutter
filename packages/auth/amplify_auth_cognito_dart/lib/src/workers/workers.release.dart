import 'package:amplify_auth_cognito_dart/src/flows/device/confirm_device_worker.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_device_password_verifier_worker.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_init_worker.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_password_verifier_worker.dart';
import 'package:worker_bee/worker_bee.dart';

final workers = <String, WorkerBeeBuilder>{
  'SrpInitWorker': SrpInitWorker.create,
  'SrpPasswordVerifierWorker': SrpPasswordVerifierWorker.create,
  'SrpDevicePasswordVerifierWorker': SrpDevicePasswordVerifierWorker.create,
  'ConfirmDeviceWorker': ConfirmDeviceWorker.create
};
void main() => runHive(workers);
