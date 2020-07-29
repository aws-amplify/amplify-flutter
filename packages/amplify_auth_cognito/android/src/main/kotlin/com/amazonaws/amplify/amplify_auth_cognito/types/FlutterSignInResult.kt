package com.amazonaws.amplify.amplify_auth_cognito.types

import com.amplifyframework.auth.result.AuthSignInResult

data class FlutterSignInResult(private val raw: AuthSignInResult) {
  val signInState: String = setSignInState();
  val providerData: Map<String, Any> = setProviderData();
  

  private fun setSignInState(): String {
    return raw.nextStep.signInStep.toString()
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