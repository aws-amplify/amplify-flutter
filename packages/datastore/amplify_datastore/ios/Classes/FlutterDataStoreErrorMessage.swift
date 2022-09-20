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
enum FlutterDataStoreErrorMessage: String {
    case CASTING = "ERROR_CASTING_INPUT_IN_PLATFORM_CODE"
    case ERROR_SENDING = "AMPLIFY_REQUEST_FAILED_TO_SEND"
    case INVALID_STATE = "AMPLIFY_INVALID_STATE"
    case MALFORMED = "AMPLIFY_REQUEST_MALFORMED"
    case QUERY_FAILED = "AMPLIFY_DATASTORE_QUERY_FAILED"
    case SAVE_FAILED = "AMPLIFY_DATASTORE_SAVE_FAILED"
    case DELETE_FAILED = "AMPLIFY_DATASTORE_DELETE_FAILED"
    case OBSERVE_EVENT_FAILURE = "AMPLIFY_DATASTORE_OBSERVE_EVENT_FAILURE"
    case CLEAR_FAILED = "AMPLIFY_DATASTORE_CLEAR_FAILED"
    case UNEXPECTED_ERROR = "AMPLIFY_DATASTORE_UNEXPECTED_ERROR"
}
