import 'package:flutter/foundation.dart';
import '../types/AuthNextStep.dart';

class AuthNextSignUpStep extends AuthNextStep {
  AuthNextSignUpStep({additionalInfo, @required codeDeliveryDetails, @required signUpStep}) : super(additionalInfo: additionalInfo, codeDeliveryDetails: codeDeliveryDetails, signUpStep: signUpStep);
}
