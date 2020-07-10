import 'package:flutter/foundation.dart';

class CognitoSignUpResultProvider {
  AuthNextSignUpStep authNextSignUpStep;
  CognitoSignUpResultProvider(AuthNextSignUpStep nextStep) {
    this.authNextSignUpStep = nextStep;
  }
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> res = <String, dynamic>{};
    res['authNextSignUpStep'] = authNextSignUpStep;
    return res;
  }
}

class AuthNextSignUpStep {
  Map additionalInfo;
  AuthCodeDeliveryDetails codeDeliveryDetails;
  AuthNextSignUpStep(rawDetails, { additionalInfo = const {}}) {
    this.additionalInfo = additionalInfo;
    this.codeDeliveryDetails = AuthCodeDeliveryDetails(rawDetails["attributeName"], rawDetails["deliveryMedium"], rawDetails["destination"]);
  }
}

class AuthCodeDeliveryDetails {
  String attributeName;
  String deliveryMedium;
  String destination;
  AuthCodeDeliveryDetails(this.attributeName,  this.deliveryMedium, this.destination);
}