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
package com.amazonaws.amplify.amplify_auth_cognito.device

import com.amazonaws.mobile.client.results.Device

/**
 * Attribute key for retrieving a [Device] instance's name.
 */
const val deviceNameKey = "device_name"

/**
 * The device's name, if set.
 */
val Device.deviceName: String?
    get() = attributes?.get(deviceNameKey)

/**
 * Converts this device to a JSON-representable format.
 */
fun Device.toJson(): Map<String, Any?> = mapOf(
    "id" to deviceKey,
    "name" to deviceName,
    "attributes" to attributes,
    "createdDate" to createDate?.time,
    "lastModifiedDate" to lastModifiedDate?.time,
    "lastAuthenticatedDate" to lastAuthenticatedDate?.time
)
