package com.amazonaws.amplify.amplify_auth_cognito.types

import com.amplifyframework.auth.result.AuthSignInResult
import com.google.gson.Gson

data class FlutterSignInResult(private val raw: AuthSignInResult) {
  val isSignedIn: Boolean = raw.isSignInComplete
  val nextStep: Map<String, Any> = setNextStep();

  private fun setNextStep(): Map<String, Any> {
    val res: Map<String, Any> = emptyMap();

    return mapOf(
      "signInStep" to raw.nextStep.signInStep.toString(),
      "additionalInfo" to Gson().toJson(raw.nextStep.additionalInfo),
      "codeDeliveryDetails" to mapOf(
        "destination" to (raw.nextStep.codeDeliveryDetails?.destination ?: ""),
        "deliveryMedium" to (raw.nextStep.codeDeliveryDetails?.deliveryMedium ?: ""),
        "attributeName" to (raw.nextStep.codeDeliveryDetails?.attributeName ?: "")
      )
    )
  }
}