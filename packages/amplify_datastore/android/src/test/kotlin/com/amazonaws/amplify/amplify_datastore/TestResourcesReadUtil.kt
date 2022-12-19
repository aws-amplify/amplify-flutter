// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore

import com.fasterxml.jackson.databind.ObjectMapper

fun <T> readMapFromFile(dir: String, path: String, clazz: Class<T>): T {
    val filePath = "$dir/$path"
    val jsonFile = ClassLoader.getSystemResource(filePath).readText()
    return ObjectMapper().readValue(jsonFile, clazz)
}
