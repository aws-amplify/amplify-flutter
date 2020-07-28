import 'AuthCodeDeliveryDetails.dart';

class AuthNextStep {
  Map additionalInfo;
  AuthCodeDeliveryDetails codeDeliveryDetails;
  AuthNextStep({ rawDetails, additionalInfo = const {}}) {
    this.additionalInfo = additionalInfo;
    if (rawDetails != null) {
      String attributeName = rawDetails["attributeName"] != null ? rawDetails["attributeName"] : "";
      String deliveryMedium = rawDetails["deliveryMedium"] != null ? rawDetails["deliveryMedium"] : "";
      String destination = rawDetails["destination"] != null ?  rawDetails["destination"] : "";
      this.codeDeliveryDetails = AuthCodeDeliveryDetails(attributeName , deliveryMedium, destination);
    }
  }
}