package com.amazonaws.amplify.amplify_auth_cognito.device

import com.amazonaws.mobile.client.results.Device
import java.time.Instant
import java.util.*

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