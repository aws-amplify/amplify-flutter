import 'package:flutter/foundation.dart';
import 'AuthCodeDeliveryDetails.dart';

class AuthNextStep {
  Map<dynamic, dynamic> additionalInfo;
  String signUpStep;
  AuthCodeDeliveryDetails codeDeliveryDetails;
  AuthNextStep({@required codeDeliveryDetails,@required signUpStep, additionalInfo = const {}}) {
    this.signUpStep = signUpStep;
    this.additionalInfo = additionalInfo;
    this.codeDeliveryDetails = AuthCodeDeliveryDetails(
      attributeName: codeDeliveryDetails["attributeName"] != null ? codeDeliveryDetails["attributeName"] : "",
      deliveryMedium: codeDeliveryDetails["deliveryMedium"] != null ? codeDeliveryDetails["deliveryMedium"] : "",
      destination: codeDeliveryDetails["destination"] != null ?  codeDeliveryDetails["destination"] : ""
    );
  }
}