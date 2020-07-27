package com.amazonaws.amplify.amplify_auth_cognito.types

import com.amplifyframework.auth.result.AuthSignUpResult


data class FlutterSignUpResult(val raw: AuthSignUpResult) {
  val signUpState: String = setSignUpState();
  val providerData: Map<String, Any> = setProviderData();
  

  fun setSignUpState(): String {
    return raw.nextStep.signUpStep.toString()
  }

  fun setProviderData(): Map<String, Any> {
    return mapOf(
      "providerData" to {
        "nextStep" to {
          "additionalInfo" to raw.nextStep.additionalInfo;
          "codeDeliveryDetails" to raw.nextStep.codeDeliveryDetails
        }
      }
    )
  }
}

