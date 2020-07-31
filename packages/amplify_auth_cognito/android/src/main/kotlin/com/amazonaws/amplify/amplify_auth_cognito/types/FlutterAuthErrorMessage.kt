package com.amazonaws.amplify.amplify_auth_cognito.types

enum class FlutterAuthFailureMessage {
  SIGNUP {
    override fun toString(): String {
      return "AMPLIFY_SIGNUP_FAILED"
    }
  },
  CASTING {
    override fun toString(): String {
      return "ERROR_CASTING_INPUT_IN_PLATFORM_CODE"
    }
  },
  MALFORMED {
    override fun toString(): String {
      return "AMPLIFY_SIGNUP_REQUEST_MALFORMED"
    }
    fun recovery(): String {
      return "Make sure that the request had all required parameters."
    }
  }
}
