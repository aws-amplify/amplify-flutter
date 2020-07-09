class CognitoSignUpResponse {
  AuthNextSignUpStep authNextSignUpStep;
  CognitoSignUpResponse.fromJson(Map<String, dynamic> data) {
    this.authNextSignUpStep = AuthNextSignUpStep(data: data["providerData"]);
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
  AuthNextSignUpStep({data = const {}}) {
    if (data.containsKey("nextStep")) {
      this.additionalInfo = data["nextStep"].containsKey("additionalInfo") ? data["nextStep"]["additionalInfo"] : {};
      if (data["nextStep"].containsKey("codeDeliveryDetails")) {
        this.codeDeliveryDetails = AuthCodeDeliveryDetails(
        attributeName: data["nextStep"]["codeDeliveryDetails"].containsKey("attributeName") ? data["nextStep"]["codeDeliveryDetails"]["attributeName"] : "",
        deliveryMedium: data["nextStep"]["codeDeliveryDetails"].containsKey("deliveryMedium") ? data["nextStep"]["codeDeliveryDetails"]["deliveryMedium"]: "",
        destination: data["nextStep"]["codeDeliveryDetails"].containsKey("destination") ? data["nextStep"]["codeDeliveryDetails"]["destination"]: ""
      );
      }
    }
  }
}
class AuthCodeDeliveryDetails {
  String attributeName;
  String deliveryMedium;
  String destination;
  AuthCodeDeliveryDetails({this.attributeName,  this.deliveryMedium, this.destination});
}