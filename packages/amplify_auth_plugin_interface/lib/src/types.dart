part of amplify_auth_plugin_interface;

class SignInRequest {
  final String username;
  final String password;
  const SignInRequest({this.username, this.password});
}

class SignInResult {
  final Map error;
  final Map result;
  const SignInResult({this.error, this.result});
}

class SignUpRequest {
  final String username;
  final String password;
  final SignUpOptions options;
  const SignUpRequest({
    this.username, 
    this.password,
    this.options
  });
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (username != null) {
      pendingRequest['username'] = username;
    }
    if (password != null) {
      pendingRequest['password'] = password;
    }
    if (options != null) {
      if (options.userAttributes != null) {
        pendingRequest['userAttributes'] = options.userAttributes;
      }
      if (options.usernameAttribute != null) {
        pendingRequest['usernameAttribute'] = options.usernameAttribute;
      }
      if (options.validationData != null) {
        pendingRequest['validationData'] = options.validationData;
      }
    }

    return pendingRequest;
  }
}

class SignUpResult {
  Map<dynamic, dynamic> providerData;
  String signUpState;
  SignUpResult.fromJson(Map data) {
    /* 2-step process of getting an enum from a string and back is a way of checking that
     the value is enumerated while also maintaining simple string value */
    this.signUpState = enumToString(enumFromString<SignUpState>(data["signUpState"],SignUpState.values));
    // this.signUpState = AuthNextSignUpStep(
    //   additionalInfo: data["nextStep"].containsKey("additionalInfo") && data["nextStep"]["additionalInfo"].length > 0 ? data["nextStep"].additionalInfo : {},
    //   codeDeliveryDetails: data["nextStep"].containsKey("codeDeliveryDetails") && data["nextStep"]["codeDeliveryDetails"].length > 0  ? data["nextStep"].codeDeliveryDetails : {},
    //   signUpStep: data["nextStep"]["signUpStep"]
    // );
    this.providerData = data.containsKey("providerData") ? data["providerData"] : const {};
   }
}

// class AuthNextSignUpStep {
//   Map additionalInfo;
//   AuthCodeDeliveryDetails codeDeliveryDetails;
//   String signUpStep;
//   AuthNextSignUpStep({additionalInfo = const {},  codeDeliveryDetails, signUpStep}) {
//     this.additionalInfo = additionalInfo;
//     if (codeDeliveryDetails.length > 0) {
//       this.codeDeliveryDetails = AuthCodeDeliveryDetails(
//         attributeName: codeDeliveryDetails["attributeName"],
//         deliveryMedium: codeDeliveryDetails["deliveryMedium"],
//         destination: codeDeliveryDetails["destination"]
//       );
//     }
//     /* 2-step process of getting an enum from a string and back is a way of checking that
//      the value is enumerated while also maintaining simple string value */
//     this.signUpStep = enumToString(enumFromString<SignUpStep>(signUpStep,SignUpStep.values));
//   }
// }
// class AuthCodeDeliveryDetails {
//   String attributeName;
//   String deliveryMedium;
//   String destination;
//   AuthCodeDeliveryDetails({attributeName,  deliveryMedium, destination});
// }

class SignUpOptions {
  final Map<String, dynamic> userAttributes;
  final Map<String, String> clientMetadata;
  final String usernameAttribute;
  final Map<String, String> validationData;
  const SignUpOptions({@required this.userAttributes, this.clientMetadata, this.usernameAttribute, this.validationData});
}

enum SignUpState {
  CONFIRM_SIGN_UP_STEP,
  DONE,
}

String enumToString(Object o) => o.toString().split('.').last;

T enumFromString<T>(String key, List<T> values) =>
    values.firstWhere((v) => key == enumToString(v), orElse: () => null);