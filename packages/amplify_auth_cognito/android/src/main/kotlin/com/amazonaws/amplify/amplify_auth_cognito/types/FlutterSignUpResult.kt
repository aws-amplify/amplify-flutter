package com.amazonaws.amplify.amplify_auth_cognito.types

import com.amplifyframework.auth.result.AuthSignUpResult
import com.google.gson.Gson



data class FlutterSignUpResult(private val raw: AuthSignUpResult) {
  val isSignUpComplete: Boolean = raw.isSignUpComplete
  val nextStep: Map<String, Any> = setNextStep();

  private fun setNextStep(): Map<String, Any> {
    val res: Map<String, Any> = emptyMap();

    return mapOf(
      "signUpStep" to raw.nextStep.signUpStep.toString(),
      "additionalInfo" to Gson().toJson(raw.nextStep.additionalInfo),
      "codeDeliveryDetails" to mapOf(
        "destination" to (raw.nextStep.codeDeliveryDetails?.destination ?: ""),
        "deliveryMedium" to (raw.nextStep.codeDeliveryDetails?.deliveryMedium ?: ""),
        "attributeName" to (raw.nextStep.codeDeliveryDetails?.attributeName ?: "")
      )
    )
  }
}