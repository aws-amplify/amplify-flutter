package com.amazonaws.amplify.amplify_auth_cognito

import com.amplifyframework.auth.AuthCodeDeliveryDetails
import com.google.gson.Gson


fun setNextStep(resultKey: String, resultValue: String, codeDeliveryDetails: AuthCodeDeliveryDetails?, additionalInfo: Map<String, String>?): Map<String, Any> {
   val result =  mutableMapOf<String, Any>(resultKey to resultValue)
   val codeDeliveryDetailsResult = mutableMapOf<String, String?>()

   if (codeDeliveryDetails is AuthCodeDeliveryDetails) {
       codeDeliveryDetailsResult.putAll(mapOf(
               "destination" to codeDeliveryDetails.destination,
               "deliveryMedium" to codeDeliveryDetails.deliveryMedium.name)
       )
       if (codeDeliveryDetails.attributeName != null) {
           codeDeliveryDetailsResult["attributeName"] = codeDeliveryDetails.attributeName
       }
   }

   if (codeDeliveryDetailsResult.isNotEmpty()) {
       result["codeDeliveryDetails"] = codeDeliveryDetailsResult
   }

   if (additionalInfo?.isNotEmpty() == true) {
       result["additionalInfo"] = Gson().toJson(additionalInfo)
   }

   return result
}

