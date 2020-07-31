import 'package:flutter/foundation.dart';
import '../types/AuthNextStep.dart';

class AuthNextSignUpStep extends AuthNextStep {
  String signUpStep;
  AuthNextSignUpStep({additionalInfo, @required codeDeliveryDetails, @required this.signUpStep}) : super(additionalInfo: additionalInfo, codeDeliveryDetails: codeDeliveryDetails);
}
