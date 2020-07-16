import 'package:amplify_auth_cognito/src/CognitoSignUp/CognitoSignUpResultProvider.dart';
import 'package:flutter/foundation.dart';

class CognitoSignInResultProvider {
  AuthNextSignInStep authNextSignInStep;
  CognitoSignInResultProvider(AuthNextSignInStep nextStep) {
    this.authNextSignInStep = nextStep;
  }
}

class AuthNextSignInStep {
  Map additionalInfo;
  AuthCodeDeliveryDetails codeDeliveryDetails;
  AuthNextSignInStep({ rawDetails, additionalInfo = const {}}) {
    this.additionalInfo = additionalInfo;
    if (rawDetails != null) {
      String attributeName = rawDetails["attributeName"] != null ? rawDetails["attributeName"] : "";
      String deliveryMedium = rawDetails["deliveryMedium"] != null ? rawDetails["deliveryMedium"] : "";
      String destination = rawDetails["destination"] != null ?  rawDetails["destination"] : "";
      this.codeDeliveryDetails = AuthCodeDeliveryDetails(attributeName , deliveryMedium, destination);
    }
  }
}
