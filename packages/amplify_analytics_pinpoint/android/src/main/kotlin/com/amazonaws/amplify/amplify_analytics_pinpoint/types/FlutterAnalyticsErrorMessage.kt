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
 *
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */


package com.amazonaws.amplify.amplify_analytics_pinpoint.types

const val PLATFORM_EXCEPTIONS = "PLATFORM_EXCEPTIONS"

enum class FlutterAnalyticsErrorMessage {
    RECORD_EVENT {
        override fun toString(): String {
            return "RECORD_EVENT_FAILED"
        }
    },
    FLUSH_EVENTS {
        override fun toString(): String {
            return "FLUSH_EVENTS_FAILED"
        }
    },
    REGISTER_GLOBAL_PROPERTIES {
        override fun toString(): String {
            return "REGISTER_GLOBAL_PROPERTIES_FAILED"
        }
    },
    UNREGISTER_GLOBAL_PROPERTIES {
        override fun toString(): String {
            return "UNREGISTER_GLOBAL_PROPERTIES_FAILED"
        }
    },
    ENABLE {
        override fun toString(): String {
            return "ENABLE_FAILED"
        }
    },
    DISABLE {
        override fun toString(): String {
            return "DISABLE_FAILED"
        }
    },
    IDENTIFY_USER {
        override fun toString(): String {
            return "IDENTIFY_USER_FAILED"
        }
    }
}