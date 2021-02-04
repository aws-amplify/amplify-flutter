/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
enum FlutterAnalyticsErrorMessage: String {
    case RECORD_EVENT = "RECORD_EVENT_FAILED"
    case FLUSH_EVENTS = "FLUSH_EVENTS_FAILED"
    case REGISTER_GLOBAL_PROPERTIES = "REGISTER_GLOBAL_PROPERTIES_FAILED"
    case UNREGISTER_GLOBAL_PROPERTIES = "UNREGISTER_GLOBAL_PROPERTIES_FAILED"
    case ENABLE = "ENABLE_FAILED"
    case DISABLE = "DISABLE_FAILED"
    case IDENTIFY_USER = "IDENTIFY_USER_FAILED"
}
