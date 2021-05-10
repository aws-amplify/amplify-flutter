/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

package com.amazonaws.amplify.amplify_auth_cognito.types

import com.amplifyframework.auth.AuthCodeDeliveryDetails
import com.amplifyframework.auth.result.AuthSignUpResult
import com.google.gson.Gson

data class FlutterSignUpResult(private var raw: AuthSignUpResult) {
  val isSignUpComplete: Boolean = raw.isSignUpComplete
  val nextStep: Map<String, Any> = setNextStep()
  private fun setNextStep(): Map<String, Any> {
    val result =  mutableMapOf<String, Any>("signUpStep" to raw.nextStep.signUpStep.toString())
    val codeDeliveryDetails = emptyMap<String, String?>().toMutableMap()

    if (raw.nextStep.codeDeliveryDetails is AuthCodeDeliveryDetails) {
      var authCodeDeliveryDetails: AuthCodeDeliveryDetails = raw.nextStep.codeDeliveryDetails!!
      codeDeliveryDetails.putAll(mapOf(
        "destination" to authCodeDeliveryDetails.destination,
        "deliveryMedium" to authCodeDeliveryDetails.deliveryMedium.name)
      )
      if (raw.nextStep.codeDeliveryDetails!!.attributeName != null) {
        codeDeliveryDetails.put("attributeName", authCodeDeliveryDetails.attributeName)
      }
    }

    if (codeDeliveryDetails.isNotEmpty()) {
      result["codeDeliveryDetails"] = codeDeliveryDetails
    }

    if (raw.nextStep.additionalInfo?.isNotEmpty() == true) {
      result["additionalInfo"] = Gson().toJson(raw.nextStep.additionalInfo)
    }

    return result
  }

  fun toValueMap(): Map<String, Any> {
    return mapOf(
      "isSignUpComplete" to this.isSignUpComplete,
      "nextStep" to this.nextStep
    )
  }
}