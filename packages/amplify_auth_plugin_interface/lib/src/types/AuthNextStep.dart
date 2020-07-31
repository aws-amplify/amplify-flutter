import 'package:flutter/foundation.dart';
import 'AuthCodeDeliveryDetails.dart';

class AuthNextStep {
  Map<dynamic, dynamic> additionalInfo;
  AuthCodeDeliveryDetails codeDeliveryDetails;
  AuthNextStep({@required codeDeliveryDetails, additionalInfo = const {}}) {
    this.additionalInfo = additionalInfo;
    this.codeDeliveryDetails = AuthCodeDeliveryDetails(
      attributeName: codeDeliveryDetails["attributeName"] != null ? codeDeliveryDetails["attributeName"] : "",
      deliveryMedium: codeDeliveryDetails["deliveryMedium"] != null ? codeDeliveryDetails["deliveryMedium"] : "",
      destination: codeDeliveryDetails["destination"] != null ?  codeDeliveryDetails["destination"] : ""
    );
  }
}