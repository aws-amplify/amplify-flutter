// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
