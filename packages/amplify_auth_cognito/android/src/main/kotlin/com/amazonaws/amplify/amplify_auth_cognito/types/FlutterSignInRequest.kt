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

data class FlutterSignInRequest(val map: HashMap<String, *>) {
  val username: String = map["username"] as String;
  val password: String = map["password"] as String;
  val options: HashMap<String, *>? = map["options"] as HashMap<String, *>?;

  companion object {
    fun validate(req : HashMap<String, *>?): Boolean {
      var valid: Boolean = true;
      if (req == null || req !is HashMap<String, *>) {
        valid = false;
      } else {
        // username and password are optional if options are passed for clientmetadata auth flows
        if (
          (req["username"]  == null || req["password"] == null) &&
          (req["options"] == null || (req["options"] as HashMap<String, *>).size < 1 )
        ){
          valid = false;
        }
      }
      return valid;
    }
  }
}
