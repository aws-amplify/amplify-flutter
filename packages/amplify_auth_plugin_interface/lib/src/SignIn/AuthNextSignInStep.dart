import 'package:flutter/foundation.dart';
import '../types/AuthNextStep.dart';

class AuthNextSignInStep extends AuthNextStep {
  String signInStep;
  AuthNextSignInStep({additionalInfo, @required codeDeliveryDetails, @required this.signInStep}) : super(additionalInfo: additionalInfo, codeDeliveryDetails: codeDeliveryDetails);
}
