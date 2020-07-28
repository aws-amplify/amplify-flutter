package com.amazonaws.amplify.amplify_auth_cognito.types

import com.amplifyframework.auth.result.AuthSignUpResult
import com.google.gson.Gson

var gson = Gson()

data class FlutterSignUpResult(private val raw: AuthSignUpResult) {
  val signUpState: String = setSignUpState();
  val providerData: Map<String, Any> = setProviderData();
  

  private fun setSignUpState(): String {
    return raw.nextStep.signUpStep.toString()
  }

  private fun setProviderData(): Map<String, Any> {
    val res: Map<String, Any> = emptyMap();

    return mapOf(
      "nextStep" to mapOf(
        "additionalInfo" to gson.toJson(raw.nextStep.additionalInfo),
        "codeDeliveryDetails" to mapOf(
          "destination" to (raw.nextStep.codeDeliveryDetails?.destination ?: ""),
          "deliveryMedium" to (raw.nextStep.codeDeliveryDetails?.deliveryMedium ?: ""),
          "attributeName" to (raw.nextStep.codeDeliveryDetails?.attributeName ?: "")
        )
      )
    )
  }
}