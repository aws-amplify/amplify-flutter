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

enum FlutterStorageErrorMessage: String {
    case UPLOAD_FILE_MALFORMED = "UPLOAD_FILE_REQUEST_MALFORMED"
    case UPLOAD_FILE_FAILED = "UPLOAD_FILE_OPERATION_FAILED"
    case GET_URL_MALFORMED = "GET_URL_REQUEST_MALFORMED"
    case GET_URL_FAILED = "GET_URL_OPERATION_FAILED"
    case LIST_MALFORMED = "LIST_REQUEST_MALFORMED"
    case LIST_FAILED = "LIST_OPERATION_FAILED"
    case REMOVE_MALFORMED = "REMOVE_REQUEST_MALFORMED"
    case REMOVE_FAILED = "REMOVE_OPERATION_FAILED"
    case DOWNLOAD_FILE_MALFORMED = "DOWNLOAD_FILEL_REQUEST_MALFORMED"
    case DOWNLOAD_FILE_FAILED = "DOWNLOAD_FILE_OPERATION_FAILED"
}
