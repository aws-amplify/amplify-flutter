
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

import Foundation
enum FlutterAuthErrorMessage: String {
    case CASTING = "ERROR_CASTING_INPUT_IN_PLATFORM_CODE"
    case CONFIRM_SIGNIN = "AMPLIFY_CONFIRM_SIGNIN_FAILED"
    case CONFIRM_SIGNUP = "AMPLIFY_CONFIRM_SIGNUP_FAILED"
    case ERROR_SENDING = "AMPLIFY_REQUEST_FAILED_TO_SEND"
    case INVALID_STATE = "AMPLIFY_INVALID_STATE"
    case MALFORMED = "AMPLIFY_REQUEST_MALFORMED"
    case SIGNIN = "AMPLIFY_SIGNIN_FAILED"
    case SIGNOUT = "AMPLIFY_SIGNOUT_FAILED"
    case SIGNUP = "AMPLIFY_SIGNUP_FAILED"
    case UPDATE_PASSWORD = "AMPLIFY_UPDATE_PASSWORD_FAILED"
    case RESET_PASSWORD = "AMPLIFY_RESET_PASSWORD_FAILED"
    case RESEND_SIGNUP = "AMPLIFY_RESEND_SIGNUP_CODE_FAILED"
    case CONFIRM_PASSWORD = "AMPLIFY_CONFIRM_PASSWORD_FAILED"
    case FETCH_SESSION = "AMPLIFY_FETCH_SESSION_FAILED"
    case GET_CURRENT_USER = "AMPLIFY_GET_CURRENT_USER_FAILED"
    case SIGNIN_WITH_WEBUI = "AMPLIFY_SIGNIN_WITH_WEBUI_FAILED"
}
