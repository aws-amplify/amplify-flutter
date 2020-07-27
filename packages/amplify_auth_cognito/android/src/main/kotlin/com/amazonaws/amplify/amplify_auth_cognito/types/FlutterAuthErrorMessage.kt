package com.amazonaws.amplify.amplify_auth_cognito.types

enum class FlutterAuthFailureMessage {
  SIGNUP {
    override fun toString(): String {
      return "Amplify SignUp Failed"
    }
  },
  MALFORMED {
    override fun toString(): String {
      return "Amplify SignUp Request Malformed"
    }
  }
}
