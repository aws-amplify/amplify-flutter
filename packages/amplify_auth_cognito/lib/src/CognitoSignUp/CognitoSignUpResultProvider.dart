import 'package:flutter/foundation.dart';

class CognitoSignUpResultProvider {
  AuthNextSignUpStep authNextSignUpStep;
  CognitoSignUpResultProvider(AuthNextSignUpStep nextStep) {
    this.authNextSignUpStep = nextStep;
  }
}

class AuthNextSignUpStep {
  Map additionalInfo;
  AuthCodeDeliveryDetails codeDeliveryDetails;
  AuthNextSignUpStep({ rawDetails, additionalInfo = const {}}) {
    this.additionalInfo = additionalInfo;
    if (rawDetails != null) {
      String attributeName = rawDetails["attributeName"] != null ? rawDetails["attributeName"] : "";
      String deliveryMedium = rawDetails["deliveryMedium"] != null ? rawDetails["deliveryMedium"] : "";
      String destination = rawDetails["destination"] != null ?  rawDetails["destination"] : "";
      this.codeDeliveryDetails = AuthCodeDeliveryDetails(attributeName , deliveryMedium, destination);
    }
  }
}

class AuthCodeDeliveryDetails {
  String attributeName;
  String deliveryMedium;
  String destination;
  AuthCodeDeliveryDetails(this.attributeName,  this.deliveryMedium, this.destination);
}